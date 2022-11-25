object FrameReports: TFrameReports
  Left = 0
  Top = 0
  Width = 1087
  Height = 629
  Color = clBtnFace
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 225
    Top = 0
    Height = 629
    ExplicitLeft = 0
    ExplicitTop = 200
    ExplicitHeight = 100
  end
  object pnlReportList: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 629
    Align = alLeft
    Color = clBlack
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitHeight = 1014
    object pnlHeader: TPanel
      Left = 1
      Top = 1
      Width = 223
      Height = 117
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      StyleName = 'Windows'
      object viLogo: TVirtualImage
        Left = 5
        Top = 5
        Width = 213
        Height = 84
        Align = alClient
        ImageCollection = YF_VCLResources.icLogo
        ImageWidth = 0
        ImageHeight = 0
        ImageIndex = 0
        ImageName = 'YellowFin'
        ExplicitLeft = 16
        ExplicitTop = 24
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object cbListType: TComboBox
        Left = 5
        Top = 89
        Width = 213
        Height = 23
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alBottom
        TabOrder = 0
        OnChange = cbListTypeChange
        Items.Strings = (
          'All User Reports'
          'My Reports'
          'Favourates'
          'Drafts')
      end
    end
    object lvReportList: TListView
      Left = 1
      Top = 118
      Width = 223
      Height = 510
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      BorderStyle = bsNone
      Columns = <
        item
          AutoSize = True
          Caption = 'Select Report'
        end>
      FlatScrollBars = True
      GridLines = True
      Groups = <
        item
          GroupID = 0
          State = [lgsNormal]
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          TitleImage = -1
        end
        item
          GroupID = 1
          State = [lgsNormal]
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          TitleImage = -1
        end>
      Items.ItemData = {
        054E0000000300000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
        000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000000000000FF
        FFFFFFFFFFFFFF00000000FFFFFFFF0000000000}
      GroupView = True
      ReadOnly = True
      RowSelect = True
      TabOrder = 1
      ViewStyle = vsReport
      OnSelectItem = lvReportListSelectItem
      ExplicitLeft = 166
      ExplicitTop = 743
      ExplicitWidth = 188
      ExplicitHeight = 841
    end
  end
  object plReports: TPanel
    Left = 228
    Top = 0
    Width = 859
    Height = 629
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1512
    ExplicitHeight = 1014
    object lblReportDescription: TLabel
      Left = 1
      Top = 109
      Width = 857
      Height = 15
      Margins.Left = 12
      Margins.Top = 12
      Margins.Right = 12
      Margins.Bottom = 12
      Align = alTop
      Caption = '<Description>'
      WordWrap = True
      ExplicitWidth = 76
    end
    object lblReportTitle: TLabel
      Left = 1
      Top = 61
      Width = 857
      Height = 48
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alTop
      Caption = '<Title>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -36
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 118
    end
    object pcReports: TPageControl
      Left = 1
      Top = 124
      Width = 506
      Height = 504
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      ActivePage = tabBrowser
      Align = alClient
      MultiLine = True
      TabOrder = 0
      TabPosition = tpBottom
      ExplicitWidth = 1110
      ExplicitHeight = 889
      object tabBrowser: TTabSheet
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Report'
        object WebBrowser1: TWebBrowser
          Left = 0
          Top = 0
          Width = 498
          Height = 476
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          TabOrder = 0
          SelectedEngine = EdgeIfAvailable
          ExplicitWidth = 1081
          ExplicitHeight = 861
          ControlData = {
            4C00000078330000323100000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object tabSource: TTabSheet
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Source'
        ImageIndex = 1
        object memoSource: TMemo
          Left = 0
          Top = 0
          Width = 498
          Height = 476
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
          ExplicitWidth = 1102
          ExplicitHeight = 861
        end
      end
      object tabSchema: TTabSheet
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'Schema'
        ImageIndex = 2
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 498
          Height = 476
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          DataSource = dsReportSchema
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FieldID'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'columnName'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dataType'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'displayName'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'defaultValue1'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'defaultValue2'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'filterID'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AllowPrompt'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CachedValues'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FilterDisplayType'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'reportid'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NumberOfDecimals'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MinimumValue'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MaximumValue'
              Width = 200
              Visible = True
            end>
        end
      end
      object tabStart: TTabSheet
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Caption = 'tabStart'
        ImageIndex = 3
        TabVisible = False
        object Label1: TLabel
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 486
          Height = 464
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          Alignment = taCenter
          Caption = 'Select Report to Run'
          Layout = tlCenter
          ExplicitWidth = 107
          ExplicitHeight = 15
        end
      end
    end
    object pnlReportOptions: TPanel
      Left = 1
      Top = 1
      Width = 857
      Height = 60
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      ExplicitWidth = 1510
      object imgFavourate: TImage
        AlignWithMargins = True
        Left = 561
        Top = 11
        Width = 59
        Height = 38
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alRight
        Center = True
        Proportional = True
        Stretch = True
        Transparent = True
        OnClick = imgFavourateClick
        ExplicitLeft = 552
        ExplicitTop = 5
        ExplicitHeight = 44
      end
      object imgFilter: TVirtualImage
        AlignWithMargins = True
        Left = 632
        Top = 11
        Width = 52
        Height = 38
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alRight
        ImageCollection = YF_VCLResources.FavImages
        ImageWidth = 0
        ImageHeight = 0
        ImageIndex = 0
        ImageName = 'Filter'
        OnClick = imgFilterClick
        ExplicitLeft = 656
        ExplicitTop = 10
      end
      object rbHTML: TRadioButton
        Left = 5
        Top = 5
        Width = 120
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alLeft
        Caption = 'HTML'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbText: TRadioButton
        Left = 125
        Top = 5
        Width = 120
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alLeft
        Caption = 'Text'
        TabOrder = 1
        TabStop = True
      end
      object rbPDF: TRadioButton
        Left = 245
        Top = 5
        Width = 120
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alLeft
        Caption = 'PDF'
        TabOrder = 2
        TabStop = True
      end
      object rbXLS: TRadioButton
        Left = 365
        Top = 5
        Width = 120
        Height = 50
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alLeft
        Caption = 'XLS'
        TabOrder = 3
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 696
        Top = 11
        Width = 150
        Height = 38
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Action = actRunReport
        Align = alRight
        TabOrder = 4
        ExplicitLeft = 640
        ExplicitTop = 10
      end
    end
    object svFilters: TSplitView
      Left = 507
      Top = 124
      Width = 351
      Height = 504
      Margins.Left = 12
      Margins.Top = 12
      Margins.Right = 12
      Margins.Bottom = 12
      CompactWidth = 200
      OpenedWidth = 400
      Placement = svpRight
      TabOrder = 2
      ExplicitLeft = 1160
      ExplicitHeight = 889
      object sbFilters: TScrollBox
        Left = 0
        Top = 0
        Width = 351
        Height = 504
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        BevelInner = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        ExplicitLeft = 40
        ExplicitWidth = 360
        ExplicitHeight = 889
      end
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 132
    Top = 165
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'reportName'
      Control = lvReportList
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakFieldName = 'CategorySubCategory'
      FillHeaderFieldName = 'CategorySubCategory'
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'FavIcon'
      Control = imgFavourate
      Track = False
    end
  end
  object dsReportData: TDataSource
    DataSet = YF_ReportData.mtReports
    Left = 96
    Top = 264
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = YF_ReportData.mtReports
    ScopeMappings = <>
    Left = 408
    Top = 224
  end
  object dsReportSchema: TDataSource
    DataSet = YF_ReportData.mtReportSchema
    Left = 96
    Top = 392
  end
  object alReports: TActionList
    Left = 408
    Top = 384
    object actRunReport: TAction
      Caption = 'Run Report'
      OnExecute = actRunReportExecute
    end
    object actReloadFilters: TAction
      Caption = 'Reload Filters'
      OnExecute = actReloadFiltersExecute
    end
  end
end
