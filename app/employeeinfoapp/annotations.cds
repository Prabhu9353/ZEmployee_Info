using EmployeInfo as service from '../../srv/EmpSRV';
annotate service.CompanySet with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
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
            },
            {
                $Type : 'UI.DataField',
                Value : EmailID,
            },
            {
                $Type : 'UI.DataField',
                Value : Phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RegistrationDate',
                Value : RegistrationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Industry',
                Value : Industry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : Country,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
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

