using { db as Emp } from '../db/Employer';

service EmployeInfo{
   @odata.draft.enabled
    entity CompanySet as projection on Emp.Company;
    entity EmployeeSet as projection on Emp.Employee;
    entity SkillSet as projection on Emp.Skill;
}