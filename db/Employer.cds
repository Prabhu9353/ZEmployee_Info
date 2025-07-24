namespace db;

using { cuid } from '@sap/cds/common';

type MyString40 : String(50);


entity Skill : cuid{
  PrimarySkill   : String(40);
  SecondarySkill : String(40);
  UpdatedSkill   : String(40);
  Certification  : String(40);
}

// @assert.unique: {
//   Name: [ Name ],
// }

entity Company : cuid{
// Name               : localized MyString40 @mandatory @title : '{i18n>Name}';
// Address            : localized MyString40 @mandatory;
Name               : localized MyString40;
Address            : localized MyString40;
Revenue            : Decimal(15,2);
EmailID            : String(30) @title : '{i18n>EmailId}';
Phone              : String(10) @title :'{i18n>PhoneNo}';
// RegistrationDate   : Date @assert.range:  ['2000-01-01', '2025-12-31'];
RegistrationDate   : Date;
Industry           : MyString40;
Country            : MyString40;
//Employees        : Association to many Employee on Employees.Employer = $self;
Employees          : Composition of many Employee on Employees.Employer = $self; //one to many
}
entity Employee : cuid {
  Name         : MyString40;
  Department   : String(40);
  EmailID      : String(40);
  PhoneNo      : String(10);
  Salary       : Decimal(15,2);
  DateofBirth  : Date;
  Employer     : Association to Company; //one to one
  skill        : Association to Skill;
}

