object MainForm: TMainForm
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'DevExpress Example: Store Reports in DB'
  ClientHeight = 313
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 481
    Height = 313
    TabOrder = 0
    AutoSize = True
    object btnDesign: TcxButton
      Left = 12
      Top = 44
      Width = 377
      Height = 25
      Caption = 'Design Report'
      TabOrder = 1
      OnClick = btnDesignClick
    end
    object btnPreview: TcxButton
      Left = 12
      Top = 76
      Width = 377
      Height = 25
      Caption = 'Preview Report'
      TabOrder = 2
      OnClick = btnPreviewClick
    end
    object cxGrid2: TcxGrid
      Left = 12
      Top = 108
      Width = 377
      Height = 101
      TabOrder = 3
      object gvLayouts: TcxGridDBTableView
        DataController.DataSource = DataModule1.dsLayouts
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gvLayoutsRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object gvLayoutsLayout: TcxGridDBColumn
          Caption = 'Report Layout'
          DataBinding.FieldName = 'Layout'
        end
        object gvLayoutsName: TcxGridDBColumn
          Caption = 'Report Name'
          DataBinding.FieldName = 'Name'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = gvLayouts
      end
    end
    object btnNew: TcxButton
      Left = 12
      Top = 12
      Width = 377
      Height = 25
      Caption = 'New Report'
      TabOrder = 0
      OnClick = btnNewClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object liNew: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'btnNew'
      CaptionOptions.Visible = False
      Control = btnNew
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liShowDesigner: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'btnShowDesigner'
      CaptionOptions.Visible = False
      Control = btnDesign
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liViewReport: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'btnViewReport'
      CaptionOptions.Visible = False
      Control = btnPreview
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 193
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liGrid: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxGrid2'
      CaptionOptions.Visible = False
      Control = cxGrid2
      ControlOptions.OriginalHeight = 101
      ControlOptions.OriginalWidth = 377
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object dxReport1: TdxReport
    Parameters = <>
    OnLayoutChanged = dxReport1LayoutChanged
    Left = 48
    Top = 88
  end
end
