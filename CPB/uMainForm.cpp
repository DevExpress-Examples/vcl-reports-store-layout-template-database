//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "uMainForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGraphics"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxNavigator"
#pragma link "cxStyles"
#pragma link "dxDateRanges"
#pragma link "dxReport"

#pragma link "dxScrollbarAnnotations"
#pragma link "dxmdaset"
#pragma link "dxLayoutContainer"
#pragma link "dxLayoutControl"
#pragma link "dxLayoutControlAdapters"
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
void __fastcall TMainForm::LoadReportNameAndLayout()
{
	if ((DataModule1->mdLayouts->RecordCount == 0) &&
		!(DataModule1->mdLayouts->State == dsInsert))
	{
		dxShowMessage("The database is empty");
		return;
	}
	// Load the report name from the database
	dxReport1->ReportName = DataModule1->mdLayoutsName->AsString;
	// Load the report layout from the database
	dxReport1->Layout->Assign(DataModule1->mdLayoutsLayout);
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::SaveReportNameAndLayout()
{
	// Start editing the active dataset record
	DataModule1->mdLayouts->Edit();
	// Save the report name
	DataModule1->mdLayoutsName->AsString = dxReport1->ReportName;
	// Save the report layout
	DataModule1->mdLayoutsLayout->Assign(dxReport1->Layout);
	// Finish editing and post the modified record to the database
	DataModule1->mdLayouts->Post();
}
//---------------------------------------------------------------------------

// To create a new report layout, create a new dataset record
void __fastcall TMainForm::btnNewClick(TObject *Sender)
{
	DataModule1->mdLayouts->Append();
}
//---------------------------------------------------------------------------

// Handle the OnLayoutChanged event raised when a user saves a report layout in the Report Designer
void __fastcall TMainForm::dxReport1LayoutChanged(TdxReport *ASender)
{
	SaveReportNameAndLayout();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::btnDesignClick(TObject *Sender)
{
	LoadReportNameAndLayout();
	dxReport1->ShowDesigner();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::btnPreviewClick(TObject *Sender)
{
	LoadReportNameAndLayout();
	if (dxReport1->ReportName == "")
	{
		dxShowMessage("The report is not specified");
		return;
	}
	dxReport1->ShowViewer();
}
//---------------------------------------------------------------------------

