sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        onDownload: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
