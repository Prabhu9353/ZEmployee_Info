using { db as Emp } from '../db/Employer';

service EmployeInfo{
  // @odata.draft.enabled
    entity CompanySet as projection on Emp.Company;
    entity EmployeeSet as projection on Emp.Employee;
    entity SkillSet as projection on Emp.Skill;
    function getSalary(ID:UUID) returns String;
    function getTotalEmployees(ID:UUID) returns Integer;
    function promoteEmployee(ID:UUID) returns Boolean;
}