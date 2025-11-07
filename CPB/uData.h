//---------------------------------------------------------------------------

#ifndef uDataH
#define uDataH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include "dxmdaset.hpp"
#include <Data.DB.hpp>
#include "cxClasses.hpp"
#include "cxLookAndFeels.hpp"
#include "dxCore.h"
#include "dxSkinsForm.hpp"
#include "dxBackend.ConnectionString.SQL.hpp"
#include "dxBackend.hpp"
//---------------------------------------------------------------------------
class TDataModule1 : public TDataModule
{
__published:	// IDE-managed Components
	TdxMemData *mdLayouts;
	TBlobField *mdLayoutsLayout;
	TWideStringField *mdLayoutsName;
	TDataSource *dsLayouts;
	TdxBackendDataConnectionManager *dxBackendDataConnectionManager1;
	TdxBackendDatabaseSQLConnection *ReportsNWindConnectionString;
	TdxSkinController *dxSkinController1;
	void __fastcall DataModuleCreate(TObject *Sender);
	void __fastcall DataModuleDestroy(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TDataModule1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDataModule1 *DataModule1;
//---------------------------------------------------------------------------
#endif
