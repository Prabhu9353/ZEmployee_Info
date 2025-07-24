sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/empinfo/employeedetailsapp/test/integration/FirstJourney',
		'com/empinfo/employeedetailsapp/test/integration/pages/CompanySetList',
		'com/empinfo/employeedetailsapp/test/integration/pages/CompanySetObjectPage'
    ],
    function(JourneyRunner, opaJourney, CompanySetList, CompanySetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/empinfo/employeedetailsapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCompanySetList: CompanySetList,
					onTheCompanySetObjectPage: CompanySetObjectPage
                }
            },
            opaJourney.run
        );
    }
);