using EmployeInfo as service from '../../srv/EmpSRV';
annotate service.CompanySet with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Employee Details',
            ID : 'EmployeeDetails',
            Target : 'Employees/@UI.LineItem#EmployeeDetails',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Address',
            Value : Address,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Revenue',
            Value : Revenue,
            ![@UI.Hidden],
        },
        {
            $Type : 'UI.DataField',
            Value : EmailID,
        },
        {
            $Type : 'UI.DataField',
            Value : Phone,
        },
    ],
    UI.SelectionFields : [
        Name,
        Address,
    ],
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Employee',
            ID : 'Employee',
            Target : '@UI.FieldGroup#Employee1',
        },
    ],
    UI.FieldGroup #Employee : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : EmailID,
            },
            {
                $Type : 'UI.DataField',
                Value : Address,
            },
            {
                $Type : 'UI.DataField',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Value : Phone,
            },
        ],
    },
    UI.FieldGroup #Employee1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Address,
            },
            {
                $Type : 'UI.DataField',
                Value : Country,
                Label : 'Country',
            },
            {
                $Type : 'UI.DataField',
                Value : EmailID,
            },
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : Industry,
                Label : 'Industry',
            },
            {
                $Type : 'UI.DataField',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Value : Phone,
            },
        ],
    },
);

annotate service.CompanySet with {
    Name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'CompanySet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Name,
                    ValueListProperty : 'Name',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'RegistrationDate',
                },
            ],
            Label : 'Comapany Name Value Help',
        },
        Common.ValueListWithFixedValues : false
)};

annotate service.CompanySet with {
    Address @(
        Common.Label : 'Address',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'CompanySet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Address,
                    ValueListProperty : 'Address',
                },
            ],
            Label : 'Company Address',
        },
        Common.ValueListWithFixedValues : false,
        )
};

annotate service.EmployeeSet with @(
    UI.LineItem #EmployeeDetails : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : Name,
            Label : 'Name',
        },
        {
            $Type : 'UI.DataField',
            Value : PhoneNo,
            Label : 'PhoneNo',
        },
        {
            $Type : 'UI.DataField',
            Value : EmailID,
            Label : 'EmailID',
        },
        {
            $Type : 'UI.DataField',
            Value : Salary,
            Label : 'Salary',
        },
        {
            $Type : 'UI.DataField',
            Value : Employer.Industry,
            Label : 'Industry',
        },
        {
            $Type : 'UI.DataField',
            Value : Employer.Employees.DateofBirth,
            Label : 'DateofBirth',
        },
        {
            $Type : 'UI.DataField',
            Value : Employer.Employees.Department,
            Label : 'Department',
        },
    ]
);

