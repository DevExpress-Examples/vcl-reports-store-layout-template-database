<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/1048431927/25.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T1308581)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
# DevExpress VCL Reports - Store Report Layouts in a Database

This example stores a [report layout](https://docs.devexpress.com/VCL/dxReport.TdxReport.Layout) (XML-based template) in the BLOB field of a memory-based dataset ([TdxMemData](https://docs.devexpress.com/VCL/dxmdaset.TdxMemData) inherited from the [TDataSet](https://docwiki.embarcadero.com/Libraries/Athens/en/Data.DB.TDataSet) class shipped with the standard VCL library).

## Testing the example

* Run the sample app and click **New Report** to create an empty database record.
* Click **Show Designer** to display the [Report Designer](https://docs.devexpress.com/XtraReports/119176/web-reporting/web-end-user-report-designer) dialog.
* Create a report layout using tools available within the UI.
* Click the hamburger button, select the **Save** option, and close the dialog.
* Close the app. The [TdxMemData](https://docs.devexpress.com/VCL/dxmdaset.TdxMemData) component will store layout data between sessions.
* Run the sample app again. Click **View Designer** to load the saved report layout, or **View Report** to preview a layout-based report in the [Report Viewer](https://docs.devexpress.com/XtraReports/401850/web-reporting/web-document-viewer) dialog.

## Documentation

* [TdxReport.Layout Property](https://docs.devexpress.com/VCL/dxReport.TdxReport.Layout)
* [TdxBackendDataSetJSONConnection Component](https://docs.devexpress.com/VCL/dxBackend.ConnectionString.JSON.DataSet.TdxBackendDataSetJSONConnection)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-reports-store-layout-template-database&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=vcl-reports-store-layout-template-database&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->



