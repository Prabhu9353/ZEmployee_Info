sap.ui.define([
    "sap/m/MessageToast",
    "sap/ui/core/mvc/ControllerExtension"
], function (MessageToast, ControllerExtension) {
    'use strict';

    return {
        onShow: function (oEvent) {
            // var oTable = this.byId("com.empinfo.employeedetailsapp::CompanySetList--fe::table::CompanySet::LineItem-innerTable");
            //var oTable = this.byId("com.empinfo.employeedetailsapp::CompanySetList--fe::table::CompanySet::LineItem");
            var oTable = this.editFlow.getView().byId("com.empinfo.employeedetailsapp::CompanySetList--fe::table::CompanySet::LineItem-innerTable");
            var aContexts = oTable.getSelectedContexts();

            if (!aContexts.length) {
                MessageToast.show("No row selected.");
                return;
            }
            // MessageToast.show("Custom handler invoked.");
            // aContexts.forEach(function(oContext) {
            aContexts.map(function (oContext) {
                var oData = oContext.getObject();
                var companyName = oData.Name;  // Your field name
                var companyID = oData.Address;
                return oData.companyName + " - " + oData.companyID;
                //MessageToast.show("Selected: " + aContexts.join(", "));
                //var companyName = oData.Name;  // Your field name
                //var companyID = oData.Address;
                // MessageToast.show("Selected: " + companyID + " - " + companyName);
            });
            MessageToast.show("Selected: " + aContexts.join(", "));


            //   var oData1 = oContext[0].getObject();
            //   var oData2 = oContext[1].getObject();
            //   var s1 = oData1.Name+ " " +oData1.Address;  // Your field name
            //   var s2 = oData2.Name+ " " +oData2.Address;
            //   //var companyID = oData.Address;
            //   MessageToast.show("Selected: " + s1 + " - " + s2);
        }
    };
});
