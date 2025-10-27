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
#pragma link "dxReport.Backend"
#pragma link "dxReport.ConnectionString.JSON"

#if defined(_WIN64)
  #pragma link "dxReport.ConnectionString.JSON.DB.O"
#else
  #pragma link "dxReport.ConnectionString.JSON.DB.OBJ"
#endif


#pragma link "dxScrollbarAnnotations"
#pragma link "dxmdaset"
#pragma link "cxImageList"
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
void __fastcall TMainForm::btnNewClick(TObject *Sender)
{
    DataModule1->mdLayouts->Append();
}
void __fastcall TMainForm::dxReport1LayoutChanged(TdxReport *ASender)
{
    DataModule1->mdLayouts->Edit();
    DataModule1->mdLayoutsLayout->Assign(dxReport1->Layout);
    DataModule1->mdLayoutsName->AsString = dxReport1->ReportName;
    DataModule1->mdLayouts->Post();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::btnDesignClick(TObject *Sender)
{
    if ((DataModule1->mdLayouts->RecordCount == 0) &&
		!(DataModule1->mdLayouts->State == dsInsert))
	{
		ShowMessage("The database is empty");
		return;
	}

	dxReport1->ReportName = DataModule1->mdLayoutsName->AsString;
	dxReport1->Layout->Assign(DataModule1->mdLayoutsLayout);
	dxReport1->ShowDesigner();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::btnPreviewClick(TObject *Sender)
{
	if (DataModule1->mdLayoutsName->AsString == "")
	{
		ShowMessage("The report is not specified");
		return;
	}

	dxReport1->ReportName = DataModule1->mdLayoutsName->AsString;
	dxReport1->Layout->Assign(DataModule1->mdLayoutsLayout);
	dxReport1->ShowViewer();
}
//---------------------------------------------------------------------------

