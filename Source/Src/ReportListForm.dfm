object frmReportList: TfrmReportList
  Left = 15
  Top = 172
  Width = 921
  Height = 690
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object locForm: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 913
    Height = 656
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    object mainPanel: TElPanel
      Left = 10
      Top = 10
      Width = 893
      Height = 605
      Align = alNone
      MouseCapture = False
      TabOrder = 7
      DockOrientation = doNoOrient
      DoubleBuffered = False
      object Splitter1: TSplitter
        Left = 265
        Top = 1
        Height = 603
      end
      object dxLayoutControl2: TdxLayoutControl
        Left = 268
        Top = 1
        Width = 624
        Height = 603
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        object ElPageControl1: TElPageControl
          Left = 10
          Top = 37
          Width = 678
          Height = 527
          BorderWidth = 0
          DrawFocus = False
          Flat = True
          HotTrack = True
          Multiline = False
          RaggedRight = False
          ScrollOpposite = False
          Style = etsFlatTabs
          TabIndex = 0
          TabPosition = etpBottom
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clBlue
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
          ActivePage = ElTabSheet1
          FlatTabBorderColor = clBtnShadow
          DraggablePages = False
          ActiveTabFont.Charset = DEFAULT_CHARSET
          ActiveTabFont.Color = clWindowText
          ActiveTabFont.Height = -11
          ActiveTabFont.Name = 'MS Sans Serif'
          ActiveTabFont.Style = []
          TabCursor = crDefault
          Align = alClient
          ParentColor = False
          TabOrder = 11
          object ElTabSheet1: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = 'Gi'#225' tr'#7883
            object gridReportTable: TdxDBGrid
              Left = 0
              Top = 0
              Width = 674
              Height = 504
              Bands = <
                item
                  Fixed = bfLeft
                  Width = 308
                end
                item
                end>
              DefaultLayout = False
              KeyField = 'REPORT_ITEM_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnMouseUp = gridReportTableMouseUp
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'Tahoma'
              BandFont.Style = [fsBold]
              DataSource = dsReportTable
              Filter.Criteria = {00000000}
              GridLineColor = clBlack
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoHeaderPanelSizing, edgoKeepColumnWidth, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoHeaderPanelHeight, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'Tahoma'
              PreviewFont.Style = []
              ShowBands = True
              OnEdited = gridReportTableEdited
              OnEditing = gridReportTableEditing
            end
          end
          object ElTabSheet5: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = #272#7883'nh ngh'#297'a'
            Visible = False
            object gridReportTableDefine: TdxDBGrid
              Left = 0
              Top = 0
              Width = 674
              Height = 504
              Bands = <
                item
                  Fixed = bfLeft
                  Width = 100
                end
                item
                  Width = 500
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'REPORT_ITEM_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              OnMouseUp = gridReportTableDefineMouseUp
              DataSource = dsReportTableDefine
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoHeaderPanelSizing, edgoKeepColumnWidth, edgoRowSizing]
              OptionsDB = [edgoCanNavigation, edgoLoadAllRecords]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
              OnEdited = gridReportTableDefineEdited
            end
          end
          object ElTabSheet2: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = #272#7897' '#432'u ti'#234'n'
            Visible = False
            object gridReportTableIndex: TdxDBGrid
              Left = 0
              Top = 0
              Width = 674
              Height = 504
              Bands = <
                item
                  Fixed = bfLeft
                end
                item
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'RecID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              OnMouseUp = gridReportTableIndexMouseUp
              DataSource = dsReportTableIndex
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
              OnCustomDrawCell = gridReportTableIndexCustomDrawCell
              OnEdited = gridReportTableIndexEdited
            end
          end
          object ElTabSheet3: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = #272#7883'nh ngh'#297'a d'#242'ng'
            Visible = False
            object dxDBGrid4: TdxDBGrid
              Left = 0
              Top = 0
              Width = 674
              Height = 479
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'REPORT_ITEM_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              OnKeyDown = gridReportTableDefineKeyDown
              OnMouseUp = dxDBGrid4MouseUp
              DataSource = dsItems
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
              PreviewLines = 0
              object dxDBGridMaskColumn5: TdxDBGridMaskColumn
                Alignment = taLeftJustify
                Caption = 'STT'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taCenter
                Width = 35
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_ITEM_ID'
              end
              object dxDBGridMaskColumn6: TdxDBGridMaskColumn
                Caption = 'M'#227
                CharCase = ecUpperCase
                HeaderAlignment = taCenter
                Width = 85
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_ITEM_NAME_ID'
                Caption_UTF7 = 'M+AOM'
              end
              object dxDBGridMaskColumn8: TdxDBGridMaskColumn
                Caption = 'Ghi ch'#250
                HeaderAlignment = taCenter
                Visible = False
                Width = 357
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_ITEM_NOTE'
                Caption_UTF7 = 'Ghi ch+APo'
              end
              object dxDBGrid4REPORT_BOLD: TdxDBGridCheckColumn
                Caption = 'In '#273#7853'm'
                HeaderAlignment = taCenter
                MinWidth = 20
                Sorted = csUp
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_BOLD'
                ValueChecked = '1'
                ValueUnchecked = '0'
                Caption_UTF7 = 'In +AREerQ-m'
              end
              object dxDBGrid4REPORT_OBJECT_TYPE: TdxDBGridMaskColumn
                Caption = #272#7889'i t'#432#7907'ng'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_OBJECT_TYPE'
                Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
              end
            end
            inline frameToolbar3: TframeToolbar
              Left = 0
              Top = 479
              Width = 674
              Height = 25
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              inherited dxLayoutControl1: TdxLayoutControl
                Width = 674
                inherited btnClose: TElPopupButton
                  Left = 826
                end
                inherited btnHelp: TElPopupButton
                  Left = 686
                end
                inherited btnChoose: TElPopupButton
                  Left = 756
                end
                inherited btnDesign: TElPopupButton
                  Left = 656
                end
                inherited btnPreview: TElPopupButton
                  Left = 631
                end
                inherited btnPrint: TElPopupButton
                  Left = 606
                end
                inherited btnSendMail: TElPopupButton
                  Left = 581
                end
                inherited dxLayoutControl1Group_Root: TdxLayoutGroup
                  inherited dxLayoutControl1Group1: TdxLayoutGroup
                    inherited dxlctrlInsertCopy: TdxLayoutItem
                      Visible = False
                    end
                    inherited dxLayoutControl1Group3: TdxLayoutGroup
                      inherited dxLayoutControl1Item8: TdxLayoutItem
                        Visible = False
                      end
                      inherited dxLayoutControl1Item7: TdxLayoutItem
                        Visible = False
                      end
                      inherited dxLayoutControl1Item6: TdxLayoutItem
                        Visible = False
                      end
                    end
                    inherited dxlctrlHelp: TdxLayoutItem
                      Visible = False
                    end
                    inherited dxLayoutControl1Item14: TdxLayoutItem
                      Visible = False
                    end
                  end
                end
              end
              inherited ActionList1: TActionList
                inherited acDSInsert: TDataSetInsert
                  DataSource = dsItems
                end
                inherited acDSPost: TDataSetPost
                  DataSource = dsItems
                end
                inherited acDSCancel: TDataSetCancel
                  DataSource = dsItems
                end
                inherited acDSDelete: TDataSetDelete
                  DataSource = dsItems
                end
                inherited acDSRefresh: TDataSetRefresh
                  DataSource = dsItems
                end
                inherited acDSFirst: TDataSetFirst
                  DataSource = dsItems
                end
                inherited acDSPrior: TDataSetPrior
                  DataSource = dsItems
                end
                inherited acDSNext: TDataSetNext
                  DataSource = dsItems
                end
                inherited acDSLast: TDataSetLast
                  DataSource = dsItems
                end
                inherited acDSInsertCopy: TDataSetInsert
                  DataSource = dsItems
                end
                inherited acDSInsertChild: TDataSetInsert
                  DataSource = dsItems
                end
              end
            end
          end
          object ElTabSheet4: TElTabSheet
            PageControl = ElPageControl1
            ImageIndex = -1
            TabVisible = True
            Caption = #272#7883'nh ngh'#297'a c'#7897't'
            Visible = False
            inline frameToolbar2: TframeToolbar
              Left = 0
              Top = 479
              Width = 674
              Height = 25
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              inherited dxLayoutControl1: TdxLayoutControl
                Width = 674
                inherited btnClose: TElPopupButton
                  Left = 830
                end
                inherited btnHelp: TElPopupButton
                  Left = 690
                end
                inherited btnChoose: TElPopupButton
                  Left = 760
                end
                inherited btnDesign: TElPopupButton
                  Left = 660
                end
                inherited btnPreview: TElPopupButton
                  Left = 635
                end
                inherited btnPrint: TElPopupButton
                  Left = 610
                end
                inherited btnSendMail: TElPopupButton
                  Left = 585
                end
                inherited dxLayoutControl1Group_Root: TdxLayoutGroup
                  inherited dxLayoutControl1Group1: TdxLayoutGroup
                    inherited dxlctrlInsertCopy: TdxLayoutItem
                      Visible = False
                    end
                    inherited dxLayoutControl1Group3: TdxLayoutGroup
                      inherited dxLayoutControl1Item8: TdxLayoutItem
                        Visible = False
                      end
                      inherited dxLayoutControl1Item7: TdxLayoutItem
                        Visible = False
                      end
                      inherited dxLayoutControl1Item6: TdxLayoutItem
                        Visible = False
                      end
                    end
                    inherited dxlctrlHelp: TdxLayoutItem
                      Visible = False
                    end
                    inherited dxLayoutControl1Item14: TdxLayoutItem
                      Visible = False
                    end
                  end
                end
              end
              inherited ActionList1: TActionList
                inherited acDSInsert: TDataSetInsert
                  DataSource = dsCols
                end
                inherited acDSPost: TDataSetPost
                  DataSource = dsCols
                end
                inherited acDSCancel: TDataSetCancel
                  DataSource = dsCols
                end
                inherited acDSDelete: TDataSetDelete
                  DataSource = dsCols
                end
                inherited acDSRefresh: TDataSetRefresh
                  DataSource = dsCols
                end
                inherited acDSFirst: TDataSetFirst
                  DataSource = dsCols
                end
                inherited acDSPrior: TDataSetPrior
                  DataSource = dsCols
                end
                inherited acDSNext: TDataSetNext
                  DataSource = dsCols
                end
                inherited acDSLast: TDataSetLast
                  DataSource = dsCols
                end
                inherited acDSInsertCopy: TDataSetInsert
                  DataSource = dsCols
                end
                inherited acDSInsertChild: TDataSetInsert
                  DataSource = dsCols
                end
              end
            end
            object dxDBGrid3: TdxDBGrid
              Left = 0
              Top = 0
              Width = 674
              Height = 479
              Bands = <
                item
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'REPORT_COL_ID'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 1
              OnKeyDown = gridReportTableDefineKeyDown
              DataSource = dsCols
              Filter.Criteria = {00000000}
              LookAndFeel = lfUltraFlat
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoExtMultiSelect, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoKeepColumnWidth, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoIndicator, edgoUseBitmap]
              PreviewLines = 0
              object dxDBGridMaskColumn1: TdxDBGridMaskColumn
                Alignment = taLeftJustify
                Caption = 'STT'
                HeaderAlignment = taCenter
                Sorted = csUp
                Width = 63
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COL_ID'
              end
              object dxDBGridMaskColumn2: TdxDBGridMaskColumn
                Caption = 'M'#227
                CharCase = ecUpperCase
                HeaderAlignment = taCenter
                Width = 78
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COL_NAME_ID'
                Caption_UTF7 = 'M+AOM'
              end
              object dxDBGridMaskColumn3: TdxDBGridMaskColumn
                Caption = 'T'#234'n'
                HeaderAlignment = taCenter
                Width = 220
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COL_NAME'
                Caption_UTF7 = 'T+AOo-n'
              end
              object dxDBGridMaskColumn4: TdxDBGridMaskColumn
                Caption = 'Ghi ch'#250
                HeaderAlignment = taCenter
                Visible = False
                Width = 1567
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COL_NOTE'
                Caption_UTF7 = 'Ghi ch+APo'
              end
              object dxDBGridImageColumn1: TdxDBGridImageColumn
                Alignment = taRightJustify
                Caption = 'Ki'#7875'u'
                DisableCustomizing = True
                DisableDragging = True
                HeaderAlignment = taCenter
                MinWidth = 16
                Width = 130
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COL_TYPE'
                DefaultImages = False
                Descriptions.WideStrings = (
                  'Chu'#7889'i'
                  'S'#7889
                  'Ng'#224'y'
                  'Gi'#7901
                  'H'#236'nh '#7843'nh'
                  'Lu'#7853'n l'#253)
                ImageIndexes.WideStrings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                ShowDescription = True
                Values.WideStrings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                Caption_UTF7 = 'Ki+HsM-u'
              end
              object dxDBGrid3REPORT_WIDTH_VALUE: TdxDBGridSpinColumn
                Caption = #272#7897' r'#7897'ng gi'#225' tr'#7883
                HeaderAlignment = taCenter
                Width = 59
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_WIDTH_VALUE'
                Caption_UTF7 = '+ARAe2Q r+Htk-ng gi+AOE tr+Hss'
              end
              object dxDBGrid3REPORT_WIDTH_DEFINE: TdxDBGridSpinColumn
                Caption = #272#7897' r'#7897'ng '#273#7883'nh ngh'#297'a'
                HeaderAlignment = taCenter
                Width = 71
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_WIDTH_DEFINE'
                Caption_UTF7 = '+ARAe2Q r+Htk-ng +AREeyw-nh ngh+ASk-a'
              end
              object dxDBGrid3Column10: TdxDBGridButtonColumn
                Caption = 'M'#224'u'
                Width = 20
                BandIndex = 0
                RowIndex = 0
                OnCustomDrawCell = dxDBGrid3Column10CustomDrawCell
                ButtonOnly = True
                Buttons = <
                  item
                    Default = True
                  end>
                HideEditCursor = True
                OnButtonClick = dxDBGrid3Column10ButtonClick
                Caption_UTF7 = 'M+AOA-u'
              end
              object dxDBGrid3REPORT_COLOR: TdxDBGridMaskColumn
                Visible = False
                Width = 138
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_COLOR'
              end
              object dxDBGrid3REPORT_BOLD: TdxDBGridCheckColumn
                Caption = 'Ch'#7919' '#273#7853'm'
                HeaderAlignment = taCenter
                MinWidth = 20
                Width = 72
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_BOLD'
                ValueChecked = '1'
                ValueUnchecked = '0'
                Caption_UTF7 = 'Ch+Hu8 +AREerQ-m'
              end
              object dxDBGrid3REPORT_VALUABLE: TdxDBGridCheckColumn
                Caption = 'R'
                HeaderAlignment = taCenter
                Width = 41
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_VALUABLE'
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object dxDBGrid3REPORT_OBJECT_TYPE: TdxDBGridCalcColumn
                Caption = #272#7889'i t'#432#7907'ng'
                HeaderAlignment = taCenter
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_OBJECT_TYPE'
                Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng'
              end
              object dxDBGrid3REPORT_OBJECT1_TYPE: TdxDBGridCalcColumn
                Caption = #272#7889'i t'#432#7907'ng 1'
                HeaderAlignment = taCenter
                Width = 82
                BandIndex = 0
                RowIndex = 0
                FieldName = 'REPORT_OBJECT1_TYPE'
                Caption_UTF7 = '+ARAe0Q-i t+AbAe4w-ng 1'
              end
            end
          end
        end
        object ElPopupButton10: TElPopupButton
          Left = 835
          Top = 10
          Width = 68
          Height = 21
          Cursor = crDefault
          DrawDefaultFrame = False
          LinkColor = clBlue
          LinkStyle = [fsUnderline]
          NumGlyphs = 1
          UseXPThemes = True
          Caption = 'T'#237'nh &gi'#225' tr'#7883
          TabOrder = 7
          Action = acCal
          DockOrientation = doNoOrient
          DoubleBuffered = False
        end
        object imageeditParamType: TdxDBImageEdit
          Left = 10
          Top = 10
          Width = 109
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          OnExit = imageeditParamTypeExit
          Alignment = taLeftJustify
          DataField = 'REPORT_PARAM_TYPE'
          DataSource = dsReportList
          OnChange = imageeditParamTypeChange
          DropDownRows = 33554439
          PopupBorder = pbFrame3D
          Descriptions.WideStrings = (
            'Th'#225'ng'
            'Qu'#253
            'N'#259'm'
            'T'#7915' th'#225'ng'
            'T'#7915' qu'#253
            '6 th'#225'ng '#273#7847'u n'#259'm'
            '6 th'#225'ng cu'#7889'i n'#259'm')
          ImageIndexes.WideStrings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
          Values.WideStrings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
          StoredValues = 1
        end
        object spinFromMonth: TdxDBSpinEdit
          Left = 125
          Top = 10
          Width = 50
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 1
          OnExit = spinFromMonthExit
          DataField = 'REPORT_FROM_MONTH'
          DataSource = dsReportList
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 48
        end
        object spinFromQuarter: TdxDBSpinEdit
          Left = 181
          Top = 10
          Width = 53
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 2
          OnExit = spinFromQuarterExit
          DataField = 'REPORT_FROM_QUARTER'
          DataSource = dsReportList
          MaxValue = 4.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 48
        end
        object spinFromYear: TdxDBSpinEdit
          Left = 240
          Top = 10
          Width = 62
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 3
          OnExit = spinFromYearExit
          DataField = 'REPORT_FROM_YEAR'
          DataSource = dsReportList
          MaxValue = 3000.000000000000000000
          MinValue = 2005.000000000000000000
          StoredValues = 48
        end
        object spinToMonth: TdxDBSpinEdit
          Left = 364
          Top = 10
          Width = 52
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 4
          OnExit = spinToMonthExit
          DataField = 'REPORT_TO_MONTH'
          DataSource = dsReportList
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 48
        end
        object spinToQuarter: TdxDBSpinEdit
          Left = 468
          Top = 10
          Width = 55
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 5
          OnExit = spinToQuarterExit
          DataField = 'REPORT_TO_QUARTER'
          DataSource = dsReportList
          MaxValue = 4.000000000000000000
          MinValue = 1.000000000000000000
          StoredValues = 48
        end
        object spinToYear: TdxDBSpinEdit
          Left = 529
          Top = 10
          Width = 65
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 6
          OnExit = spinToYearExit
          DataField = 'REPORT_TO_YEAR'
          DataSource = dsReportList
          MaxValue = 3000.000000000000000000
          MinValue = 2005.000000000000000000
          StoredValues = 48
        end
        object ProgressBar: TProgressBar
          Left = 679
          Top = 12
          Width = 150
          Height = 17
          Position = 6
          TabOrder = 12
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl2Group2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object lcParam: TdxLayoutGroup
              Caption = 'New Group'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl2Item5: TdxLayoutItem
                Control = imageeditParamType
                ControlOptions.ShowBorder = False
              end
              object lcFromMonth: TdxLayoutItem
                Control = spinFromMonth
                ControlOptions.ShowBorder = False
              end
              object lcFromQuarter: TdxLayoutItem
                Control = spinFromQuarter
                ControlOptions.ShowBorder = False
              end
              object lcFromYear: TdxLayoutItem
                Control = spinFromYear
                ControlOptions.ShowBorder = False
              end
              object lcToMonth: TdxLayoutItem
                Caption = #272#7871'n th'#225'ng'
                Control = spinToMonth
                ControlOptions.ShowBorder = False
              end
              object lcToQuarter: TdxLayoutItem
                Caption = #272#7871'n qu'#253
                Control = spinToQuarter
                ControlOptions.ShowBorder = False
              end
              object lcToYear: TdxLayoutItem
                Control = spinToYear
                ControlOptions.ShowBorder = False
              end
            end
            object lcProgress: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              AlignVert = avCenter
              Caption = #272'ang th'#7921'c hi'#7879'n'
              Visible = False
              Control = ProgressBar
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl2Item4: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'ElPopupButton10'
              ShowCaption = False
              Control = ElPopupButton10
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl2Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Control = ElPageControl1
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 264
        Height = 603
        Align = alLeft
        TabOrder = 1
        AutoContentSizes = [acsWidth, acsHeight]
        object dbtreeReportList: TdxDBTreeList
          Left = 12
          Top = 39
          Width = 245
          Height = 544
          Bands = <
            item
            end>
          DefaultLayout = True
          KeyField = 'REPORT_ID'
          ParentField = 'REPORT_PARENT'
          Align = alLeft
          BorderStyle = bsNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = dbtreeReportListKeyDown
          OnMouseUp = dbtreeReportListMouseUp
          DataSource = dsReportList
          DefaultRowHeight = 21
          HighlightColor = clSkyBlue
          ImageIndexFieldName = 'ICON'
          Images = ImageList
          LookAndFeel = lfFlat
          OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSearch, etoAutoSort, etoDblClick, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoTabThrough]
          OptionsCustomize = [etoBandMoving, etoBandSizing, etoColumnMoving, etoColumnSizing, etoFullSizing, etoHeaderPanelSizing, etoKeepColumnWidth, etoRowSizing]
          OptionsDB = [etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoLoadAllRecords]
          OptionsView = [etoAutoHeaderPanelHeight, etoAutoWidth, etoBandHeaderWidth, etoIndicator, etoRowAutoHeight, etoShowButtonAlways, etoUseBitmap, etoUseImageIndexForSelected]
          StateImages = ImageList
          TreeLineColor = clGrayText
          OnChangeNode = dbtreeReportListChangeNode
          OnCustomDrawCell = dbtreeReportListCustomDrawCell
          object dbtreeReportListREPORT_ID: TdxDBTreeListColumn
            Alignment = taLeftJustify
            Caption = 'STT'
            CharCase = ecUpperCase
            DisableCustomizing = True
            HeaderAlignment = taCenter
            Sorted = csUp
            Visible = False
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_ID'
          end
          object dbtreeReportListREPORT_NAME: TdxDBTreeListMaskColumn
            Caption = 'B'#225'o c'#225'o'
            HeaderAlignment = taCenter
            Width = 211
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_NAME'
            Caption_UTF7 = 'B+AOE-o c+AOE-o'
          end
          object dbtreeReportListREPORT_NOTE: TdxDBTreeListMaskColumn
            Caption = 'Ghi ch'#250
            DisableCustomizing = True
            Visible = False
            Width = 497
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_NOTE'
            Caption_UTF7 = 'Ghi ch+APo'
          end
          object dbtreeReportListREPORT_FILETEMPLATE: TdxDBTreeListMaskColumn
            Caption = 'M'#7851'u b'#225'o c'#225'o'
            DisableCustomizing = True
            Visible = False
            Width = 219
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_FILETEMPLATE'
            Caption_UTF7 = 'M+Hqs-u b+AOE-o c+AOE-o'
          end
          object dbtreeReportListHIEN_THI: TdxDBTreeListCheckColumn
            Caption = 'V'
            DisableCustomizing = True
            MinWidth = 20
            Visible = False
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HIEN_THI'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbtreeReportListREPORT_VIEW_TYPE: TdxDBTreeListImageColumn
            Alignment = taRightJustify
            Caption = 'D'#7841'ng hi'#7875'n th'#7883
            DisableCustomizing = True
            MinWidth = 16
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REPORT_VIEW_TYPE'
            Descriptions.WideStrings = (
              'Chi ti'#7871't(t'#7915'ng '#244')'
              'Detail'
              'C'#7843' hai(Chi ti'#7871't+Detail)'
              'N'#7903' ngang'
              'N'#7903' d'#7885'c'
              'N'#7903' ngang ('#272'T-YT)')
            ImageIndexes.WideStrings = (
              '0'
              '1'
              '2'
              '3'
              '4')
            ShowDescription = True
            Values.WideStrings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5')
            Caption_UTF7 = 'D+HqE-ng hi+HsM-n th+Hss'
          end
        end
        object dxCheckEdit1: TdxCheckEdit
          Left = 10
          Top = 572
          Width = 967
          Style.ButtonStyle = bts3D
          TabOrder = 2
          Caption = 'M'#7903' ra '#273#7875' s'#7917'a'
          OnChange = dxCheckEdit1Change
        end
        object popBranch: TdxPopupEdit
          Left = 10
          Top = 10
          Width = 220
          Cursor = crIBeam
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = xbs3D
          Style.ButtonStyle = bts3D
          TabOrder = 0
          PopupControl = PopupFrm.pnlBranch
          PopupFormBorderStyle = pbsSimple
          OnCloseUp = popBranchCloseUp
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item3: TdxLayoutItem
            Control = popBranch
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ShowCaption = False
            Control = dbtreeReportList
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'dxCheckEdit1'
            ShowCaption = False
            Control = dxCheckEdit1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
    object ElPopupButton1: TElPopupButton
      Left = 235
      Top = 621
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Kh'#244'ng l'#432'u'
      TabOrder = 3
      Action = acCancel
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton2: TElPopupButton
      Left = 160
      Top = 621
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&L'#432'u'
      TabOrder = 2
      Action = acPost
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton3: TElPopupButton
      Left = 85
      Top = 621
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&X'#243'a'
      TabOrder = 1
      Action = acDelete
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object ElPopupButton5: TElPopupButton
      Left = 10
      Top = 621
      Width = 75
      Height = 25
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Th'#234'm '
      TabOrder = 0
      Action = acInsert
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnPreview: TElPopupButton
      Left = 636
      Top = 621
      Width = 89
      Height = 25
      Cursor = crDefault
      Hint = 'Xem tr'#432#7899'c khi in'
      DrawDefaultFrame = False
      Glyph.Data = {
        66060000424D6606000000000000360000002800000017000000160000000100
        1800000000003006000000000000000000000000000000000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEF4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4DDEEDEFDEEDEF4D4D4D4D4D4DDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DDEEDEF4D4D4D4D4D4D4D4D
        4DDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D4D4D4D4D4D4D4D4D4DA6A6A6
        4D4D4D4D4D4DDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA6A6A6D3D3D3D3
        D3D3A6A6A64D4D4DA6A6A6DEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA6A6
        A6D3D3D3D3D3D3FFFF4DA6A6A6A6A6A64D4D4DDEEDEFDEEDEFDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF4D4D4DD3D3D3D3D3D3D3D3D3D3D3D3A6A6A6D3D3D34D4D4DDEEDEFDEED
        EFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF4D4D4DD3D3D3FFFF4DD3D3D3D3D3D3A6A6A6D3D3D3
        4D4D4DDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA6A6A6FFFF4DFFFF4DD3
        D3D3A6A6A6A6A6A64D4D4DDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D
        4DA6A6A6D3D3D3D3D3D3A6A6A64D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4D4D4D4D4D4D4D4D4D4D4D4DDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D4D4D4D4D
        4D4D4D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF4D4D4DD3D3D34D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4D4D4D4D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF00
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEF000000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&Xem tr'#432#7899'c in'
      TabOrder = 4
      ParentShowHint = False
      ShowHint = True
      Action = acPreview
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDesign: TElPopupButton
      Left = 816
      Top = 621
      Width = 87
      Height = 25
      Cursor = crDefault
      Hint = 'Thi'#7871't k'#7871' l'#7841'i m'#7851'u in'
      DrawDefaultFrame = False
      Glyph.Data = {
        22050000424D2205000000000000360000002800000014000000150000000100
        180000000000EC04000000000000000000000000000000000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEF4D4D4DDEEDEF4D4D4DDEEDEF4D4D4DDEEDEF4D4D4DDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4D4D4D4DDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4D4D4D4D4D4D4DDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEF4D4D4D4DFFFFA6A6A64D4D4DDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEF4D4D4D4DFFFFD3D3D34D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEF4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDE
        EDEFDEEDEF4D4D4D4DFFFFA6A6A64D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DDEEDEFDEED
        EF4D4D4D4DFFFFD3D3D34D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D
        4D4DFFFFFFA6A6A6FFFFFFFFFFFFD3D3D3FFFFFF4D4D4DDEEDEFDEEDEFDEEDEF
        4D4D4D4DFFFFA6A6A64D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFF
        FFFFFFFFFFFFFF4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
        FFFF4D4D4D4D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFA6A6A6
        FFFFFF4D4D4DFFFFFFFFFFFF4D4D4DFFFFFFFFFFFFFFFFFF4D4D4D4D4D4D4D4D
        A64D4DA64D4D4DDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFF4D
        4D4DFFFFFFFFFFFF4D4D4DFFFFFFA6A6A6FFFFFF4D4D4D4D4D4D4D4D4D4D4D4D
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFA64D4DA64D4DA64D4DA64D4DA64D4DA64D
        4DA64D4DA64D4DFFFFFFFFFFFFFFFFFF4D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4D
        A64D4DFFFFFFA6A6A6FFFFFF4D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF4D4D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFA64D4DA64D4DA64D4DA64D4DA64D4DA64D
        4DA64D4DA64D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFA64D4DA64D4DA64D4DA64D4DA64D4DA64D4DA64D4D
        A64D4DDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF
        DEEDEFDEEDEF}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = 'S'#7917'a l'#7841'i &m'#7851'u'
      TabOrder = 6
      ParentShowHint = False
      ShowHint = True
      Action = acDesign
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object btnDirectPrint: TElPopupButton
      Left = 725
      Top = 621
      Width = 91
      Height = 25
      Cursor = crDefault
      Hint = 'In ra m'#225'y in (Ctrl+P)'
      DrawDefaultFrame = False
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF0000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDE
        EDEFDEEDEFDEEDEF0000DEEDEFDEEDEFDEEDEF4D4D4D4D4D4D4D4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDEEDEFDEEDEFDEEDEFDEEDEF
        0000DEEDEFDEEDEF4D4D4DD3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
        D3D3D3D3D3D34D4D4DD3D3D34D4D4DDEEDEFDEEDEFDEEDEF0000DEEDEF4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
        4D4D4D4DD3D3D34D4D4DDEEDEFDEEDEF0000DEEDEF4D4D4DD3D3D3D3D3D3D3D3
        D3D3D3D3D3D3D3D3D3D34DFFFF4DFFFF4DFFFFD3D3D3D3D3D34D4D4D4D4D4D4D
        4D4DDEEDEFDEEDEF0000DEEDEF4D4D4DD3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3
        D3D3A6A6A6A6A6A6A6A6A6D3D3D3D3D3D34D4D4DD3D3D34D4D4DDEEDEFDEEDEF
        0000DEEDEF4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4DD3D3D3D3D3D34D4D4DDEEDEF0000DEEDEF4D4D4D
        D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D34D4D
        4DD3D3D34D4D4DD3D3D34D4D4DDEEDEF0000DEEDEFDEEDEF4D4D4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DD3D3D34D4D4DD3D3D34D
        4D4D4D4D4DDEEDEF0000DEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DD3D3D34D4D4DD3D3D34D4D4DDEEDEF
        0000DEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFF4D4D4D4D4D4D4D4D4D4D4D4D
        4D4D4DFFFFFF4D4D4D4D4D4D4D4D4D4D4D4DDEEDEFDEEDEF0000DEEDEFDEEDEF
        DEEDEFDEEDEF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF4D4D4DDEEDEFDEEDEFDEEDEFDEEDEF0000DEEDEFDEEDEFDEEDEFDEEDEFDEED
        EF4D4D4DFFFFFF4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DFFFFFF4D4D4DDEEDEFDE
        EDEFDEEDEFDEEDEF0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4DFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DDEEDEFDEEDEFDEEDEF
        0000DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF4D4D4D4D4D4D4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DDEEDEFDEEDEFDEEDEF0000DEEDEFDEEDEF
        DEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEFDEED
        EFDEEDEFDEEDEFDEEDEFDEEDEFDEEDEF0000}
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      UseXPThemes = True
      Caption = '&In tr'#7921'c ti'#7871'p'
      TabOrder = 5
      ParentShowHint = False
      ShowHint = True
      Action = acPrint
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object locFormGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object locFormGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        UseIndent = False
        object locFormGroup3: TdxLayoutGroup
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
          object locFormItem6: TdxLayoutItem
            Caption = 'ElPopupButton5'
            ShowCaption = False
            Control = ElPopupButton5
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem4: TdxLayoutItem
            Caption = 'ElPopupButton3'
            ShowCaption = False
            Control = ElPopupButton3
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem3: TdxLayoutItem
            Caption = 'ElPopupButton2'
            ShowCaption = False
            Control = ElPopupButton2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem1: TdxLayoutItem
            Caption = 'ElPopupButton1'
            ShowCaption = False
            Control = ElPopupButton1
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object locFormGroup1: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
          object locFormItem9: TdxLayoutItem
            ShowCaption = False
            Control = btnPreview
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem11: TdxLayoutItem
            Caption = 'btnDirectPrint'
            ShowCaption = False
            Control = btnDirectPrint
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object locFormItem10: TdxLayoutItem
            Caption = 'btnDesign'
            ShowCaption = False
            Control = btnDesign
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
      end
      object locFormItem2: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'ElPanel1'
        ShowCaption = False
        Control = mainPanel
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object CopyMemo: TdxMemo
    Left = 560
    Top = 0
    Width = 155
    Style.BorderStyle = xbsFlat
    TabOrder = 1
    Visible = False
    Height = 17
  end
  object lcBieuThuc: TdxLayoutControl
    Left = 360
    Top = 128
    Width = 441
    Height = 329
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    AutoContentSizes = [acsWidth, acsHeight]
    AutoControlTabOrders = False
    object ElPopupButton37: TElPopupButton
      Left = 348
      Top = 277
      Width = 71
      Height = 30
      Cursor = crDefault
      DrawDefaultFrame = False
      ModalResult = 1
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = #272#243'&ng'
      TabOrder = 0
      Color = clBtnFace
      ParentColor = False
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object editType: TdxDBImageEdit
      Left = 10
      Top = 10
      Width = 252
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Alignment = taLeftJustify
      DataField = 'REPORT_ISEXPRESSION'
      DataSource = dsTable
      OnChange = editTypeChange
      DropDownRows = 33554439
      PopupBorder = pbFrame3D
      Descriptions.WideStrings = (
        'H'#7857'ng s'#7889
        'Bi'#7875'u th'#7913'c'
        'SQL'
        'TK N'#7907'/C'#243
        'Kh'#244'ng c'#243)
      ImageIndexes.WideStrings = (
        '0'
        '1'
        '2'
        '3'
        '4')
      Values.WideStrings = (
        '0'
        '1'
        '2'
        '3'
        '-1')
      StoredValues = 1
    end
    object editValuesss: TdxDBCalcEdit
      Left = 324
      Top = 10
      Width = 71
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 2
      DataField = 'REPORT_VALUE'
      DataSource = dsTable
      PopupBorder = pbFrame3D
    end
    object ElPopupButton12: TElPopupButton
      Left = 362
      Top = 10
      Width = 69
      Height = 22
      Cursor = crDefault
      DrawDefaultFrame = False
      LinkColor = clBlue
      LinkStyle = [fsUnderline]
      NumGlyphs = 1
      ThinFrame = True
      UseXPThemes = True
      Caption = '&Ki'#7875'm tra'
      TabOrder = 3
      Color = clBtnFace
      ParentColor = False
      OnClick = ElPopupButton12Click
      DockOrientation = doNoOrient
      DoubleBuffered = False
    end
    object dxDBSpinEdit1: TdxDBSpinEdit
      Left = 66
      Top = 145
      Width = 39
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 7
      DataField = 'REPORT_INDEX'
      DataSource = dsTable
      MaxValue = 9.000000000000000000
      MinValue = 1.000000000000000000
      StoredValues = 48
    end
    object editSQL: TdxDBMemo
      Left = 10
      Top = 220
      Width = 421
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 8
      DataField = 'REPORT_SQL'
      DataSource = dsTable
      Height = 24
    end
    object dxDBGrid1: TdxDBGrid
      Left = 12
      Top = 67
      Width = 405
      Height = 70
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'KEYFIELD'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 9
      DataSource = dsDebitCreditAcc
      Filter.Criteria = {00000000}
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoExtMultiSelect, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoKeepColumnWidth, edgoRowSizing]
      OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoIndicator, edgoUseBitmap]
      PreviewLines = 0
      object dxDBGrid1REPORT_DEBIT_ACC: TdxDBGridColumn
        Caption = 'TK N'#7907
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REPORT_DEBIT_ACC'
        Caption_UTF7 = 'TK N+HuM'
      end
      object dxDBGrid1REPORT_CREDIT_ACC: TdxDBGridColumn
        Caption = 'TK C'#243
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REPORT_CREDIT_ACC'
        Caption_UTF7 = 'TK C+APM'
      end
      object dxDBGrid1REPORT_COEFFICIENT: TdxDBGridCalcColumn
        Caption = 'H'#7879' s'#7889
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REPORT_COEFFICIENT'
        Caption_UTF7 = 'H+Hsc s+HtE'
      end
      object dxDBGrid1REPORT_CONDITIONS_TYPE: TdxDBGridImageColumn
        Alignment = taRightJustify
        Caption = #272'i'#7873'u ki'#7879'n'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REPORT_CONDITIONS_TYPE'
        Descriptions.WideStrings = (
          'K'#7923' n'#224'y'
          'K'#7923' tr'#432#7899'c'
          'L'#361'y k'#7871)
        ImageIndexes.WideStrings = (
          '0'
          '1'
          '2')
        ShowDescription = True
        Values.WideStrings = (
          '0'
          '1'
          '2')
        Caption_UTF7 = '+ARA-i+HsE-u ki+Hsc-n'
      end
    end
    object dxDBCalcEdit1: TdxDBImageEdit
      Left = 160
      Top = 145
      Width = 82
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 10
      DataField = 'REPORT_OTHER_CONDITION'
      DataSource = dsTable
      DropDownRows = 33554439
      PopupBorder = pbFrame3D
      Descriptions.WideStrings = (
        'Kh'#244'ng c'#243
        '> 0'
        '>= 0'
        '< 0')
      ImageIndexes.WideStrings = (
        '0'
        '1'
        '2'
        '3')
      Values.WideStrings = (
        '0'
        '1'
        '2'
        '3')
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 248
      Top = 145
      Width = 137
      Style.ButtonStyle = bts3D
      TabOrder = 11
      Alignment = taRightJustify
      Caption = 'Ch'#7881' hi'#7875'n th'#7883' t'#7841'i c'#7897't t'#7893'ng'
      DataField = 'REPORT_NOT_DETAIL'
      DataSource = dsTable
      ValueChecked = '1'
      ValueUnchecked = '0'
      StoredValues = 1
    end
    object editExpressionss: TdxDBButtonEdit
      Left = 10
      Top = 38
      Width = 121
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = xbs3D
      Style.ButtonStyle = bts3D
      TabOrder = 12
      DataField = 'REPORT_EXPRESSION'
      DataSource = dsTable
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = editExpressionssButtonClick
      ExistButtons = True
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup1: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object lcBieuThucGroup13: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutItem1: TdxLayoutItem
            Control = editType
            ControlOptions.ShowBorder = False
          end
          object editValue: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Control = editValuesss
            ControlOptions.ShowBorder = False
          end
          object lcCheckButtons: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            ShowCaption = False
            Control = ElPopupButton12
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object editExpression: TdxLayoutItem
          Control = editExpressionss
          ControlOptions.ShowBorder = False
        end
        object lcConditions: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = dxDBGrid1
        end
      end
      object lcBieuThucGroup23: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object lcDoUuTien: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = #272#7897' '#432'u ti'#234'n'
          Control = dxDBSpinEdit1
          ControlOptions.ShowBorder = False
        end
        object lcOtherCondition: TdxLayoutItem
          Caption = #272'i'#7873'u ki'#7879'n'
          Control = dxDBCalcEdit1
          ControlOptions.ShowBorder = False
        end
        object lcBieuThucItem30: TdxLayoutItem
          Caption = 'dxDBCheckEdit1'
          ShowCaption = False
          Control = dxDBCheckEdit1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object lcButtons: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        LayoutDirection = ldHorizontal
        UseIndent = False
        object lcBieuThucGroup7: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          UseIndent = False
        end
        object lcBieuThucGroup6: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
        end
        object lcBieuThucGroup3: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          UseIndent = False
        end
        object lcBieuThucGroup2: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          UseIndent = False
        end
        object lcBieuThucGroup4: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          UseIndent = False
        end
        object lcBieuThucGroup5: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'New Group'
          ShowCaption = False
          ShowBorder = False
          UseIndent = False
        end
      end
      object lcSQL: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'SQL'
        ShowCaption = False
        Control = editSQL
        ControlOptions.ShowBorder = False
      end
      object lcBieuThucGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        LayoutDirection = ldHorizontal
        object lcBieuThucItem11: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahRight
          ShowCaption = False
          Control = ElPopupButton37
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object ElFormCaption1: TElFormCaption
    Active = True
    Alignment = taLeftJustify
    PaintBkgnd = pbtAlways
    Buttons = <>
    SystemFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Caption = 'B'#225'o c'#225'o t'#7893'ng h'#7907'p'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 32
    Top = 48
  end
  object ActionList1: TActionList
    Left = 66
    Top = 48
    object acCancel: TDataSetCancel
      Category = 'Dataset'
      Caption = 'acCancel'
      DataSource = dsReportList
    end
    object acDelete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'acDelete'
      DataSource = dsReportList
    end
    object acInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'acInsert'
      OnExecute = acInsertExecute
      DataSource = dsReportList
    end
    object acPost: TDataSetPost
      Category = 'Dataset'
      Caption = 'acPost'
      DataSource = dsReportList
    end
    object acCal: TAction
      Caption = 'acCal'
      OnExecute = acCalExecute
    end
    object acPreview: TAction
      Caption = 'acPreview'
      OnExecute = acPreviewExecute
    end
    object acPrint: TAction
      Caption = 'acPrint'
      OnExecute = acPrintExecute
    end
    object acDesign: TAction
      Caption = 'acDesign'
      OnExecute = acDesignExecute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.WideStrings = (
      'Default'
      'Ky nay'
      'Ky truoc'
      'Luy ke')
    Categories.ItemsVisibles = (
      255
      255
      255
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 32
    Top = 78
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acPreview
      Caption = '&Xem tr'#432#7899'c in'
      Category = 0
      Hint = 'Xem tr'#432#7899'c in'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Action = acPrint
      Caption = '&In tr'#7921'c ti'#7871'p'
      Category = 0
      Hint = 'In tr'#7921'c ti'#7871'p'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Action = acDesign
      Caption = 'S'#7917'a l'#7841'i &m'#7851'u'
      Category = 0
      Hint = 'S'#7917'a l'#7841'i m'#7851'u'
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Action = acCal
      Caption = 'T'#237'nh &gi'#225' tr'#7883
      Category = 0
      Hint = 'T'#237'nh gi'#225' tr'#7883
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Theo '#273#7889'i t'#432#7907'ng'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton11
          Visible = True
        end
        item
          Item = dxBarButton12
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton13
          Visible = True
        end
        item
          Item = dxBarButton14
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton15
          Visible = True
        end
        item
          Item = dxBarButton16
          Visible = True
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Theo y'#7871'u t'#7889
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton17
          Visible = True
        end
        item
          Item = dxBarButton18
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton19
          Visible = True
        end
        item
          Item = dxBarButton20
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton21
          Visible = True
        end
        item
          Item = dxBarButton22
          Visible = True
        end>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Theo t'#224'i kho'#7843'n'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton5
          Visible = True
        end
        item
          Item = dxBarButton6
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton7
          Visible = True
        end
        item
          Item = dxBarButton8
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton9
          Visible = True
        end
        item
          Item = dxBarButton10
          Visible = True
        end>
    end
    object dxBarButton5: TdxBarButton
      Caption = 'N'#7907' '#272'K TK(nodktk)'
      Category = 1
      Hint = 'N'#7907' '#272'K TK(nodktk)'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = 'C'#243' '#272'K TK(codktk)'
      Category = 1
      Hint = 'C'#243' '#272'K TK(codktk)'
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'N'#7907' PS TK(nopstk)'
      Category = 1
      Hint = 'N'#7907' PS TK(nopstk)'
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Caption = 'C'#243' PS TK(copstk)'
      Category = 1
      Hint = 'C'#243' PS TK(copstk)'
      Visible = ivAlways
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'N'#7907' CK TK(nocktk)'
      Category = 1
      Hint = 'N'#7907' CK TK(nocktk)'
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = 'C'#243' CK TK(cocktk)'
      Category = 1
      Hint = 'C'#243' CK TK(cocktk)'
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Caption = 'N'#7907' '#272'K '#272'T(nodkdt)'
      Category = 1
      Hint = 'N'#7907' '#272'K '#272'T(nodkdt)'
      Visible = ivAlways
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Caption = 'C'#243' '#272'K '#272'T(codkdt)'
      Category = 1
      Hint = 'C'#243' '#272'K '#272'T(codkdt)'
      Visible = ivAlways
      OnClick = dxBarButton12Click
    end
    object dxBarButton13: TdxBarButton
      Caption = 'N'#7907' PS '#272'T(nopsdt)'
      Category = 1
      Hint = 'N'#7907' PS '#272'T(nopsdt)'
      Visible = ivAlways
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Caption = 'C'#243' PS '#272'T(copsdt)'
      Category = 1
      Hint = 'C'#243' PS '#272'T(copsdt)'
      Visible = ivAlways
      OnClick = dxBarButton14Click
    end
    object dxBarButton15: TdxBarButton
      Caption = 'N'#7907' CK '#272'T(nockdt)'
      Category = 1
      Hint = 'N'#7907' CK '#272'T(nockdt)'
      Visible = ivAlways
      OnClick = dxBarButton15Click
    end
    object dxBarButton16: TdxBarButton
      Caption = 'C'#243' CK '#272'T(cockdt)'
      Category = 1
      Hint = 'C'#243' CK '#272'T(cockdt)'
      Visible = ivAlways
      OnClick = dxBarButton16Click
    end
    object dxBarButton17: TdxBarButton
      Caption = 'N'#7907' '#272'K YT(nodkyt)'
      Category = 1
      Hint = 'N'#7907' '#272'K YT(nodkyt)'
      Visible = ivAlways
      OnClick = dxBarButton17Click
    end
    object dxBarButton18: TdxBarButton
      Caption = 'C'#243' '#272'K YT(codkyt)'
      Category = 1
      Hint = 'C'#243' '#272'K YT(codkyt)'
      Visible = ivAlways
      OnClick = dxBarButton18Click
    end
    object dxBarButton19: TdxBarButton
      Caption = 'N'#7907' PS YT(nopsyt)'
      Category = 1
      Hint = 'N'#7907' PS YT(nopsyt)'
      Visible = ivAlways
      OnClick = dxBarButton19Click
    end
    object dxBarButton20: TdxBarButton
      Caption = 'C'#243' PS YT(copsyt)'
      Category = 1
      Hint = 'C'#243' PS YT(copsyt)'
      Visible = ivAlways
      OnClick = dxBarButton20Click
    end
    object dxBarButton21: TdxBarButton
      Caption = 'N'#7907' CK YT(nockyt)'
      Category = 1
      Hint = 'N'#7907' CK YT(nockyt)'
      Visible = ivAlways
      OnClick = dxBarButton21Click
    end
    object dxBarButton22: TdxBarButton
      Caption = 'C'#243' CK YT(cockyt)'
      Category = 1
      Hint = 'C'#243' CK YT(cockyt)'
      Visible = ivAlways
      OnClick = dxBarButton22Click
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'Theo t'#224'i kho'#7843'n'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton23
          Visible = True
        end
        item
          Item = dxBarButton24
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton25
          Visible = True
        end
        item
          Item = dxBarButton26
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton27
          Visible = True
        end
        item
          Item = dxBarButton28
          Visible = True
        end>
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = 'Theo '#273#7889'i t'#432#7907'ng'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton29
          Visible = True
        end
        item
          Item = dxBarButton30
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton31
          Visible = True
        end
        item
          Item = dxBarButton32
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton33
          Visible = True
        end
        item
          Item = dxBarButton34
          Visible = True
        end>
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = 'Theo y'#7871'u t'#7889
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton35
          Visible = True
        end
        item
          Item = dxBarButton36
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton37
          Visible = True
        end
        item
          Item = dxBarButton38
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton39
          Visible = True
        end
        item
          Item = dxBarButton40
          Visible = True
        end>
    end
    object dxBarButton23: TdxBarButton
      Caption = 'N'#7907' '#272'K TK'
      Category = 2
      Hint = 'N'#7907' '#272'K TK'
      Visible = ivAlways
      OnClick = dxBarButton23Click
    end
    object dxBarButton24: TdxBarButton
      Caption = 'C'#243' '#272'K TK'
      Category = 2
      Hint = 'C'#243' '#272'K TK'
      Visible = ivAlways
    end
    object dxBarButton25: TdxBarButton
      Caption = 'N'#7907' PS TK'
      Category = 2
      Hint = 'N'#7907' PS TK'
      Visible = ivAlways
    end
    object dxBarButton26: TdxBarButton
      Caption = 'C'#243' PS TK'
      Category = 2
      Hint = 'C'#243' PS TK'
      Visible = ivAlways
    end
    object dxBarButton27: TdxBarButton
      Caption = 'N'#7907' CK TK'
      Category = 2
      Hint = 'N'#7907' CK TK'
      Visible = ivAlways
    end
    object dxBarButton28: TdxBarButton
      Caption = 'C'#243' CK TK'
      Category = 2
      Hint = 'C'#243' CK TK'
      Visible = ivAlways
    end
    object dxBarButton29: TdxBarButton
      Caption = 'N'#7907' '#272'K '#272'T'
      Category = 2
      Hint = 'N'#7907' '#272'K '#272'T'
      Visible = ivAlways
    end
    object dxBarButton30: TdxBarButton
      Caption = 'C'#243' '#272'K '#272'T'
      Category = 2
      Hint = 'C'#243' '#272'K '#272'T'
      Visible = ivAlways
    end
    object dxBarButton31: TdxBarButton
      Caption = 'N'#7907' PS '#272'T'
      Category = 2
      Hint = 'N'#7907' PS '#272'T'
      Visible = ivAlways
    end
    object dxBarButton32: TdxBarButton
      Caption = 'C'#243' PS '#272'T'
      Category = 2
      Hint = 'C'#243' PS '#272'T'
      Visible = ivAlways
    end
    object dxBarButton33: TdxBarButton
      Caption = 'N'#7907' CK '#272'T'
      Category = 2
      Hint = 'N'#7907' CK '#272'T'
      Visible = ivAlways
    end
    object dxBarButton34: TdxBarButton
      Caption = 'C'#243' CK '#272'T'
      Category = 2
      Hint = 'C'#243' CK '#272'T'
      Visible = ivAlways
    end
    object dxBarButton35: TdxBarButton
      Caption = 'N'#7907' '#272'K YT'
      Category = 2
      Hint = 'N'#7907' '#272'K YT'
      Visible = ivAlways
    end
    object dxBarButton36: TdxBarButton
      Caption = 'C'#243' '#272'K YT'
      Category = 2
      Hint = 'C'#243' '#272'K YT'
      Visible = ivAlways
    end
    object dxBarButton37: TdxBarButton
      Caption = 'N'#7907' PS YT'
      Category = 2
      Hint = 'N'#7907' PS YT'
      Visible = ivAlways
    end
    object dxBarButton38: TdxBarButton
      Caption = 'C'#243' PS YT'
      Category = 2
      Hint = 'C'#243' PS YT'
      Visible = ivAlways
    end
    object dxBarButton39: TdxBarButton
      Caption = 'N'#7907' CK YT'
      Category = 2
      Hint = 'N'#7907' CK YT'
      Visible = ivAlways
    end
    object dxBarButton40: TdxBarButton
      Caption = 'C'#243' CK YT'
      Category = 2
      Hint = 'C'#243' CK YT'
      Visible = ivAlways
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = 'Theo t'#224'i kho'#7843'n'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton41
          Visible = True
        end
        item
          Item = dxBarButton42
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton43
          Visible = True
        end
        item
          Item = dxBarButton44
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton45
          Visible = True
        end
        item
          Item = dxBarButton46
          Visible = True
        end>
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = 'Theo '#273#7889'i t'#432#7907'ng'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton47
          Visible = True
        end
        item
          Item = dxBarButton48
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton49
          Visible = True
        end
        item
          Item = dxBarButton50
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton51
          Visible = True
        end
        item
          Item = dxBarButton52
          Visible = True
        end>
    end
    object dxBarSubItem9: TdxBarSubItem
      Caption = 'Theo y'#7871'u t'#7889
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton53
          Visible = True
        end
        item
          Item = dxBarButton54
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton55
          Visible = True
        end
        item
          Item = dxBarButton56
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton57
          Visible = True
        end
        item
          Item = dxBarButton58
          Visible = True
        end>
    end
    object dxBarButton41: TdxBarButton
      Caption = 'N'#7907' '#272'K TK'
      Category = 3
      Hint = 'N'#7907' '#272'K TK'
      Visible = ivAlways
    end
    object dxBarButton42: TdxBarButton
      Caption = 'C'#243' '#272'K TK'
      Category = 3
      Hint = 'C'#243' '#272'K TK'
      Visible = ivAlways
    end
    object dxBarButton43: TdxBarButton
      Caption = 'N'#7907' PS TK'
      Category = 3
      Hint = 'N'#7907' PS TK'
      Visible = ivAlways
    end
    object dxBarButton44: TdxBarButton
      Caption = 'C'#243' PS TK'
      Category = 3
      Hint = 'C'#243' PS TK'
      Visible = ivAlways
    end
    object dxBarButton45: TdxBarButton
      Caption = 'N'#7907' CK TK'
      Category = 3
      Hint = 'N'#7907' CK TK'
      Visible = ivAlways
    end
    object dxBarButton46: TdxBarButton
      Caption = 'C'#243' CK TK'
      Category = 3
      Hint = 'C'#243' CK TK'
      Visible = ivAlways
    end
    object dxBarButton47: TdxBarButton
      Caption = 'N'#7907' '#272'K '#272'T'
      Category = 3
      Hint = 'N'#7907' '#272'K '#272'T'
      Visible = ivAlways
    end
    object dxBarButton48: TdxBarButton
      Caption = 'C'#243' '#272'K '#272'T'
      Category = 3
      Hint = 'C'#243' '#272'K '#272'T'
      Visible = ivAlways
    end
    object dxBarButton49: TdxBarButton
      Caption = 'N'#7907' PS '#272'T'
      Category = 3
      Hint = 'N'#7907' PS '#272'T'
      Visible = ivAlways
    end
    object dxBarButton50: TdxBarButton
      Caption = 'C'#243' PS '#272'T'
      Category = 3
      Hint = 'C'#243' PS '#272'T'
      Visible = ivAlways
    end
    object dxBarButton51: TdxBarButton
      Caption = 'N'#7907' CK '#272'T'
      Category = 3
      Hint = 'N'#7907' CK '#272'T'
      Visible = ivAlways
    end
    object dxBarButton52: TdxBarButton
      Caption = 'C'#243' CK '#272'T'
      Category = 3
      Hint = 'C'#243' CK '#272'T'
      Visible = ivAlways
    end
    object dxBarButton53: TdxBarButton
      Caption = 'N'#7907' '#272'K YT'
      Category = 3
      Hint = 'N'#7907' '#272'K YT'
      Visible = ivAlways
    end
    object dxBarButton54: TdxBarButton
      Caption = 'C'#243' '#272'K YT'
      Category = 3
      Hint = 'C'#243' '#272'K YT'
      Visible = ivAlways
    end
    object dxBarButton55: TdxBarButton
      Caption = 'N'#7907' PS YT'
      Category = 3
      Hint = 'N'#7907' PS YT'
      Visible = ivAlways
    end
    object dxBarButton56: TdxBarButton
      Caption = 'C'#243' PS YT'
      Category = 3
      Hint = 'C'#243' PS YT'
      Visible = ivAlways
    end
    object dxBarButton57: TdxBarButton
      Caption = 'N'#7907' CK YT'
      Category = 3
      Hint = 'N'#7907' CK YT'
      Visible = ivAlways
    end
    object dxBarButton58: TdxBarButton
      Caption = 'C'#243' CK YT'
      Category = 3
      Hint = 'C'#243' CK YT'
      Visible = ivAlways
    end
    object dxBarButton59: TdxBarButton
      Caption = 'Gi'#225' tr'#7883'(giatri)'
      Category = 0
      Hint = 'Gi'#225' tr'#7883'(giatri)'
      Visible = ivAlways
      OnClick = dxBarButton59Click
    end
    object dxBarButton60: TdxBarButton
      Caption = 'C'#7897'ng(+)'
      Category = 0
      Hint = 'C'#7897'ng(+)'
      Visible = ivAlways
      OnClick = dxBarButton60Click
    end
    object dxBarButton61: TdxBarButton
      Caption = 'Tr'#7915'(-)'
      Category = 0
      Hint = 'Tr'#7915'(-)'
      Visible = ivAlways
      OnClick = dxBarButton61Click
    end
    object dxBarButton62: TdxBarButton
      Caption = 'Nh'#226'n(*)'
      Category = 0
      Hint = 'Nh'#226'n(*)'
      Visible = ivAlways
      OnClick = dxBarButton62Click
    end
    object dxBarButton63: TdxBarButton
      Caption = 'Chia(/)'
      Category = 0
      Hint = 'Chia(/)'
      Visible = ivAlways
      OnClick = dxBarButton63Click
    end
    object dxBarButton64: TdxBarButton
      Caption = 'M'#7901' ngo'#7863'c ('
      Category = 0
      Hint = 'M'#7901' ngo'#7863'c ('
      Visible = ivAlways
      OnClick = dxBarButton64Click
    end
    object dxBarButton65: TdxBarButton
      Caption = #272#243'ng ngo'#7863'c )'
      Category = 0
      Hint = #272#243'ng ngo'#7863'c )'
      Visible = ivAlways
      OnClick = dxBarButton65Click
    end
    object dxBarSubItem13: TdxBarSubItem
      Caption = 'Kh'#225'c'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarButton60
          Visible = True
        end
        item
          Item = dxBarButton61
          Visible = True
        end
        item
          Item = dxBarButton62
          Visible = True
        end
        item
          Item = dxBarButton63
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton64
          Visible = True
        end
        item
          Item = dxBarButton65
          Visible = True
        end
        item
          BeginGroup = True
          Item = dxBarButton66
          Visible = True
        end>
    end
    object dxBarButton66: TdxBarButton
      Caption = 'Tr'#7883' tuy'#7879't '#273#7889'i(abs)'
      Category = 0
      Hint = 'Tr'#7883' tuy'#7879't '#273#7889'i(abs)'
      Visible = ivAlways
      OnClick = dxBarButton66Click
    end
  end
  object dsgReport: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptDocReport
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 76
    Top = 200
  end
  object rptDocReport: TppReport
    AutoStop = False
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'P:\Projects\ACC_OSC\Bin\Templates\Tonghop\ThuyetMinhBCTC.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    PreviewFormSettings.WindowState = wsMaximized
    Left = 40
    Top = 200
    Version = '7.0'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'K'#202'T QU'#7842' H'#7884'AT '#272#7896'NG KINH DOANH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 86784
        mmTop = 2117
        mmWidth = 110861
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'lblthoigian'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 129117
        mmTop = 10583
        mmWidth = 15610
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 794
        mmWidth = 284427
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '7.0'
          mmColumnWidth = 0
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 20638
            mmPrintPosition = 0
            object ppLine1: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 8731
              mmWidth = 273051
              BandType = 1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 19050
              mmWidth = 273051
              BandType = 1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 6350
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 276226
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              Caption = 'PH'#7846'N I: L'#195'I L'#7894
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4191
              mmLeft = 8996
              mmTop = 1852
              mmWidth = 25358
              BandType = 1
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 143934
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 189177
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 234421
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 122767
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              Caption = 'CH'#7880' TI'#202'U'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 55033
              mmTop = 12435
              mmWidth = 15081
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              Caption = 'M'#195' S'#7888
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 127794
              mmTop = 12435
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              Caption = 'K'#7922' TR'#431#7898'C'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 156369
              mmTop = 12435
              mmWidth = 19050
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              Caption = 'K'#7922' N'#192'Y'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 205846
              mmTop = 12435
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Caption = 'L'#360'Y K'#7870' T'#7914' '#272#7846'U N'#258'M'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 9525
              mmLeft = 245005
              mmTop = 9790
              mmWidth = 25400
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLine10: TppLine
              UserName = 'Line10'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 4496
              mmWidth = 273051
              BandType = 4
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 6350
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine11: TppLine
              UserName = 'Line11'
              ParentHeight = True
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 276226
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 122767
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 143934
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 189177
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 234421
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7144
        mmWidth = 284428
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '7.0'
          mmColumnWidth = 0
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 20638
            mmPrintPosition = 0
            object ppLine16: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 8731
              mmWidth = 273051
              BandType = 1
            end
            object ppLine17: TppLine
              UserName = 'Line2'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 19050
              mmWidth = 273051
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line3'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 6350
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine19: TppLine
              UserName = 'Line4'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 276226
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label3'
              Caption = 'PH'#7846'N II: T'#204'NH H'#204'NH TH'#7920'C HI'#7878'N NGH'#296'A V'#7908' V'#7898'I NH'#192' N'#431#7898'C'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4191
              mmLeft = 8996
              mmTop = 1852
              mmWidth = 99018
              BandType = 1
            end
            object ppLine20: TppLine
              UserName = 'Line5'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5821
              mmLeft = 152400
              mmTop = 14552
              mmWidth = 3175
              BandType = 1
            end
            object ppLine21: TppLine
              UserName = 'Line6'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 215900
              mmTop = 14288
              mmWidth = 3175
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line7'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 247650
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine23: TppLine
              UserName = 'Line8'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 120650
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label4'
              Caption = 'CH'#7880' TI'#202'U'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 33867
              mmTop = 12700
              mmWidth = 15081
              BandType = 1
            end
            object ppLine31: TppLine
              UserName = 'Line31'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 88900
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLine32: TppLine
              UserName = 'Line32'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11642
              mmLeft = 184150
              mmTop = 8731
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              Caption = 'S'#7889' c'#242'n ph'#7843'i n'#7897'p k'#7923' tr'#432#7899'c'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8731
              mmLeft = 93134
              mmTop = 10319
              mmWidth = 23813
              BandType = 1
            end
            object ppLine35: TppLine
              UserName = 'Line16'
              Weight = 0.750000000000000000
              mmHeight = 2381
              mmLeft = 120915
              mmTop = 14288
              mmWidth = 127000
              BandType = 1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Caption = 'S'#7889' ph'#225't sinh trong k'#7923
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4191
              mmLeft = 134409
              mmTop = 9525
              mmWidth = 35941
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Caption = 'L'#361'y k'#7871' t'#7915' '#273#7847'u n'#259'm'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4191
              mmLeft = 200290
              mmTop = 9525
              mmWidth = 31242
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              Caption = 'S'#7889' c'#242'n ph'#7843'i n'#7897'p cu'#7889'i k'#7923
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8467
              mmLeft = 251355
              mmTop = 10583
              mmWidth = 25135
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Caption = 'S'#7889' ph'#7843'i n'#7897'p'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4191
              mmLeft = 126582
              mmTop = 15346
              mmWidth = 20151
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              Caption = 'S'#7889' '#273#227' n'#7897'p'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4191
              mmLeft = 160298
              mmTop = 15346
              mmWidth = 17018
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLine24: TppLine
              UserName = 'Line10'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 6350
              mmTop = 4496
              mmWidth = 273051
              BandType = 4
            end
            object ppLine25: TppLine
              UserName = 'Line9'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 6350
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine26: TppLine
              UserName = 'Line11'
              ParentHeight = True
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 276226
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine27: TppLine
              UserName = 'Line12'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 120650
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine28: TppLine
              UserName = 'Line13'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 152400
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine29: TppLine
              UserName = 'Line14'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 184150
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine30: TppLine
              UserName = 'Line15'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 247650
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine33: TppLine
              UserName = 'Line33'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 88900
              mmTop = 0
              mmWidth = 3175
              BandType = 4
            end
            object ppLine34: TppLine
              UserName = 'Line34'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 215900
              mmTop = 0
              mmWidth = 2117
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 27781
      mmPrintPosition = 0
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'L'#7853'p bi'#7875'u'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 3704
        mmWidth = 14552
        BandType = 7
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Th'#7911' tr'#432#7903'ng '#273#417'n v'#7883
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 220134
        mmTop = 14288
        mmWidth = 31221
        BandType = 7
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = '(K'#253', h'#7885' t'#234'n)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 12700
        mmTop = 7938
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = '(K'#253', h'#7885' t'#234'n)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 67733
        mmTop = 10054
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = '(K'#253' t'#234'n, '#273#243'ng d'#7845'u)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 220134
        mmTop = 20638
        mmWidth = 28840
        BandType = 7
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Caption = 'Ng'#224'y l'#7853'p            th'#225'ng            n'#259'm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 190500
        mmTop = 3704
        mmWidth = 64558
        BandType = 7
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Caption = 'lblworkday'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 203730
        mmTop = 3704
        mmWidth = 7938
        BandType = 7
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Caption = 'lblworkyear'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 238390
        mmTop = 3704
        mmWidth = 14817
        BandType = 7
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        AutoSize = False
        Caption = 'lblworkmonth'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 221721
        mmTop = 3704
        mmWidth = 7673
        BandType = 7
      end
    end
  end
  object qryReportList: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'HIDE'
        ParamType = ptUnknown
      end>
    AutoFetchAll = True
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM F_REPORT_LIST'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID')
    EditSQL.Strings = (
      'UPDATE F_REPORT_LIST SET'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_NAME = :REPORT_NAME,'
      '   REPORT_NOTE = :REPORT_NOTE,'
      '   REPORT_PARENT = :REPORT_PARENT,'
      '   REPORT_FILETEMPLATE = :REPORT_FILETEMPLATE,'
      '   REPORT_FROM_MONTH = :REPORT_FROM_MONTH,'
      '   REPORT_PARAM_TYPE = :REPORT_PARAM_TYPE,'
      '   REPORT_TO_MONTH = :REPORT_TO_MONTH,'
      '   REPORT_FROM_QUARTER = :REPORT_FROM_QUARTER,'
      '   REPORT_TO_QUARTER = :REPORT_TO_QUARTER,'
      '   REPORT_FROM_YEAR = :REPORT_FROM_YEAR,'
      '   REPORT_TO_YEAR = :REPORT_TO_YEAR,'
      '   HIEN_THI = :HIEN_THI,'
      '   REPORT_VIEW_TYPE = :REPORT_VIEW_TYPE'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO F_REPORT_LIST('
      '   REPORT_ID, /*PK*/'
      '   REPORT_NAME,'
      '   REPORT_NOTE,'
      '   REPORT_PARENT,'
      '   REPORT_FILETEMPLATE,'
      '   REPORT_FROM_MONTH,'
      '   REPORT_PARAM_TYPE,'
      '   REPORT_TO_MONTH,'
      '   REPORT_FROM_QUARTER,'
      '   REPORT_TO_QUARTER,'
      '   REPORT_FROM_YEAR,'
      '   REPORT_TO_YEAR,'
      '   HIEN_THI,'
      '   REPORT_VIEW_TYPE)'
      'VALUES ('
      '   :REPORT_ID,'
      '   :REPORT_NAME,'
      '   :REPORT_NOTE,'
      '   :REPORT_PARENT,'
      '   :REPORT_FILETEMPLATE,'
      '   :REPORT_FROM_MONTH,'
      '   :REPORT_PARAM_TYPE,'
      '   :REPORT_TO_MONTH,'
      '   :REPORT_FROM_QUARTER,'
      '   :REPORT_TO_QUARTER,'
      '   :REPORT_FROM_YEAR,'
      '   :REPORT_TO_YEAR,'
      '   :HIEN_THI,'
      '   :REPORT_VIEW_TYPE)')
    KeyLinks.Strings = (
      'REPORT_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnError = qryReportListError
    BeforeEdit = qryReportListBeforeEdit
    BeforeDelete = qryReportListBeforeDelete
    AfterDelete = qryReportListAfterDelete
    BeforeInsert = qryReportListBeforeInsert
    BeforePost = qryReportListBeforePost
    AfterPost = qryReportListAfterPost
    OnCalcFields = qryReportListCalcFields
    OnNewRecord = qryReportListNewRecord
    SQL.Strings = (
      'SELECT REPORT_ID'
      '     , REPORT_NAME'
      '     , REPORT_NOTE'
      '     , REPORT_PARENT'
      '     , REPORT_FILETEMPLATE'
      '     , REPORT_FROM_MONTH'
      '     , REPORT_PARAM_TYPE'
      '     , REPORT_TO_MONTH'
      '     , REPORT_FROM_QUARTER'
      '     , REPORT_TO_QUARTER'
      '     , REPORT_FROM_YEAR'
      '     , REPORT_TO_YEAR'
      '     , HIEN_THI'
      '     , REPORT_VIEW_TYPE'
      'FROM F_REPORT_LIST'
      'WHERE (HIEN_THI=1) or (HIEN_THI=:HIDE)')
    FieldOptions = []
    Left = 34
    Top = 242
    object qryReportListREPORT_NAME: TWideStringField
      FieldName = 'REPORT_NAME'
      Required = True
      Size = 1533
    end
    object qryReportListREPORT_NOTE: TWideStringField
      FieldName = 'REPORT_NOTE'
      Size = 6144
    end
    object qryReportListREPORT_FILETEMPLATE: TWideStringField
      FieldName = 'REPORT_FILETEMPLATE'
      Size = 30
    end
    object qryReportListREPORT_FROM_MONTH: TSmallintField
      FieldName = 'REPORT_FROM_MONTH'
    end
    object qryReportListREPORT_PARAM_TYPE: TSmallintField
      FieldName = 'REPORT_PARAM_TYPE'
    end
    object qryReportListREPORT_TO_MONTH: TSmallintField
      FieldName = 'REPORT_TO_MONTH'
    end
    object qryReportListREPORT_FROM_QUARTER: TSmallintField
      FieldName = 'REPORT_FROM_QUARTER'
    end
    object qryReportListREPORT_TO_QUARTER: TSmallintField
      FieldName = 'REPORT_TO_QUARTER'
    end
    object qryReportListREPORT_FROM_YEAR: TSmallintField
      FieldName = 'REPORT_FROM_YEAR'
    end
    object qryReportListREPORT_TO_YEAR: TSmallintField
      FieldName = 'REPORT_TO_YEAR'
    end
    object qryReportListHIEN_THI: TSmallintField
      FieldName = 'HIEN_THI'
    end
    object qryReportListREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Required = True
      Size = 30
    end
    object qryReportListREPORT_PARENT: TWideStringField
      FieldName = 'REPORT_PARENT'
      Size = 30
    end
    object qryReportListREPORT_VIEW_TYPE: TSmallintField
      FieldName = 'REPORT_VIEW_TYPE'
    end
    object qryReportListICON: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ICON'
      Calculated = True
    end
  end
  object dsReportList: TDataSource
    DataSet = qryReportList
    Left = 34
    Top = 277
  end
  object qryItems: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM F_REPORT_ITEMS'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    EditSQL.Strings = (
      'UPDATE F_REPORT_ITEMS SET'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID = :REPORT_ITEM_ID, /*PK*/'
      '   REPORT_ITEM_NOTE = :REPORT_ITEM_NOTE,'
      '   REPORT_ITEM_NAME_ID = :REPORT_ITEM_NAME_ID,'
      '   REPORT_BOLD = :REPORT_BOLD,'
      '   REPORT_OBJECT_TYPE = :REPORT_OBJECT_TYPE'
      'WHERE'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO F_REPORT_ITEMS('
      '   REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID, /*PK*/'
      '   REPORT_ITEM_NOTE,'
      '   REPORT_ITEM_NAME_ID,'
      '   REPORT_BOLD,'
      '   REPORT_OBJECT_TYPE)'
      'VALUES ('
      '   :REPORT_ID,'
      '   :REPORT_ITEM_ID,'
      '   :REPORT_ITEM_NOTE,'
      '   :REPORT_ITEM_NAME_ID,'
      '   :REPORT_BOLD,'
      '   :REPORT_OBJECT_TYPE)')
    KeyLinks.Strings = (
      'REPORT_ID'
      'REPORT_ITEM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnError = qryItemsError
    AfterDelete = qryItemsAfterDelete
    BeforePost = qryItemsBeforePost
    AfterPost = qryItemsAfterPost
    OnNewRecord = qryItemsNewRecord
    DataSource = dsReportList
    SQL.Strings = (
      'SELECT REPORT_ID'
      '     , REPORT_ITEM_ID'
      '     , REPORT_ITEM_NOTE'
      '     , REPORT_ITEM_NAME_ID'
      '     , REPORT_BOLD'
      '     , REPORT_OBJECT_TYPE'
      'FROM F_REPORT_ITEMS'
      'WHERE REPORT_ID = :REPORT_ID'
      'ORDER BY REPORT_ITEM_ID asc')
    FieldOptions = []
    Left = 66
    Top = 242
    object qryItemsREPORT_ITEM_ID: TIntegerField
      FieldName = 'REPORT_ITEM_ID'
      Required = True
    end
    object qryItemsREPORT_ITEM_NOTE: TWideStringField
      FieldName = 'REPORT_ITEM_NOTE'
      Size = 6144
    end
    object qryItemsREPORT_ITEM_NAME_ID: TWideStringField
      FieldName = 'REPORT_ITEM_NAME_ID'
      Required = True
      Size = 126
    end
    object qryItemsREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Required = True
      Size = 30
    end
    object qryItemsREPORT_BOLD: TSmallintField
      FieldName = 'REPORT_BOLD'
    end
    object qryItemsREPORT_OBJECT_TYPE: TSmallintField
      FieldName = 'REPORT_OBJECT_TYPE'
    end
  end
  object dsItems: TDataSource
    DataSet = qryItems
    Left = 66
    Top = 277
  end
  object qryCols: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM F_REPORT_COLUMNS'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID')
    EditSQL.Strings = (
      'UPDATE F_REPORT_COLUMNS SET'
      '   REPORT_COL_ID = :REPORT_COL_ID, /*PK*/'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_COL_NAME = :REPORT_COL_NAME,'
      '   REPORT_COL_NOTE = :REPORT_COL_NOTE,'
      '   REPORT_COL_TYPE = :REPORT_COL_TYPE,'
      '   REPORT_COL_NAME_ID = :REPORT_COL_NAME_ID,'
      '   REPORT_COLOR = :REPORT_COLOR,'
      '   REPORT_WIDTH_VALUE = :REPORT_WIDTH_VALUE,'
      '   REPORT_WIDTH_DEFINE = :REPORT_WIDTH_DEFINE,'
      '   REPORT_BOLD = :REPORT_BOLD,'
      '   REPORT_VALUABLE = :REPORT_VALUABLE,'
      '   REPORT_OBJECT_TYPE = :REPORT_OBJECT_TYPE,'
      '   REPORT_OBJECT1_TYPE = :REPORT_OBJECT1_TYPE'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO F_REPORT_COLUMNS('
      '   REPORT_COL_ID, /*PK*/'
      '   REPORT_ID, /*PK*/'
      '   REPORT_COL_NAME,'
      '   REPORT_COL_NOTE,'
      '   REPORT_COL_TYPE,'
      '   REPORT_COL_NAME_ID,'
      '   REPORT_COLOR,'
      '   REPORT_WIDTH_VALUE,'
      '   REPORT_WIDTH_DEFINE,'
      '   REPORT_BOLD,'
      '   REPORT_VALUABLE,'
      '   REPORT_OBJECT_TYPE,'
      '   REPORT_OBJECT1_TYPE)'
      'VALUES ('
      '   :REPORT_COL_ID,'
      '   :REPORT_ID,'
      '   :REPORT_COL_NAME,'
      '   :REPORT_COL_NOTE,'
      '   :REPORT_COL_TYPE,'
      '   :REPORT_COL_NAME_ID,'
      '   :REPORT_COLOR,'
      '   :REPORT_WIDTH_VALUE,'
      '   :REPORT_WIDTH_DEFINE,'
      '   :REPORT_BOLD,'
      '   :REPORT_VALUABLE,'
      '   :REPORT_OBJECT_TYPE,'
      '   :REPORT_OBJECT1_TYPE)')
    KeyLinks.Strings = (
      'REPORT_ID'
      'REPORT_COL_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnError = qryColsError
    AfterDelete = qryColsAfterDelete
    BeforePost = qryColsBeforePost
    AfterPost = qryColsAfterPost
    OnNewRecord = qryColsNewRecord
    DataSource = dsReportList
    SQL.Strings = (
      'SELECT REPORT_ID'
      '     , REPORT_COL_ID'
      '     , REPORT_COL_NAME'
      '     , REPORT_COL_NOTE'
      '     , REPORT_COL_TYPE'
      '     , REPORT_COL_NAME_ID'
      '     , REPORT_COLOR'
      '     , REPORT_WIDTH_VALUE'
      '     , REPORT_WIDTH_DEFINE'
      '     , REPORT_BOLD'
      '     , REPORT_VALUABLE'
      '     , REPORT_OBJECT_TYPE'
      '     , REPORT_OBJECT1_TYPE'
      'FROM F_REPORT_COLUMNS'
      'WHERE REPORT_ID = :REPORT_ID'
      'ORDER BY REPORT_COL_ID asc')
    FieldOptions = []
    Left = 98
    Top = 242
    object qryColsREPORT_COL_ID: TIntegerField
      FieldName = 'REPORT_COL_ID'
      Required = True
    end
    object qryColsREPORT_COL_NAME: TWideStringField
      FieldName = 'REPORT_COL_NAME'
      Required = True
      Size = 1533
    end
    object qryColsREPORT_COL_NOTE: TWideStringField
      FieldName = 'REPORT_COL_NOTE'
      Size = 6144
    end
    object qryColsREPORT_COL_TYPE: TIntegerField
      FieldName = 'REPORT_COL_TYPE'
    end
    object qryColsREPORT_COL_NAME_ID: TWideStringField
      FieldName = 'REPORT_COL_NAME_ID'
      Required = True
      Size = 126
    end
    object qryColsREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Required = True
      Size = 30
    end
    object qryColsREPORT_COLOR: TIBOFloatField
      FieldName = 'REPORT_COLOR'
    end
    object qryColsREPORT_WIDTH_VALUE: TIntegerField
      FieldName = 'REPORT_WIDTH_VALUE'
    end
    object qryColsREPORT_WIDTH_DEFINE: TIntegerField
      FieldName = 'REPORT_WIDTH_DEFINE'
    end
    object qryColsREPORT_BOLD: TSmallintField
      FieldName = 'REPORT_BOLD'
    end
    object qryColsREPORT_VALUABLE: TSmallintField
      FieldName = 'REPORT_VALUABLE'
    end
    object qryColsREPORT_OBJECT_TYPE: TSmallintField
      FieldName = 'REPORT_OBJECT_TYPE'
    end
    object qryColsREPORT_OBJECT1_TYPE: TSmallintField
      FieldName = 'REPORT_OBJECT1_TYPE'
    end
  end
  object dsCols: TDataSource
    DataSet = qryCols
    Left = 98
    Top = 277
  end
  object qryTable: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM F_DEFINE_REPORT'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    EditSQL.Strings = (
      'UPDATE F_DEFINE_REPORT SET'
      '   REPORT_COL_ID = :REPORT_COL_ID, /*PK*/'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID = :REPORT_ITEM_ID, /*PK*/'
      '   REPORT_VALUE = :REPORT_VALUE,'
      '   REPORT_EXPRESSION = :REPORT_EXPRESSION,'
      '   REPORT_SQL = :REPORT_SQL,'
      '   REPORT_STRING = :REPORT_STRING,'
      '   REPORT_INDEX = :REPORT_INDEX,'
      '   REPORT_BOOLEAN = :REPORT_BOOLEAN,'
      '   REPORT_DATE = :REPORT_DATE,'
      '   REPORT_TIME = :REPORT_TIME,'
      '   REPORT_IMAGE = :REPORT_IMAGE,'
      '   REPORT_DATETIME = :REPORT_DATETIME,'
      '   REPORT_IMAGETYPE = :REPORT_IMAGETYPE,'
      '   REPORT_ISEXPRESSION = :REPORT_ISEXPRESSION,'
      '   REPORT_OTHER_CONDITION = :REPORT_OTHER_CONDITION,'
      '   REPORT_NOT_DETAIL = :REPORT_NOT_DETAIL'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO F_DEFINE_REPORT('
      '   REPORT_COL_ID, /*PK*/'
      '   REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID, /*PK*/'
      '   REPORT_VALUE,'
      '   REPORT_EXPRESSION,'
      '   REPORT_SQL,'
      '   REPORT_STRING,'
      '   REPORT_INDEX,'
      '   REPORT_BOOLEAN,'
      '   REPORT_DATE,'
      '   REPORT_TIME,'
      '   REPORT_IMAGE,'
      '   REPORT_DATETIME,'
      '   REPORT_IMAGETYPE,'
      '   REPORT_ISEXPRESSION,'
      '   REPORT_OTHER_CONDITION,'
      '   REPORT_NOT_DETAIL)'
      'VALUES ('
      '   :REPORT_COL_ID,'
      '   :REPORT_ID,'
      '   :REPORT_ITEM_ID,'
      '   :REPORT_VALUE,'
      '   :REPORT_EXPRESSION,'
      '   :REPORT_SQL,'
      '   :REPORT_STRING,'
      '   :REPORT_INDEX,'
      '   :REPORT_BOOLEAN,'
      '   :REPORT_DATE,'
      '   :REPORT_TIME,'
      '   :REPORT_IMAGE,'
      '   :REPORT_DATETIME,'
      '   :REPORT_IMAGETYPE,'
      '   :REPORT_ISEXPRESSION,'
      '   :REPORT_OTHER_CONDITION,'
      '   :REPORT_NOT_DETAIL)')
    KeyLinks.Strings = (
      'F_DEFINE_REPORT.REPORT_ID'
      'F_DEFINE_REPORT.REPORT_COL_ID'
      'F_DEFINE_REPORT.REPORT_ITEM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    BeforePost = qryTableBeforePost
    AfterPost = qryTableAfterPost
    OnNewRecord = qryTableNewRecord
    DataSource = dsReportList
    SQL.Strings = (
      'SELECT F_DEFINE_REPORT.REPORT_ID'
      '     , F_DEFINE_REPORT.REPORT_ITEM_ID'
      '     , F_DEFINE_REPORT.REPORT_COL_ID'
      '     , F_DEFINE_REPORT.REPORT_VALUE'
      '     , F_DEFINE_REPORT.REPORT_EXPRESSION'
      '     , F_DEFINE_REPORT.REPORT_SQL'
      '     , F_DEFINE_REPORT.REPORT_STRING'
      '     , F_DEFINE_REPORT.REPORT_INDEX'
      '     , F_REPORT_ITEMS.REPORT_ITEM_NAME_ID'
      '     , F_REPORT_ITEMS.REPORT_BOLD REPORT_ITEM_BOLD'
      '     , F_REPORT_COLUMNS.REPORT_COL_NAME'
      '     , F_REPORT_COLUMNS.REPORT_COL_NAME_ID'
      '     , F_REPORT_COLUMNS.REPORT_BOLD REPORT_COL_BOLD'
      '     , REPORT_BOOLEAN'
      '     , REPORT_DATE'
      '     , REPORT_TIME'
      '     , REPORT_IMAGE'
      '     , REPORT_DATETIME'
      '     , REPORT_IMAGETYPE'
      '     , REPORT_ISEXPRESSION'
      '     , REPORT_OTHER_CONDITION'
      
        '     , F_REPORT_COLUMNS.REPORT_OBJECT_TYPE REPORT_OBJECT_TYPE_CO' +
        'L'
      '     , REPORT_COL_TYPE REPORT_TYPE'
      '     , REPORT_NOT_DETAIL'
      'FROM F_DEFINE_REPORT'
      
        'JOIN F_REPORT_COLUMNS ON F_REPORT_COLUMNS.REPORT_COL_ID = F_DEFI' +
        'NE_REPORT.REPORT_COL_ID AND'
      
        '                         F_REPORT_COLUMNS.REPORT_ID = F_DEFINE_R' +
        'EPORT.REPORT_ID'
      
        'JOIN F_REPORT_ITEMS ON F_REPORT_ITEMS.REPORT_ITEM_ID = F_DEFINE_' +
        'REPORT.REPORT_ITEM_ID AND'
      
        '                       F_REPORT_ITEMS.REPORT_ID = F_DEFINE_REPOR' +
        'T.REPORT_ID'
      'WHERE F_DEFINE_REPORT.REPORT_ID = :REPORT_ID'
      
        'order by F_DEFINE_REPORT.REPORT_INDEX,F_DEFINE_REPORT.REPORT_ITE' +
        'M_ID,F_DEFINE_REPORT.REPORT_col_ID')
    FieldOptions = []
    Left = 130
    Top = 242
    object qryTableREPORT_ITEM_ID: TIntegerField
      FieldName = 'REPORT_ITEM_ID'
      Required = True
    end
    object qryTableREPORT_COL_ID: TIntegerField
      FieldName = 'REPORT_COL_ID'
      Required = True
    end
    object qryTableREPORT_VALUE: TIBOFloatField
      FieldName = 'REPORT_VALUE'
    end
    object qryTableREPORT_TYPE: TIntegerField
      FieldName = 'REPORT_TYPE'
    end
    object qryTableREPORT_STRING: TWideStringField
      FieldName = 'REPORT_STRING'
      Size = 6144
    end
    object qryTableREPORT_INDEX: TSmallintField
      FieldName = 'REPORT_INDEX'
      Required = True
    end
    object qryTableREPORT_ITEM_NAME_ID: TWideStringField
      FieldName = 'REPORT_ITEM_NAME_ID'
      Required = True
      Size = 126
    end
    object qryTableREPORT_COL_NAME: TWideStringField
      FieldName = 'REPORT_COL_NAME'
      Required = True
      Size = 1533
    end
    object qryTableREPORT_COL_NAME_ID: TWideStringField
      FieldName = 'REPORT_COL_NAME_ID'
      Required = True
      Size = 126
    end
    object qryTableREPORT_BOOLEAN: TSmallintField
      FieldName = 'REPORT_BOOLEAN'
    end
    object qryTableREPORT_DATE: TDateField
      FieldName = 'REPORT_DATE'
    end
    object qryTableREPORT_TIME: TTimeField
      FieldName = 'REPORT_TIME'
    end
    object qryTableREPORT_IMAGE: TBlobField
      FieldName = 'REPORT_IMAGE'
      Size = 8
    end
    object qryTableREPORT_DATETIME: TDateTimeField
      FieldName = 'REPORT_DATETIME'
    end
    object qryTableREPORT_IMAGETYPE: TWideStringField
      FieldName = 'REPORT_IMAGETYPE'
      Size = 15
    end
    object qryTableREPORT_ISEXPRESSION: TSmallintField
      FieldName = 'REPORT_ISEXPRESSION'
    end
    object qryTableREPORT_EXPRESSION: TWideStringField
      FieldName = 'REPORT_EXPRESSION'
      Size = 255
    end
    object qryTableREPORT_SQL: TWideStringField
      FieldName = 'REPORT_SQL'
      Size = 6144
    end
    object qryTableREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Required = True
      Size = 30
    end
    object qryTableREPORT_OTHER_CONDITION: TSmallintField
      FieldName = 'REPORT_OTHER_CONDITION'
    end
    object qryTableREPORT_ITEM_BOLD: TSmallintField
      FieldName = 'REPORT_ITEM_BOLD'
    end
    object qryTableREPORT_COL_BOLD: TSmallintField
      FieldName = 'REPORT_COL_BOLD'
    end
    object qryTableREPORT_OBJECT_TYPE_COL: TSmallintField
      FieldName = 'REPORT_OBJECT_TYPE_COL'
    end
    object qryTableREPORT_NOT_DETAIL: TSmallintField
      FieldName = 'REPORT_NOT_DETAIL'
    end
  end
  object dsTable: TDataSource
    DataSet = qryTable
    Left = 130
    Top = 277
  end
  object memReportTable: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 115
    Top = 171
  end
  object memReportTableIndex: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 147
    Top = 171
  end
  object dsReportTableIndex: TDataSource
    DataSet = memReportTableIndex
    Left = 147
    Top = 203
  end
  object dsReportTable: TDataSource
    DataSet = memReportTable
    Left = 115
    Top = 203
  end
  object popupReportList: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton4
        Visible = True
      end
      item
        BeginGroup = True
        Item = dxBarButton1
        Visible = True
      end
      item
        Item = dxBarButton2
        Visible = True
      end
      item
        Item = dxBarButton3
        Visible = True
      end>
    UseOwnFont = False
    Left = 31
    Top = 108
  end
  object memReportTableDefine: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 179
    Top = 171
  end
  object dsReportTableDefine: TDataSource
    DataSet = memReportTableDefine
    Left = 179
    Top = 203
  end
  object qryTemp: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT XA FROM AAA_A')
    FieldOptions = []
    Left = 98
    Top = 346
  end
  object expReportCalculator: TStExpression
    Left = 64
    Top = 344
  end
  object qryDebitCreditAcc: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'REPORT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REPORT_COL_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REPORT_ITEM_ID'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsAfterEdit, bsAfterInsert]
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    DeleteSQL.Strings = (
      'DELETE FROM F_REPORT_DEBIT_CREDIT_ACC'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_CREDIT_ACC = :OLD_REPORT_CREDIT_ACC AND'
      '   REPORT_DEBIT_ACC = :OLD_REPORT_DEBIT_ACC AND'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    EditSQL.Strings = (
      'UPDATE F_REPORT_DEBIT_CREDIT_ACC SET'
      '   REPORT_COL_ID = :REPORT_COL_ID, /*PK*/'
      '   REPORT_CREDIT_ACC = :REPORT_CREDIT_ACC, /*PK*/'
      '   REPORT_DEBIT_ACC = :REPORT_DEBIT_ACC, /*PK*/'
      '   REPORT_ID = :REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID = :REPORT_ITEM_ID, /*PK*/'
      '   REPORT_COEFFICIENT = :REPORT_COEFFICIENT,'
      '   REPORT_CONDITIONS_TYPE = :REPORT_CONDITIONS_TYPE'
      'WHERE'
      '   REPORT_COL_ID = :OLD_REPORT_COL_ID AND'
      '   REPORT_CREDIT_ACC = :OLD_REPORT_CREDIT_ACC AND'
      '   REPORT_DEBIT_ACC = :OLD_REPORT_DEBIT_ACC AND'
      '   REPORT_ID = :OLD_REPORT_ID AND'
      '   REPORT_ITEM_ID = :OLD_REPORT_ITEM_ID')
    IB_Connection = MainDM.cnMain
    InsertSQL.Strings = (
      'INSERT INTO F_REPORT_DEBIT_CREDIT_ACC('
      '   REPORT_COL_ID, /*PK*/'
      '   REPORT_CREDIT_ACC, /*PK*/'
      '   REPORT_DEBIT_ACC, /*PK*/'
      '   REPORT_ID, /*PK*/'
      '   REPORT_ITEM_ID, /*PK*/'
      '   REPORT_COEFFICIENT,'
      '   REPORT_CONDITIONS_TYPE)'
      'VALUES ('
      '   :REPORT_COL_ID,'
      '   :REPORT_CREDIT_ACC,'
      '   :REPORT_DEBIT_ACC,'
      '   :REPORT_ID,'
      '   :REPORT_ITEM_ID,'
      '   :REPORT_COEFFICIENT,'
      '   :REPORT_CONDITIONS_TYPE)')
    KeyLinks.Strings = (
      'REPORT_DEBIT_ACC'
      'REPORT_CREDIT_ACC'
      'REPORT_ID'
      'REPORT_COL_ID'
      'REPORT_ITEM_ID')
    KeyLinksAutoDefine = False
    Unicode = True
    RecordCountAccurate = True
    OnNewRecord = qryDebitCreditAccNewRecord
    DataSource = dsTable
    SQL.Strings = (
      
        'SELECT REPORT_ID||REPORT_COL_ID||REPORT_ITEM_ID||REPORT_DEBIT_AC' +
        'C||REPORT_CREDIT_ACC KEYFIELD'
      '     , REPORT_DEBIT_ACC'
      '     , REPORT_CREDIT_ACC'
      '     , REPORT_COEFFICIENT'
      '     , REPORT_ID'
      '     , REPORT_COL_ID'
      '     , REPORT_ITEM_ID'
      '     , REPORT_CONDITIONS_TYPE'
      'FROM F_REPORT_DEBIT_CREDIT_ACC'
      'WHERE REPORT_ID = :REPORT_ID AND'
      '      REPORT_COL_ID = :REPORT_COL_ID AND'
      '      REPORT_ITEM_ID = :REPORT_ITEM_ID')
    FieldOptions = []
    Left = 162
    Top = 242
    object qryDebitCreditAccKEYFIELD: TWideStringField
      FieldName = 'KEYFIELD'
      ReadOnly = True
      Required = True
      Size = 82
    end
    object qryDebitCreditAccREPORT_DEBIT_ACC: TWideStringField
      FieldName = 'REPORT_DEBIT_ACC'
      Required = True
      Size = 15
    end
    object qryDebitCreditAccREPORT_CREDIT_ACC: TWideStringField
      FieldName = 'REPORT_CREDIT_ACC'
      Required = True
      Size = 15
    end
    object qryDebitCreditAccREPORT_COEFFICIENT: TIBOFloatField
      FieldName = 'REPORT_COEFFICIENT'
    end
    object qryDebitCreditAccREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Required = True
      Size = 30
    end
    object qryDebitCreditAccREPORT_COL_ID: TIntegerField
      FieldName = 'REPORT_COL_ID'
      Required = True
    end
    object qryDebitCreditAccREPORT_ITEM_ID: TIntegerField
      FieldName = 'REPORT_ITEM_ID'
      Required = True
    end
    object qryDebitCreditAccREPORT_CONDITIONS_TYPE: TSmallintField
      FieldName = 'REPORT_CONDITIONS_TYPE'
    end
  end
  object dsDebitCreditAcc: TDataSource
    DataSet = qryDebitCreditAcc
    Left = 162
    Top = 277
  end
  object ImageList: TImageList
    Left = 66
    Top = 77
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000000000000000000CFA5
      9E00C28C8200C18B8000C18A7F00C1897E00C1887C00C1887C00C1877B00C186
      7900C1857800C1847700C2847500D4B3AD00000000000000000000000000C99E
      9700ECCFC400ECCCC100ECC6B900ECC6B900ECC6B900ECBFAC00ECBFAC00ECBC
      A700ECBCA700ECB7A000ECB7A000B17268000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFA3
      9C00FFF4E400FFF3E100FFF2DE00FFF1DC00FFF0D900FFEFD600FFEED400FFED
      D100FFECCF00FFEBCC00FFEBCA00C2857600000000000000000000000000B172
      6800FFF4E200FFF4E200FEF2E100FEF2E100FFF0D900FFF0D900FEEDD300FEED
      D300FFF0D900FFEACC00FFEACC00ECB7A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEA2
      9B00FFF5E700FFF5E400FFF4E100FFF1E000FFF0DC00FFEFD900FFEED800FFED
      D400FFEDD200FFECD000FFEBCD00C1857800000000000000000000000000B172
      6800FEF6EA00FEF6EA00FFF4E200FEF2E100FEF2E100FFF0D900FEF2E100FFF0
      D900FEEDD300FFF0D900FFEACC00F0C7A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEA2
      9B00FFF6EA00FFF6E900FFF5E500FFF4E400FFF0DD00FFE4C700FFDBB800FBD3
      AC004A454100FFEFD500FFEDD100C1867A00000000000000000000000000B172
      6800FEF8ED00FEF6EA00FEF6EA00FFF4E200FEFCF600FEFCF600FEFCF600FEFC
      F600FFEFE000FEEDD300FFEACC00ECBFAC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEA2
      9B00FFF9EF00FFF8ED00FFF5E800FFE3C600FFDBBA00FFDAB500B3C2DE00729B
      DD00F0EBE400FFEED800FFEED500C1877C00000000000000000000000000B172
      6800FEFCF600FCF6F200FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFA
      F400FEF8ED00FFF0D900FFF0D900ECC0AE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFA4
      9C00FFF9F200FFECDA00FFE4CB00FFE3C700FEE0C2001589E100A0BCE600CBE2
      FD00FFF2DD00FFF1DC00FFF0D900C1897D00000000000000000000000000B678
      6C00FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFAF400FEFA
      F400FEF6EA00FEF2E100FFF0D900ECC4B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5AA
      A100FFEDDE00FFEAD900FFE9D400FEE5CE00007DDD0000A9FF0065DEFF00F5EF
      E700FFF4E100FFF1DE00FFF1DD00C18A7F00000000000000000000000000BB7F
      7000FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEF6
      EA00FEF8ED00FEF8ED00FEF2E100ECC4B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9B0
      A400FFF1E500FFEFE100FEF6EF00007CDC0000A9FF002ADAFE00E4EDEB00FFF6
      E900FFF5E500FFF4E400FFF3E100C18B8100000000000000000000000000C389
      7600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFAF400FEF8
      ED00FEFAF400FEF8ED00FFF4E200ECCCC1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDB5
      A600FFFCFA00FEFCFC00007ADA0000A9FF002DDBFE00E4EFF100FFF9EE00FFF8
      ED00FFF7E900FFF6E600FFF4E500C18D8200000000000000000000000000CB94
      7C00FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFC
      F600FEFAF400FEF6EA00FFF4E200ECD2C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2BA
      AA00FEFDFE000079DA0000A9FF0031DDFE00E4F2F700FFFAF600FFF9F200FFF8
      EF00FFF8EC00FDF6EA00FDF3E300C08D8200000000000000000000000000D09B
      7F00FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFAF400FEFA
      F400FEF8ED00FEF8ED00FFF4E200E7CCC0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4BE
      AB000078D90000A8FF0035E0FE00E4F4FD00FFFEFB00FFFDF800FFFCF500FFFB
      F400FEF6ED00FCF3E300FAEFD900C18C8000000000000000000000000000C086
      7400FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFC
      F600FEF8ED00FFF4E200FFF0D900E9CFBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB000079
      D90000A7FF003CE1FE00E4F4FD00FFFFFD00FFFFFE00FFFDFD00FFFDFA00FDFA
      F200FBF5E600F9F0DB00F8EDD000C08C7F00000000000000000000000000C389
      7600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFC
      F600FEF6EA00F9F0DB00F7EACC00D8B9B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7000079D90000A8
      FF003CE0FE00E5F6FC00FFFFFF00FFFFFD00FFFFFE00FFFFFE00FEFDFA00E7CF
      B700FBF8F700F6ECE400F4E6DC00D1BDB800000000000000000000000000CB94
      7C00FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFA
      F400FEFCF600FEFAF400FEE4BB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F00024201D0000A8FF0040E3
      FE00E6F6FC00FFFFFF00FFFFFF00FFFFFD00FFFFFE00FDFEFD00FCF8F100E7CF
      B700FFFAF100F3D1A200D6C2BC0000000000000000000000000000000000D09B
      7F00FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600F9F4
      E500FEFCF600FFD5AC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000747E000908F8F00E4DFDE00E3D0
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFFFE00FDFCF800FAF5E800E9D3
      BB00F7DFC500D9C6BE000000000000000000000000000000000000000000D19C
      8200FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600FEFCF600F6EEEA00F9F2
      E100FEFCF6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002B7AFD00BCD3FD00E9E9E900FBD5
      B100FCF6F000FCF5EF00FBF4EF00FBF4EF00FAF3EE00F9F2EC00F9F0E900F0DD
      D200DCCAC000000000000000000000000000000000000000000000000000F5E0
      CC00FFE6D100F5E0CC00F5E0CC00F1E3D600F5E0CC00EBD5CA00EBD5CA00E9CF
      BE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E000E00000000000E000E00000000000
      E000E00000000000E000E00000000000E000E00000000000E000E00000000000
      E000E00000000000E000E00000000000E000E00000000000E000E00000000000
      E000E00000000000C000E000000000008000E001000000000001E00300000000
      0003E007000000000007E00F0000000000000000000000000000000000000000
      000000000000}
  end
  object qryTemp35: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT XA FROM AAA_A')
    FieldOptions = []
    Left = 138
    Top = 346
  end
  object qryUpdate: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT XA FROM AAA_A')
    FieldOptions = []
    Left = 170
    Top = 346
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = dxBarButton59
        Visible = True
      end
      item
        Item = dxBarSubItem3
        Visible = True
      end
      item
        Item = dxBarSubItem1
        Visible = True
      end
      item
        Item = dxBarSubItem2
        Visible = True
      end
      item
        Item = dxBarSubItem13
        Visible = True
      end>
    UseOwnFont = False
    Left = 67
    Top = 107
  end
  object qryTemp36: TIBOQuery
    Params = <>
    DatabaseName = 
      '127.0.0.1:F:\Project\GHD_bk\CapNhatKhachhang\CapNhat_20090924\ac' +
      'counting_2009_2010.GDB'
    IB_Connection = MainDM.cnMain
    Unicode = True
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT XA FROM AAA_A')
    FieldOptions = []
    Left = 138
    Top = 378
  end
end
