unit uData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, dxmdaset;

type
  TDataModule1 = class(TDataModule)
    dsProducts: TDataSource;
    dsCategories: TDataSource;
    mdCategories: TdxMemData;
    mdCategoriesCategoryID: TAutoIncField;
    mdCategoriesCategoryName: TWideStringField;
    mdCategoriesDescription: TWideMemoField;
    mdCategoriesPicture: TBlobField;
    mdProducts: TdxMemData;
    mdProductsProductID: TAutoIncField;
    mdProductsProductName: TWideStringField;
    mdProductsSupplierID: TIntegerField;
    mdProductsCategoryID: TIntegerField;
    mdProductsQuantityPerUnit: TWideStringField;
    mdProductsUnitPrice: TCurrencyField;
    mdProductsUnitsInStock: TSmallintField;
    mdProductsUnitsOnOrder: TSmallintField;
    mdProductsReorderLevel: TSmallintField;
    mdProductsDiscontinued: TBooleanField;
    mdProductsEAN13: TWideStringField;
    mdLayouts: TdxMemData;
    dsLayouts: TDataSource;
    mdLayoutsLayout: TBlobField;
    mdLayoutsName: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
const
  DataFileName = '..\..\data.dat';

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  if FileExists(DataFileName) then
    mdLayouts.LoadFromBinaryFile(DataFileName)
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
  if mdLayouts.RecordCount > 0 then
    mdLayouts.SaveToBinaryFile(DataFileName)
end;

end.
