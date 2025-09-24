# DevExpress VCL Reports - Store report layouts in a database

This example demonstrates how to store a [report layout](https://docs.devexpress.com/VCL/dxReport.TdxReport.Layout) (XML-based template) in a dataset.

<img width="2601" height="1466" alt="vcl-reports-tdxreport-template-designer@2x" src="https://github.com/user-attachments/assets/b1896095-f743-477e-b1c2-b5f8771f0d80" />

The example stores a saved report layout in a BLOB field of a memory-based dataset component ([TdxMemData](https://docs.devexpress.com/VCL/dxmdaset.TdxMemData) inherited from the standard [TDataSet](https://docwiki.embarcadero.com/Libraries/Athens/en/Data.DB.TDataSet) class shipped with the VCL library).

## Testing the example

* Click **New Report** to create an empty database record.
* Click **Show Designer** to display the [Report Designer](https://docs.devexpress.com/XtraReports/119176/web-reporting/web-end-user-report-designer) dialog.
* Create a report layout using any tools available in the UI.
* Click the hamburger button and select the **Save** option and close the dialog.
* Click **View Designer** or **View Report** to load the saved report layout or preview a layout-based report in the [Report Viewer](https://docs.devexpress.com/XtraReports/401850/web-reporting/web-document-viewer) dialog.

## Documentation

* [TdxReport.Layout Property](https://docs.devexpress.com/VCL/dxReport.TdxReport.Layout)
* [TdxReportDataSetJSONConnection Component](https://docs.devexpress.com/VCL/dxReport.ConnectionString.JSON.DB.TdxReportDataSetJSONConnection)
