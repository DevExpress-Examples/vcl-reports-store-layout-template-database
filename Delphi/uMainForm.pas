unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxReport, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,  cxButtons,
  dxReport.Backend, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxReport.ConnectionString.JSON.DB,
  dxReport.ConnectionString.JSON, Vcl.StdCtrls, dxmdaset, uData;

type
  TMainForm = class(TForm)
    dxReport1: TdxReport;
    dxReportDataConnectionManager1: TdxReportDataConnectionManager;
    btnShowDesigner: TcxButton;
    btnViewReport: TcxButton;
    dxReportDataConnectionManager1dxReportDataSetJSONConnection1: TdxReportDataSetJSONConnection;
    itmProducts: TdxReportDataSetCollectionItem;
    itmCategories: TdxReportDataSetCollectionItem;
    cxGrid1: TcxGrid;
    gvCategories: TcxGridDBTableView;
    gvCategoriesCategoryID: TcxGridDBColumn;
    gvCategoriesCategoryName: TcxGridDBColumn;
    gvCategoriesDescription: TcxGridDBColumn;
    gvProducts: TcxGridDBTableView;
    gvProductsProductID: TcxGridDBColumn;
    gvProductsProductName: TcxGridDBColumn;
    gvProductsSupplierID: TcxGridDBColumn;
    gvProductsCategoryID: TcxGridDBColumn;
    gvProductsQuantityPerUnit: TcxGridDBColumn;
    gvProductsUnitPrice: TcxGridDBColumn;
    gvProductsUnitsInStock: TcxGridDBColumn;
    gvProductsUnitsOnOrder: TcxGridDBColumn;
    gvProductsReorderLevel: TcxGridDBColumn;
    gvProductsDiscontinued: TcxGridDBColumn;
    gvProductsEAN13: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    gvLayouts: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    btnNew: TcxButton;
    gvLayoutsRecId: TcxGridDBColumn;
    gvLayoutsLayout: TcxGridDBColumn;
    gvLayoutsName: TcxGridDBColumn;
    procedure btnShowDesignerClick(Sender: TObject);
    procedure btnViewReportClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure dxReport1LayoutChanged(ASender: TdxReport);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}


procedure TMainForm.btnNewClick(Sender: TObject);
begin
  DataModule1.mdLayouts.Append
end;

procedure TMainForm.btnShowDesignerClick(Sender: TObject);
begin
  if (DataModule1.mdLayouts.RecordCount = 0) and not (DataModule1.mdLayouts.State = dsInsert)  then
  begin
    ShowMessage('The database is empty');
    Exit;
  end;

  dxReport1.ReportName := DataModule1.mdLayoutsName.AsString;
  dxReport1.Layout.Assign(DataModule1.mdLayoutsLayout);
  dxReport1.ShowDesigner;
end;

procedure TMainForm.btnViewReportClick(Sender: TObject);
begin
  if (DataModule1.mdLayoutsName.AsString = '')  then
  begin
    ShowMessage('The report is not specified');
    Exit;
  end;

  dxReport1.ReportName := DataModule1.mdLayoutsName.AsString;
  dxReport1.Layout.Assign(DataModule1.mdLayoutsLayout);
  dxReport1.ShowViewer;
end;

procedure TMainForm.dxReport1LayoutChanged(ASender: TdxReport);
var
  AStream: TMemoryStream;
begin
  DataModule1.mdLayouts.Edit;
  DataModule1.mdLayoutsLayout.Assign(dxReport1.Layout);
  DataModule1.mdLayoutsName.AsString := dxReport1.ReportName;
  DataModule1.mdLayouts.Post;
end;

end.
