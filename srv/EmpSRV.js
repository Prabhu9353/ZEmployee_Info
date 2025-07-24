const cds = require('@sap/cds')

module.exports = class EmployeInfo extends cds.ApplicationService { init() {

  const { CompanySet, EmployeeSet, SkillSet } = cds.entities('EmployeInfo')

  this.before (['CREATE'], CompanySet, async (req) => {
    debugger;
    const data = req.data;
    const today = new Date().toISOString().slice(0,10);
    if(today < req.data.RegistrationDate)
    {
      req.error(400,"Date is not future Date");
    }
    console.log('Before CREATE CompanySet', req.data)
  })
  this.after ('READ', CompanySet, async (companySet, req) => {
    console.log('After READ CompanySet', companySet)
  })
  this.before (['CREATE', 'UPDATE'], EmployeeSet, async (req) => {
    const dob = new Date(req.data.DateofBirth);
    const age = new Date().getFullYear() - dob.getFullYear()
    if(age < 18)
    {
      req.error(400,"employee should be 18 years");
    }
    console.log('Before CREATE/UPDATE EmployeeSet', req.data)
  })
  this.after ('READ', EmployeeSet, async (employeeSet, req) => {
    console.log('After READ EmployeeSet', employeeSet)
  })
  this.before (['CREATE', 'UPDATE'], SkillSet, async (req) => {
    console.log('Before CREATE/UPDATE SkillSet', req.data)
  })
  this.after ('READ', SkillSet, async (skillSet, req) => {
    console.log('After READ SkillSet', skillSet)
  })

  this.on ('getSalary', async (req) => {
    const emp = await SELECT.one.from(EmployeeSet).where({ ID: req.data.ID });
    console.log('On getSalary', req.data)
    return emp.Salary;
  })

  this.on('getTotalEmployees', async (req) => {
    const count = await SELECT.one.from(EmployeeSet)
      .columns`count(*) as total`
      .where({ Employer_ID: req.data.ID });
      console.log('On getTotalEmployees', req.data);
      return count.total;
  });
  
  this.on('promoteEmployee', async (req) => {
    debugger;
  
    const emp = await SELECT.one.from(EmployeeSet).where({ ID: req.data.employeeID });
  
    if (!emp) {
      req.error(400, "Employee ID is not available");
      return;
    }
    // Sample promotion logic (Update Department or Title etc.)
    // You can modify the below line based on actual schema
    await UPDATE(EmployeeSet)
      .set({ Department: 'SAP BTP' }) // Replace with actual promotion field
      .where({ ID: req.data.ID });
  
    console.log('On promoteEmployee', req.data);
    return true;
  });

  return super.init()
}}
