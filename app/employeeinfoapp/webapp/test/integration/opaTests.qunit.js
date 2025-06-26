sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/empinfo/employeeinfoapp/test/integration/FirstJourney',
		'com/empinfo/employeeinfoapp/test/integration/pages/CompanySetList',
		'com/empinfo/employeeinfoapp/test/integration/pages/CompanySetObjectPage'
    ],
    function(JourneyRunner, opaJourney, CompanySetList, CompanySetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/empinfo/employeeinfoapp') + '/index.html'
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