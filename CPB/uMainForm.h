//---------------------------------------------------------------------------

#ifndef uMainFormH
#define uMainFormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxNavigator.hpp"
#include "cxStyles.hpp"
#include "dxDateRanges.hpp"
#include "dxMessageDialog.hpp"
#include "dxReport.hpp"
#include "dxScrollbarAnnotations.hpp"
#include <Data.DB.hpp>
#include <Vcl.Menus.hpp>
#include "dxmdaset.hpp"
#include "uData.h"
#include "dxLayoutContainer.hpp"
#include "dxLayoutControl.hpp"
#include "dxLayoutControlAdapters.hpp"
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
	TdxLayoutControl *dxLayoutControl1;
	TcxButton *btnDesign;
	TcxButton *btnPreview;
	TcxGrid *cxGrid2;
	TcxGridDBTableView *gvLayouts;
	TcxGridDBColumn *gvLayoutsRecId;
	TcxGridDBColumn *gvLayoutsLayout;
	TcxGridDBColumn *gvLayoutsName;
	TcxGridLevel *cxGrid2Level1;
	TcxButton *btnNew;
	TdxLayoutGroup *dxLayoutControl1Group_Root;
	TdxLayoutItem *liNew;
	TdxLayoutItem *liShowDesigner;
	TdxLayoutItem *liViewReport;
	TdxLayoutItem *liGrid;
	TdxReport *dxReport1;
	void __fastcall btnNewClick(TObject *Sender);
	void __fastcall dxReport1LayoutChanged(TdxReport *ASender);
	void __fastcall btnDesignClick(TObject *Sender);
	void __fastcall btnPreviewClick(TObject *Sender);
private:	// User declarations
	void __fastcall LoadReportNameAndLayout();
	void __fastcall SaveReportNameAndLayout();
public:		// User declarations
	__fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
