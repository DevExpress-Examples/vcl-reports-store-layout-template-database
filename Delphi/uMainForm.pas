unit uMainForm;

interface

uses Vcl.Forms, dxMessageDialog, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  dxLayoutControlAdapters, dxLayoutContainer, dxReport, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, System.Classes,
  Vcl.Controls, dxLayoutControl;



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
    procedure LoadReportNameAndLayout;
    procedure SaveReportNameAndLayout;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses uData;

procedure TMainForm.LoadReportNameAndLayout();
begin
  if (DataModule1.mdLayouts.RecordCount = 0) and not (DataModule1.mdLayouts.State = dsInsert)  then
  begin
    dxShowMessage('The database is empty');
    Exit;
  end;
  // Load the report name from the database
  dxReport1.ReportName := DataModule1.mdLayoutsName.AsString;
  // Load the report layout from the database
  dxReport1.Layout.Assign(DataModule1.mdLayoutsLayout);
end;

procedure TMainForm.SaveReportNameAndLayout();
begin
  // Start editing the active dataset record
  DataModule1.mdLayouts.Edit;
  // Save the report name
  DataModule1.mdLayoutsName.AsString := dxReport1.ReportName;
  // Save the report layout
  DataModule1.mdLayoutsLayout.Assign(dxReport1.Layout);
  // Finish editing and post the modified record to the database
  DataModule1.mdLayouts.Post;
end;


// Handle the OnLayoutChanged event raised when a user saves a report layout in the Report Designer
procedure TMainForm.dxReport1LayoutChanged(ASender: TdxReport);
begin
  SaveReportNameAndLayout;
end;

// To create a new report layout, create a new dataset record
procedure TMainForm.btnNewClick(Sender: TObject);
begin
  DataModule1.mdLayouts.Append;
end;

procedure TMainForm.btnDesignClick(Sender: TObject);
begin
  LoadReportNameAndLayout;
  dxReport1.ShowDesigner;
end;

procedure TMainForm.btnPreviewClick(Sender: TObject);
begin
  LoadReportNameAndLayout;
  if (dxReport1.ReportName = '') then
  begin
    dxShowMessage('The report is not specified');
    Exit;
  end;
  dxReport1.ShowViewer;
end;

end.
