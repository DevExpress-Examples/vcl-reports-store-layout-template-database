object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 992
  ClientWidth = 1047
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnShowDesigner: TcxButton
    Left = 24
    Top = 32
    Width = 145
    Height = 25
    Caption = 'Show Designer'
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 0
    OnClick = btnShowDesignerClick
  end
  object btnViewReport: TcxButton
    Left = 192
    Top = 32
    Width = 193
    Height = 25
    Caption = 'View Report'
    TabOrder = 1
    OnClick = btnViewReportClick
  end
  object cxGrid1: TcxGrid
    Left = 272
    Top = 496
    Width = 521
    Height = 265
    TabOrder = 2
    object gvCategories: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DataModule1.dsCategories
      DataController.KeyFieldNames = 'CategoryID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object gvCategoriesCategoryID: TcxGridDBColumn
        DataBinding.FieldName = 'CategoryID'
      end
      object gvCategoriesCategoryName: TcxGridDBColumn
        DataBinding.FieldName = 'CategoryName'
      end
      object gvCategoriesDescription: TcxGridDBColumn
        DataBinding.FieldName = 'Description'
      end
    end
    object gvProducts: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DataModule1.dsProducts
      DataController.DetailKeyFieldNames = 'CategoryID'
      DataController.KeyFieldNames = 'ProductID'
      DataController.MasterKeyFieldNames = 'CategoryID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object gvProductsProductID: TcxGridDBColumn
        DataBinding.FieldName = 'ProductID'
      end
      object gvProductsProductName: TcxGridDBColumn
        DataBinding.FieldName = 'ProductName'
        Width = 244
      end
      object gvProductsSupplierID: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierID'
      end
      object gvProductsCategoryID: TcxGridDBColumn
        DataBinding.FieldName = 'CategoryID'
      end
      object gvProductsQuantityPerUnit: TcxGridDBColumn
        DataBinding.FieldName = 'QuantityPerUnit'
        Width = 124
      end
      object gvProductsUnitPrice: TcxGridDBColumn
        DataBinding.FieldName = 'UnitPrice'
      end
      object gvProductsUnitsInStock: TcxGridDBColumn
        DataBinding.FieldName = 'UnitsInStock'
      end
      object gvProductsUnitsOnOrder: TcxGridDBColumn
        DataBinding.FieldName = 'UnitsOnOrder'
      end
      object gvProductsReorderLevel: TcxGridDBColumn
        DataBinding.FieldName = 'ReorderLevel'
      end
      object gvProductsDiscontinued: TcxGridDBColumn
        DataBinding.FieldName = 'Discontinued'
        Width = 34
      end
      object gvProductsEAN13: TcxGridDBColumn
        DataBinding.FieldName = 'EAN13'
        Width = 76
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvCategories
      object cxGrid1Level2: TcxGridLevel
        GridView = gvProducts
      end
    end
  end
  object cxGrid2: TcxGrid
    Left = 48
    Top = 192
    Width = 377
    Height = 249
    TabOrder = 3
    object gvLayouts: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DataModule1.dsLayouts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Indicator = True
      object gvLayoutsRecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object gvLayoutsLayout: TcxGridDBColumn
        DataBinding.FieldName = 'Layout'
      end
      object gvLayoutsName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = gvLayouts
    end
  end
  object btnNew: TcxButton
    Left = 24
    Top = 72
    Width = 145
    Height = 25
    Caption = 'New Report'
    TabOrder = 4
    OnClick = btnNewClick
  end
  object dxReport1: TdxReport
    OnLayoutChanged = dxReport1LayoutChanged
    Left = 48
    Top = 88
  end
  object dxReportDataConnectionManager1: TdxReportDataConnectionManager
    Left = 112
    Top = 88
    object dxReportDataConnectionManager1dxReportDataSetJSONConnection1: TdxReportDataSetJSONConnection
      DisplayName = 'DataSetConnection'
      object itmProducts: TdxReportDataSetCollectionItem
        DataSet = DataModule1.mdProducts
        DataSetAlias = 'mdProducts'
      end
      object itmCategories: TdxReportDataSetCollectionItem
        DataSet = DataModule1.mdCategories
        DataSetAlias = 'mdCategories'
      end
    end
  end
end
