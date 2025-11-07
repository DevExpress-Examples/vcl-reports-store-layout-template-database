unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxReport, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,  cxButtons,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.StdCtrls, dxmdaset, uData,
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutControl;

type
  TMainForm = class(TForm)
    dxReport1: TdxReport;
    btnDesign: TcxButton;
    btnPreview: TcxButton;
    gvLayouts: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    btnNew: TcxButton;
    gvLayoutsRecId: TcxGridDBColumn;
    gvLayoutsLayout: TcxGridDBColumn;
    gvLayoutsName: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    liNew: TdxLayoutItem;
    liShowDesigner: TdxLayoutItem;
    liViewReport: TdxLayoutItem;
    liGrid: TdxLayoutItem;
    procedure btnDesignClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
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

procedure TMainForm.btnDesignClick(Sender: TObject);
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

procedure TMainForm.btnPreviewClick(Sender: TObject);
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
begin
  DataModule1.mdLayouts.Edit;
  DataModule1.mdLayoutsLayout.Assign(dxReport1.Layout);
  DataModule1.mdLayoutsName.AsString := dxReport1.ReportName;
  DataModule1.mdLayouts.Post;
end;

end.
