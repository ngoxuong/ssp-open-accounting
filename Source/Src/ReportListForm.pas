unit ReportListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, ElCaption, ExtCtrls, ElPanel,
  dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxDBELib,
  dxEditor, ElXPThemedControl, ElBtnCtl, ElPopBtn, ElSplit, DB, dxmdaset,
  IBODataset, ActnList, dxDBTLCl, dxGrClms, DBActns, dxDBTL, ppDB,
  ppDBPipe, ppEndUsr, ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd,
  ppReport,ppCtrls, ElPgCtl, ppPrnabl,DateUtils, dxBar,
  //EanRB,
  ToolbarFrame,
  dxBarExtItems, dxGrClEx, StBase, StExpr, IB_Components, IB_Process,
  IB_Script, ComCtrls, ImgList,ppTypes, ppStrtch, ppSubRpt, ppMemo, Menus,
  ElMenus;
type
  TfrmReportList = class(TForm)
    ElFormCaption1: TElFormCaption;
    locFormGroup_Root: TdxLayoutGroup;
    locForm: TdxLayoutControl;
    mainPanel: TElPanel;
    locFormItem2: TdxLayoutItem;
    ActionList1: TActionList;
    acCancel: TDataSetCancel;
    acDelete: TDataSetDelete;
    acInsert: TDataSetInsert;
    acPost: TDataSetPost;
    ElPopupButton1: TElPopupButton;
    locFormItem1: TdxLayoutItem;
    ElPopupButton2: TElPopupButton;
    locFormItem3: TdxLayoutItem;
    ElPopupButton3: TElPopupButton;
    locFormItem4: TdxLayoutItem;
    ElPopupButton5: TElPopupButton;
    locFormItem6: TdxLayoutItem;
    locFormGroup2: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dbtreeReportList: TdxDBTreeList;
    btnDirectPrint: TElPopupButton;
    btnDesign: TElPopupButton;
    locFormItem9: TdxLayoutItem;
    btnPreview: TElPopupButton;
    locFormItem10: TdxLayoutItem;
    locFormItem11: TdxLayoutItem;
    dsgReport: TppDesigner;
    dxCheckEdit1: TdxCheckEdit;
    rptDocReport: TppReport;
    locFormGroup1: TdxLayoutGroup;
    locFormGroup3: TdxLayoutGroup;
    qryReportList: TIBOQuery;
    dsReportList: TDataSource;
    qryItems: TIBOQuery;
    dsItems: TDataSource;
    qryReportListREPORT_NAME: TWideStringField;
    qryReportListREPORT_NOTE: TWideStringField;
    qryReportListREPORT_FILETEMPLATE: TWideStringField;
    qryCols: TIBOQuery;
    dsCols: TDataSource;
    qryColsREPORT_COL_ID: TIntegerField;
    qryColsREPORT_COL_NAME: TWideStringField;
    qryColsREPORT_COL_NOTE: TWideStringField;
    qryColsREPORT_COL_TYPE: TIntegerField;
    qryColsREPORT_COL_NAME_ID: TWideStringField;
    dbtreeReportListREPORT_NAME: TdxDBTreeListMaskColumn;
    dbtreeReportListREPORT_NOTE: TdxDBTreeListMaskColumn;
    dbtreeReportListREPORT_FILETEMPLATE: TdxDBTreeListMaskColumn;
    qryTable: TIBOQuery;
    dsTable: TDataSource;
    Splitter1: TSplitter;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    ElPageControl1: TElPageControl;
    ElTabSheet1: TElTabSheet;
    gridReportTable: TdxDBGrid;
    ElTabSheet2: TElTabSheet;
    gridReportTableIndex: TdxDBGrid;
    ElPopupButton10: TElPopupButton;
    memReportTable: TdxMemData;
    memReportTableIndex: TdxMemData;
    dsReportTableIndex: TDataSource;
    dsReportTable: TDataSource;
    popupReportList: TdxBarPopupMenu;
    ElTabSheet3: TElTabSheet;
    ElTabSheet4: TElTabSheet;
    frameToolbar2: TframeToolbar;
    dxDBGrid3: TdxDBGrid;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridImageColumn1: TdxDBGridImageColumn;
    frameToolbar3: TframeToolbar;
    dxDBGrid4: TdxDBGrid;
    dxDBGridMaskColumn5: TdxDBGridMaskColumn;
    dxDBGridMaskColumn6: TdxDBGridMaskColumn;
    dxDBGridMaskColumn8: TdxDBGridMaskColumn;
    CopyMemo: TdxMemo;
    ElTabSheet5: TElTabSheet;
    gridReportTableDefine: TdxDBGrid;
    memReportTableDefine: TdxMemData;
    dsReportTableDefine: TDataSource;
    qryItemsREPORT_ITEM_ID: TIntegerField;
    qryItemsREPORT_ITEM_NOTE: TWideStringField;
    qryItemsREPORT_ITEM_NAME_ID: TWideStringField;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    lcBieuThuc: TdxLayoutControl;
    ElPopupButton37: TElPopupButton;
    editType: TdxDBImageEdit;
    editValuesss: TdxDBCalcEdit;
    ElPopupButton12: TElPopupButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    editValue: TdxLayoutItem;
    lcButtons: TdxLayoutGroup;
    lcBieuThucGroup7: TdxLayoutGroup;
    lcBieuThucGroup6: TdxLayoutGroup;
    lcBieuThucGroup3: TdxLayoutGroup;
    lcBieuThucGroup2: TdxLayoutGroup;
    lcBieuThucGroup4: TdxLayoutGroup;
    lcBieuThucGroup5: TdxLayoutGroup;
    lcCheckButtons: TdxLayoutItem;
    lcBieuThucItem11: TdxLayoutItem;
    lcBieuThucGroup1: TdxLayoutGroup;
    qryReportListREPORT_FROM_MONTH: TSmallintField;
    qryReportListREPORT_PARAM_TYPE: TSmallintField;
    qryReportListREPORT_TO_MONTH: TSmallintField;
    qryReportListREPORT_FROM_QUARTER: TSmallintField;
    qryReportListREPORT_TO_QUARTER: TSmallintField;
    qryReportListREPORT_FROM_YEAR: TSmallintField;
    qryReportListREPORT_TO_YEAR: TSmallintField;
    dxLayoutControl2Item5: TdxLayoutItem;
    imageeditParamType: TdxDBImageEdit;
    lcFromMonth: TdxLayoutItem;
    spinFromMonth: TdxDBSpinEdit;
    lcFromQuarter: TdxLayoutItem;
    spinFromQuarter: TdxDBSpinEdit;
    lcFromYear: TdxLayoutItem;
    spinFromYear: TdxDBSpinEdit;
    lcToMonth: TdxLayoutItem;
    spinToMonth: TdxDBSpinEdit;
    lcToQuarter: TdxLayoutItem;
    spinToQuarter: TdxDBSpinEdit;
    lcToYear: TdxLayoutItem;
    spinToYear: TdxDBSpinEdit;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    acCal: TAction;
    acPreview: TAction;
    acPrint: TAction;
    acDesign: TAction;
    lcParam: TdxLayoutGroup;
    qryTemp: TIBOQuery;
    expReportCalculator: TStExpression;
    dxDBSpinEdit1: TdxDBSpinEdit;
    lcDoUuTien: TdxLayoutItem;
    lcBieuThucGroup13: TdxLayoutGroup;
    qryTableREPORT_ITEM_ID: TIntegerField;
    qryTableREPORT_COL_ID: TIntegerField;
    qryTableREPORT_VALUE: TIBOFloatField;
    qryTableREPORT_TYPE: TIntegerField;
    qryTableREPORT_STRING: TWideStringField;
    qryTableREPORT_INDEX: TSmallintField;
    qryTableREPORT_ITEM_NAME_ID: TWideStringField;
    qryTableREPORT_COL_NAME: TWideStringField;
    qryTableREPORT_COL_NAME_ID: TWideStringField;
    qryTableREPORT_BOOLEAN: TSmallintField;
    qryTableREPORT_DATE: TDateField;
    qryTableREPORT_TIME: TTimeField;
    qryTableREPORT_IMAGE: TBlobField;
    qryTableREPORT_DATETIME: TDateTimeField;
    qryTableREPORT_IMAGETYPE: TWideStringField;
    qryTableREPORT_ISEXPRESSION: TSmallintField;
    qryReportListHIEN_THI: TSmallintField;
    dbtreeReportListHIEN_THI: TdxDBTreeListCheckColumn;
    qryTableREPORT_EXPRESSION: TWideStringField;
    editSQL: TdxDBMemo;
    lcSQL: TdxLayoutItem;
    qryTableREPORT_SQL: TWideStringField;
    qryReportListREPORT_ID: TWideStringField;
    qryItemsREPORT_ID: TWideStringField;
    qryColsREPORT_ID: TWideStringField;
    qryTableREPORT_ID: TWideStringField;
    dbtreeReportListREPORT_ID: TdxDBTreeListColumn;
    qryReportListREPORT_PARENT: TWideStringField;
    qryReportListREPORT_VIEW_TYPE: TSmallintField;
    dbtreeReportListREPORT_VIEW_TYPE: TdxDBTreeListImageColumn;
    qryDebitCreditAcc: TIBOQuery;
    dsDebitCreditAcc: TDataSource;
    lcConditions: TdxLayoutItem;
    dxDBGrid1: TdxDBGrid;
    ProgressBar: TProgressBar;
    lcProgress: TdxLayoutItem;
    qryColsREPORT_COLOR: TIBOFloatField;
    qryColsREPORT_WIDTH_VALUE: TIntegerField;
    qryColsREPORT_WIDTH_DEFINE: TIntegerField;
    dxDBGrid3REPORT_WIDTH_VALUE: TdxDBGridSpinColumn;
    dxDBGrid3REPORT_WIDTH_DEFINE: TdxDBGridSpinColumn;
    dxDBGrid3Column10: TdxDBGridButtonColumn;
    dxDBGrid3REPORT_COLOR: TdxDBGridMaskColumn;
    qryColsREPORT_BOLD: TSmallintField;
    dxDBGrid3REPORT_BOLD: TdxDBGridCheckColumn;
    qryDebitCreditAccKEYFIELD: TWideStringField;
    qryDebitCreditAccREPORT_DEBIT_ACC: TWideStringField;
    qryDebitCreditAccREPORT_CREDIT_ACC: TWideStringField;
    qryDebitCreditAccREPORT_COEFFICIENT: TIBOFloatField;
    qryDebitCreditAccREPORT_ID: TWideStringField;
    qryDebitCreditAccREPORT_COL_ID: TIntegerField;
    qryDebitCreditAccREPORT_ITEM_ID: TIntegerField;
    qryDebitCreditAccREPORT_CONDITIONS_TYPE: TSmallintField;
    dxDBGrid1REPORT_CONDITIONS_TYPE: TdxDBGridImageColumn;
    qryColsREPORT_VALUABLE: TSmallintField;
    dxDBGrid3REPORT_VALUABLE: TdxDBGridCheckColumn;
    qryTableREPORT_OTHER_CONDITION: TSmallintField;
    lcOtherCondition: TdxLayoutItem;
    dxDBCalcEdit1: TdxDBImageEdit;
    ImageList: TImageList;
    qryReportListICON: TIntegerField;
    dxDBGrid1REPORT_DEBIT_ACC: TdxDBGridColumn;
    dxDBGrid1REPORT_CREDIT_ACC: TdxDBGridColumn;
    dxDBGrid1REPORT_COEFFICIENT: TdxDBGridCalcColumn;
    qryColsREPORT_OBJECT_TYPE: TSmallintField;
    dxDBGrid3REPORT_OBJECT_TYPE: TdxDBGridCalcColumn;
    qryItemsREPORT_BOLD: TSmallintField;
    dxDBGrid4REPORT_BOLD: TdxDBGridCheckColumn;
    qryTableREPORT_ITEM_BOLD: TSmallintField;
    qryTableREPORT_COL_BOLD: TSmallintField;
    qryTemp35: TIBOQuery;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel3: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine10: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel9: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel10: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel11: TppLabel;
    ppLine35: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    qryItemsREPORT_OBJECT_TYPE: TSmallintField;
    dxDBGrid4REPORT_OBJECT_TYPE: TdxDBGridMaskColumn;
    qryTableREPORT_OBJECT_TYPE_COL: TSmallintField;
    qryUpdate: TIBOQuery;
    qryTableREPORT_NOT_DETAIL: TSmallintField;
    lcBieuThucGroup23: TdxLayoutGroup;
    dxDBCheckEdit1: TdxDBCheckEdit;
    lcBieuThucItem30: TdxLayoutItem;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    editExpressionss: TdxDBButtonEdit;
    editExpression: TdxLayoutItem;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton66: TdxBarButton;
    qryTemp36: TIBOQuery;
    qryColsREPORT_OBJECT1_TYPE: TSmallintField;
    dxDBGrid3REPORT_OBJECT1_TYPE: TdxDBGridCalcColumn;
    dxLayoutControl1Item3: TdxLayoutItem;
    popBranch: TdxPopupEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInsertExecute(Sender: TObject);
    procedure gridReportListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridReportListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridReportItemsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridReportItemsMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridReportColumnMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure gridReportColumnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbtreeReportListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbtreeReportListMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbtreeReportListChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dbtreeReportListCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxCheckEdit1Change(Sender: TObject);
    procedure qryItemsNewRecord(DataSet: TDataSet);
    procedure qryColsNewRecord(DataSet: TDataSet);
    procedure qryItemsAfterPost(DataSet: TDataSet);
    procedure qryColsAfterPost(DataSet: TDataSet);
    procedure qryItemsAfterDelete(DataSet: TDataSet);
    procedure qryColsAfterDelete(DataSet: TDataSet);
    procedure qryTableAfterPost(DataSet: TDataSet);
    procedure qryTableNewRecord(DataSet: TDataSet);
    procedure qryTableBeforePost(DataSet: TDataSet);
    procedure ElPopupButton8Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGraphicAssignPictureValue(Sender: TObject;var Picture: TPicture);
    procedure DBGraphicAssignPictureDefine(Sender: TObject;var Picture: TPicture);
    procedure DBGraphicGetGraphicClassValue(Sender: TObject;
  Node: TdxTreeListNode; var GraphicClass: TGraphicClass);
    procedure DBGraphicGetGraphicClassDefine(Sender: TObject;
  Node: TdxTreeListNode; var GraphicClass: TGraphicClass);
    procedure gridReportTableIndexEdited(Sender: TObject;
      Node: TdxTreeListNode);
    procedure gridReportTableIndexCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridReportTableDefineEdited(Sender: TObject;
      Node: TdxTreeListNode);
    procedure qryReportListAfterPost(DataSet: TDataSet);
    procedure DBGridColumnValidateDefine(Sender: TObject;
      var ErrorText: WideString; var Accept: Boolean);
    procedure DBGridColumnValidateValue(Sender: TObject;
      var ErrorText: WideString; var Accept: Boolean);
    procedure editTypeChange(Sender: TObject);
    procedure gridReportTableDefinePopup(Sender: TObject;
      const EditText: WideString);
    procedure gridReportTableDefineCloseUp(Sender: TObject;
      var Text: WideString; var Accept: Boolean);
    procedure ElPopupButton39Click(Sender: TObject);
    procedure ElPopupButton36Click(Sender: TObject);
    procedure ElPopupButton9Click(Sender: TObject);
    procedure ElPopupButton11Click(Sender: TObject);
    procedure ElPopupButton31Click(Sender: TObject);
    procedure ElPopupButton41Click(Sender: TObject);
    procedure ElPopupButton40Click(Sender: TObject);
    procedure ElPopupButton32Click(Sender: TObject);
    procedure ElPopupButton42Click(Sender: TObject);
    procedure ElPopupButton45Click(Sender: TObject);
    procedure ElPopupButton35Click(Sender: TObject);
    procedure ElPopupButton33Click(Sender: TObject);
    procedure ElPopupButton43Click(Sender: TObject);
    procedure ElPopupButton44Click(Sender: TObject);
    procedure ElPopupButton34Click(Sender: TObject);
    procedure ElPopupButton47Click(Sender: TObject);
    procedure ElPopupButton53Click(Sender: TObject);
    procedure ElPopupButton46Click(Sender: TObject);
    procedure ElPopupButton48Click(Sender: TObject);
    procedure ElPopupButton52Click(Sender: TObject);
    procedure ElPopupButton49Click(Sender: TObject);
    procedure ElPopupButton51Click(Sender: TObject);
    procedure ElPopupButton50Click(Sender: TObject);
    procedure gridReportTableEdited(Sender: TObject;
      Node: TdxTreeListNode);
    procedure gridReportTableColumnCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure imageeditParamTypeChange(Sender: TObject);
    procedure gridReportTableDefineKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridReportTableDefineMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure gridReportTableMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridReportTableIndexMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dxDBGrid4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure acPreviewExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acDesignExecute(Sender: TObject);
    procedure qryReportListBeforePost(DataSet: TDataSet);
    procedure qryReportListError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure qryItemsError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure qryColsError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure qryColsBeforePost(DataSet: TDataSet);
    procedure acCalExecute(Sender: TObject);
    procedure ElPopupButton12Click(Sender: TObject);
    procedure ElPopupButton4Click(Sender: TObject);
    procedure qryReportListAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryDebitCreditAccNewRecord(DataSet: TDataSet);
    procedure dxDBGrid3Column10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid3Column10CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: WideString; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure qryReportListBeforeDelete(DataSet: TDataSet);
    procedure qryReportListBeforeEdit(DataSet: TDataSet);
    procedure qryReportListBeforeInsert(DataSet: TDataSet);
    procedure qryReportListNewRecord(DataSet: TDataSet);
    procedure gridReportTableEditing(Sender: TObject;
      Node: TdxTreeListNode; var Allow: Boolean);
    procedure qryReportListCalcFields(DataSet: TDataSet);
    procedure qryAccountNewRecord(DataSet: TDataSet);
    procedure ppDBTextPrint(Sender: TObject);
    procedure ElPopupButton14Click(Sender: TObject);
    procedure ElPopupButton13Click(Sender: TObject);
    procedure ElPopupButton15Click(Sender: TObject);
    procedure ElPopupButton16Click(Sender: TObject);
    procedure ElPopupButton7Click(Sender: TObject);
    procedure ElPopupButton6Click(Sender: TObject);
    procedure ElPopupButton22Click(Sender: TObject);
    procedure ElPopupButton21Click(Sender: TObject);
    procedure ElPopupButton20Click(Sender: TObject);
    procedure ElPopupButton19Click(Sender: TObject);
    procedure ElPopupButton18Click(Sender: TObject);
    procedure ElPopupButton17Click(Sender: TObject);
    procedure imageeditParamTypeExit(Sender: TObject);
    procedure spinFromMonthExit(Sender: TObject);
    procedure spinFromQuarterExit(Sender: TObject);
    procedure spinFromYearExit(Sender: TObject);
    procedure spinToMonthExit(Sender: TObject);
    procedure spinToQuarterExit(Sender: TObject);
    procedure spinToYearExit(Sender: TObject);
    procedure editExpressionssButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxBarButton59Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton60Click(Sender: TObject);
    procedure dxBarButton61Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure dxBarButton63Click(Sender: TObject);
    procedure dxBarButton64Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure dxBarButton66Click(Sender: TObject);
    procedure popBranchCloseUp(Sender: TObject; var Text: WideString;
      var Accept: Boolean);
  private
    { Private declarations }
    NotDetail:Boolean;
    DBPipeLines:TList;
    Changing:Boolean;// Kiem tra co dang cap nhat bang hay khong?
    TestFlag:Boolean;
    FromPeriodYear:Integer;
    FromPeriod:Integer;
    ToPeriod:Integer;
    PrevFromPeriod:Integer;
    PrevToPeriod:Integer;
    CurrentReport:Widestring;
    object_id: string;   // Ma doi tuong de tinh gia tri
    doituong_id: string; // Ma doi tuong de tinh gia tri trong bao cao doi tuong theo yeu to
    procedure PaseFromClipboard();
    function CheckOtherCondition(value:variant; condition_type:integer):variant;
    procedure ThucHienInBC(IsDirect:Boolean);
    procedure GetData;
    function Cal3(var qryTable:TIBOQuery;Aobject_id:string):variant;
    function Cal5(var qryTable:TIBOQuery;Aobject_id:string;Adoituong_id:string):variant;
    function GetParamValue(AParamName: Widestring): Variant;
    procedure SetbeforePrint();
    procedure RemoveDBPipeLine();
    procedure CreateMemHeader(var Mem: TdxMemData;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateMemValue(var Mem: TdxMemData;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateMemValue3(var Mem: TdxMemData;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateMemValue5(var Mem: TdxMemData;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateMemValue3Change(var Mem: TdxMemData;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateMemTable(var Mem: TdxMemData;qryTables:TIBOQuery);
    procedure CreateMemTable3(var Mem: TdxMemData);
    procedure CreateMemTable5(var Mem: TdxMemData);
    function CreateDBPipeLine(Name:string):TdxMemData;
    procedure CreateMemDefine(var Mem: TdxMemData;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateMemIndex(var Mem: TdxMemData;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateGridHeader(var Grid: tdxdbgrid;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateGridValue(var Grid: tdxdbgrid;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateGridValue3(var Grid: tdxdbgrid;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateGridValue5(var Grid: tdxdbgrid;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateGridValue3Change(var Grid: tdxdbgrid;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateGridDefine(var Grid: tdxdbgrid;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure CreateGridIndex(var Grid: tdxdbgrid;qryItems:TIBOQuery;qryCols:TIBOQuery);
    procedure RemoveGrid(var Grid: tdxdbgrid);
    procedure ChangeTable();
    procedure ChangeTableCal();
    procedure AddToMemValue(var Mem: TdxMemData;qryTable: TIBOQuery);
    procedure AddToMemValueChange(var Mem: TdxMemData;qryTable: TIBOQuery);
    procedure AddToMemDefine(var Mem: TdxMemData;var qryTable: TIBOQuery);
    procedure AddToMemIndex(var Mem: TdxMemData;qryTable: TIBOQuery);
    procedure SuaLaiMau;
    procedure UpdateValue(var Mem:TdxMemData;qryTable: TIBOQuery);
    procedure UpdateDefine(var Mem:TdxMemData;var qryTable: TIBOQuery);
    procedure UpdateIndex(var Mem:TdxMemData;qryTable: TIBOQuery);
    procedure StrCopyToStream(s: string);
    procedure CopyMem(var FromMem:tdxMemData);
    function nodktk(shtk:variant;tg:variant):variant;
    function codktk(shtk:variant;tg:variant):variant;
    function nocktk(shtk:variant;tg:variant):variant;
    function cocktk(shtk:variant;tg:variant):variant;
    function nopstk(shtk:variant;tg:variant):variant;
    function copstk(shtk:variant;tg:variant):variant;

    function nodkdt(shtk:variant;tg:variant):variant;
    function codkdt(shtk:variant;tg:variant):variant;
    function nockdt(shtk:variant;tg:variant):variant;
    function cockdt(shtk:variant;tg:variant):variant;
    function nopsdt(shtk:variant;tg:variant):variant;
    function copsdt(shtk:variant;tg:variant):variant;

    function nodkyt(shtk:variant;tg:variant):variant;
    function codkyt(shtk:variant;tg:variant):variant;
    function nockyt(shtk:variant;tg:variant):variant;
    function cockyt(shtk:variant;tg:variant):variant;
    function nopsyt(shtk:variant;tg:variant):variant;
    function copsyt(shtk:variant;tg:variant):variant;

    function nodkytdt(shtk:variant;tg:variant):variant;
    function codkytdt(shtk:variant;tg:variant):variant;
    function nockytdt(shtk:variant;tg:variant):variant;
    function cockytdt(shtk:variant;tg:variant):variant;
    function nopsytdt(shtk:variant;tg:variant):variant;
    function copsytdt(shtk:variant;tg:variant):variant;

    function muc(Row:Variant; Col: Variant):variant;
    function giatri(Row:Variant; Col: Variant):variant;
    function abs(value:Variant):variant;
    procedure GetParam(REPORT_ID:WideString);
    procedure InitiateExpression();
    procedure CalReport012();
    function CheckExpression(AExpression:string; ShowMessage:Boolean):boolean;
  public
    { Public declarations }
  end;

var
  frmReportList: TfrmReportList;

const TEMPFIELD:string = 'PHLQP';
implementation

uses dxTreeGridMenus,GlobalUnit,MainDataMdl, CM_PopupForm, MainForm, Functions,
  StrUtils;

{$R *.dfm}

procedure TfrmReportList.FormCreate(Sender: TObject);
begin
  SetOnFormCreate(Self,0);

  MainFrm.bbWindowList.Items.AddObject(ElFormCaption1.Texts[0].Caption, Self);
  MainFrm.ElFormCaption1.Texts[2].Caption:=' - ' + ElFormCaption1.Texts[0].Caption;
  MainFrm.MyMDIChildCount:= MainFrm.MyMDIChildCount+1;

  DBPipeLines := TList.Create;

  if CurrentUser='SSPAdmin' then
    qryReportList.ParamByName('HIDE').AsInteger:=0
  else
    qryReportList.ParamByName('HIDE').AsInteger:=1;
  qryReportList.Open;

  qryItems.Open;
  qryCols.Open;
  qryTable.Open;
  qryDebitCreditAcc.Open;

  qryTableREPORT_VALUE.DisplayFormat := TIENTE_FORMAT;

  TestFlag := False;
  Changing := False;

  ChangeTable;

//  acCal.Execute();

  ElPageControl1.ActivePage := ElTabSheet1;
  popBranch.text := MainDM.qryBranchSHORTNAME.Value;//MainDM.qryBranchFULLNAME.Value;

end;

procedure TfrmReportList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainFrm.ElFormCaption1.Texts[2].Caption:='';
  Action := caFree;

  RemoveDBPipeLine;
  DBPipeLines.Free;

  qryDebitCreditAcc.Close;
  qryTable.Close;
  qryItems.Close;
  qryCols.Close;
  qryReportList.Close;
end;

procedure TfrmReportList.acInsertExecute(Sender: TObject);
begin
  TIBOQuery(acInsert.DataSource.DataSet).Append;
end;

procedure TfrmReportList.gridReportListMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
    begin
      if TdxPopupMenuManager.Instance(True).ShowGridPopupMenu(TdxDBGrid(Sender))
        then
        Exit;
    end;
end;

procedure TfrmReportList.gridReportListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(TdxDBGrid(sender),key,shift,true);
end;

procedure TfrmReportList.gridReportItemsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(TdxDBGrid(sender),key,shift,true);
end;

procedure TfrmReportList.gridReportItemsMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if (Button = mbRight) then
   begin
     if TdxPopupMenuManager.Instance(True).ShowGridPopupMenu(TdxDBGrid(Sender))
       then
       Exit;
   end;
end;

procedure TfrmReportList.gridReportColumnMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
    begin
      if TdxPopupMenuManager.Instance(True).ShowGridPopupMenu(TdxDBGrid(Sender))
        then
        Exit;
    end;
end;

procedure TfrmReportList.gridReportColumnKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(TdxDBGrid(sender),key,shift,true);
end;

procedure TfrmReportList.dbtreeReportListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInTreeList(TdxDBTreeList(sender),key,shift);
end;

procedure TfrmReportList.dbtreeReportListMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  if TdxPopupMenuManager.Instance(FALSE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
  popupReportList.PopupFromCursorPos;
end;

procedure TfrmReportList.ThucHienInBC(IsDirect:Boolean);
begin
  rptDocReport.Template.FileName := TemplatePath+'Tonghop\'+ qryReportList.FieldByname('REPORT_FILETEMPLATE').AsString;
  if not FileExists(rptDocReport.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;

  rptDocReport.Template.Load;
  SetbeforePrint;

  if IsDirect then
    rptDocReport.DeviceType:='Printer'
  else
    rptDocReport.DeviceType:='Screen';

  rptDocReport.PreviewFormSettings.WindowState:=wsMaximized;
  rptDocReport.PreviewFormSettings.ZoomPercentage:=100;
  try
    rptDocReport.Print;
  except
    ShowMessageUnicode(210);
  end;
  rptDocReport.CloseDataPipelines;
end;

procedure TfrmReportList.GetData;
var
  Mem:TdxMemData;
  qrySubReports:TIBOQuery;
  qrySubItems:TIBOQuery;
  qrySubCols:TIBOQuery;
  qrySubTables:TIBOQuery;
	//DBPipeLine:TppDBPipeLine;
begin
  try
    qrySubReports := TIBOQuery.Create(self);
    qrySubReports.Unicode := True;
    qrySubReports.SQL.Text := ' select * ' +
                              ' from f_report_list ' +
                              ' where f_report_list.report_id = :report_id or ' +
                              ' f_report_list.report_parent = :report_id ' +
                              ' order by report_id asc';
    qrySubReports.Prepare;

    qrySubItems := TIBOQuery.Create(self);
    qrySubItems.Unicode := True;
    qrySubItems.SQL.Text := ' SELECT REPORT_ID, REPORT_ITEM_ID, REPORT_ITEM_NOTE, REPORT_ITEM_NAME_ID ' +
                            ' FROM F_REPORT_ITEMS ' +
                            ' WHERE REPORT_ID = :REPORT_ID ' +
                            ' ORDER BY REPORT_ITEM_ID ASC';
    qrySubItems.Prepare;


    qrySubCols := TIBOQuery.Create(self);
    qrySubCols.Unicode := True;
    qrySubCols.SQL.Text := ' SELECT REPORT_ID,REPORT_COL_ID, REPORT_COL_NAME, REPORT_COL_NOTE, REPORT_COL_TYPE, REPORT_COL_NAME_ID,REPORT_OBJECT_TYPE, ' +
                           ' REPORT_COLOR,REPORT_WIDTH_VALUE, REPORT_WIDTH_DEFINE, REPORT_BOLD, REPORT_VALUABLE ' +
                           ' FROM F_REPORT_COLUMNS ' +
                           ' WHERE REPORT_ID = :REPORT_ID AND REPORT_VALUABLE = 1 ' +
                           ' ORDER BY REPORT_COL_ID ASC';
    qrySubCols.Prepare;

    qrySubTables := TIBOQuery.Create(self);
    qrySubTables.Unicode := True;
    qrySubTables.SQL.Text := 'SELECT F_DEFINE_REPORT.REPORT_ID,F_DEFINE_REPORT.REPORT_ITEM_ID ' +
                             ', F_DEFINE_REPORT.REPORT_COL_ID, F_DEFINE_REPORT.REPORT_VALUE ' +
                             ', F_DEFINE_REPORT.REPORT_EXPRESSION, REPORT_COL_TYPE REPORT_TYPE ' +
                             ', F_DEFINE_REPORT.REPORT_STRING, F_DEFINE_REPORT.REPORT_INDEX ' +
                             ', F_REPORT_ITEMS.REPORT_ITEM_NAME_ID, F_REPORT_COLUMNS.REPORT_COL_NAME ' +
                             ', F_REPORT_COLUMNS.REPORT_COL_NAME_ID, REPORT_BOOLEAN ' +
                             ', REPORT_DATE, REPORT_TIME, REPORT_IMAGE, REPORT_DATETIME ' +
                             ', REPORT_IMAGETYPE, REPORT_ISEXPRESSION ' +
                             ', F_REPORT_ITEMS.REPORT_BOLD REPORT_ITEM_BOLD ' +
                             ', F_REPORT_COLUMNS.REPORT_BOLD REPORT_COL_BOLD ' +
                             ' FROM F_DEFINE_REPORT ' +
                             ' JOIN F_REPORT_COLUMNS ON F_REPORT_COLUMNS.REPORT_COL_ID = F_DEFINE_REPORT.REPORT_COL_ID AND REPORT_VALUABLE = 1 AND ' +
                             ' F_REPORT_COLUMNS.REPORT_ID = F_DEFINE_REPORT.REPORT_ID ' +
                             ' JOIN F_REPORT_ITEMS ON F_REPORT_ITEMS.REPORT_ITEM_ID = F_DEFINE_REPORT.REPORT_ITEM_ID AND ' +
                             ' F_REPORT_ITEMS.REPORT_ID = F_DEFINE_REPORT.REPORT_ID ' +
                             ' WHERE F_DEFINE_REPORT.REPORT_ID = :REPORT_ID ' +
                             ' ORDER BY  F_DEFINE_REPORT.REPORT_ITEM_ID,F_DEFINE_REPORT.REPORT_COL_ID ASC';
    qrySubTables.Prepare;

    qrySubReports.ParamByName('REPORT_ID').Value := qryReportList.FieldByName('REPORT_ID').Value;
    qrySubReports.Open;

    RemoveDBPipeLine;

    qrySubReports.First;
    while(not qrySubReports.Eof)do
    begin
      qrySubItems.ParamByName('REPORT_ID').Value := qrySubReports.FieldByName('REPORT_ID').Value;
      qrySubCols.ParamByName('REPORT_ID').Value := qrySubReports.FieldByName('REPORT_ID').Value;
      qrySubTables.ParamByName('REPORT_ID').Value := qrySubReports.FieldByName('REPORT_ID').Value;

      qrySubItems.Open;
      qrySubCols.Open;
      qrySubTables.Open;

      case qrySubReports.FieldByName('REPORT_VIEW_TYPE').AsInteger of
      0:
      begin
        Mem := CreateDBPipeLine(qrySubReports.FieldByName('REPORT_ID').AsString);
        CreateMemTable(Mem,qrySubTables);
      end;
      1:
      begin
        Mem := CreateDBPipeLine(qrySubReports.FieldByName('REPORT_ID').AsString);
        CreateMemValue(Mem,qrySubItems,qrySubCols);
        AddToMemValue(Mem,qrySubTables);
      end;
      2:
      begin
        Mem := CreateDBPipeLine(qrySubReports.FieldByName('REPORT_ID').AsString);
        CreateMemTable(Mem,qrySubTables);

        Mem := CreateDBPipeLine(qrySubReports.FieldByName('REPORT_ID').AsString + '1');
        CreateMemValue(Mem,qrySubItems,qrySubCols);
        AddToMemValue(Mem,qrySubTables);
      end;
      3:
      begin
        Mem := CreateDBPipeLine(qryReportList.FieldByName('REPORT_ID').AsString);
        InitiateExpression;
        GetParam(qryReportList.fieldbyname('REPORT_ID').AsString);
        CreateMemTable3(mem);
      end;
      5:
      begin
        Mem := CreateDBPipeLine(qryReportList.FieldByName('REPORT_ID').AsString);
        InitiateExpression;
        GetParam(qryReportList.fieldbyname('REPORT_ID').AsString);
        CreateMemTable5(mem);
      end;
      end;
      qrySubReports.Next;

      qrySubItems.Close;
      qrySubCols.Close;
      qrySubTables.Close;
    end;
    qrySubReports.Close;
  finally
    qrySubReports.Free;
    qrySubItems.Free;
    qrySubCols.Free;
    qrySubTables.Free;
  end;
end;

procedure TfrmReportList.SetbeforePrint();
var
   i:Integer;
  CompCap:string;
  CompCaption:WideString;
  ppDBText:TppDBText;
  ppDBMemo:TppDBMemo;
  ReportViewType:integer;
begin
  ReportViewType := qryReportList.FieldByName('REPORT_VIEW_TYPE').Value;
  for i:=0 to ComponentCount-1 do
  begin
   if ReportViewType in [1,3] then
    begin
      if Components[i] is TppDBText then
      begin
        ppDBText := TppDBText(Components[i]);
        if ppDBText.BandType = btDetail then
          ppDBText.OnPrint := ppDBTextPrint;
      end
      else if Components[i] is TppDBMemo then
      begin
        ppDBMemo := TppDBMemo(Components[i]);
        if ppDBMemo.BandType = btDetail then
          ppDBMemo.OnPrint := ppDBTextPrint;
      end;
    end;

    if not (Components[i] is TppLabel) then
      Continue;
    //Cho nay khac ben template
    if (Components[i] as TppLabel).Width=0 then
      (Components[i] as TppLabel).Width:=1;
    if (Components[i] as TppLabel).Height=0 then
      (Components[i] as TppLabel).Height:=0.2;

    //Lay ten va caption cua component nay
    CompCap :=LowerCase((Components[i] as TppLabel).Caption);

    if (CompCap='lblthoigian') then
    begin
      case qryReportList.FieldByName('REPORT_PARAM_TYPE').AsInteger of
      0:
      begin
        CompCaption := utf8Decode('Tháng ') + inttostr(qryReportList.FieldByName('REPORT_FROM_MONTH').asInteger);
        CompCaption := CompCaption + utf8Decode(' năm ') + inttostr(qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger);
      end;
      1:
      begin
        CompCaption := utf8Decode('Quý ') + inttostr(qryReportList.FieldByName('REPORT_FROM_QUARTER').asInteger);
        CompCaption := CompCaption + utf8Decode(' năm ') + inttostr(qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger);
      end;
      2:
        CompCaption := utf8Decode('Năm ') + inttostr(qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger);
      3:
      begin
        if (qryReportList.FieldByName('REPORT_FROM_MONTH').asInteger = qryReportList.FieldByName('REPORT_TO_MONTH').asInteger) and
           (qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger = qryReportList.FieldByName('REPORT_TO_YEAR').asInteger)
        then
        begin
          CompCaption := utf8Decode('Tháng ') + inttostr(qryReportList.FieldByName('REPORT_FROM_MONTH').asInteger);
          CompCaption := CompCaption + utf8Decode(' năm ') + inttostr(qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger);
        end
        else
        begin
          CompCaption := utf8Decode('Từ tháng ') + inttostr(qryReportList.FieldByName('REPORT_FROM_MONTH').asInteger);
          CompCaption := CompCaption + utf8Decode(' năm ') + inttostr(qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger);
          CompCaption := CompCaption + utf8Decode(' đến tháng ') + inttostr(qryReportList.FieldByName('REPORT_TO_MONTH').asInteger);
          CompCaption := CompCaption + utf8Decode(' năm ') + inttostr(qryReportList.FieldByName('REPORT_TO_YEAR').asInteger);
        end;
      end;
      4:
      begin
        if (qryReportList.FieldByName('REPORT_FROM_QUARTER').asInteger = qryReportList.FieldByName('REPORT_TO_QUARTER').asInteger) and
           (qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger = qryReportList.FieldByName('REPORT_TO_YEAR').asInteger)
        then
        begin
          CompCaption := utf8Decode('Quý ') + inttostr(qryReportList.FieldByName('REPORT_FROM_QUARTER').asInteger);
          CompCaption := CompCaption + utf8Decode(' năm ') + inttostr(qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger);
        end
        else
        begin
          CompCaption := utf8Decode('Từ quý ') + inttostr(qryReportList.FieldByName('REPORT_FROM_QUARTER').asInteger);
          CompCaption := CompCaption + utf8Decode(' năm ') + inttostr(qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger);
          CompCaption := CompCaption + utf8Decode(' đến quý ') + inttostr(qryReportList.FieldByName('REPORT_TO_QUARTER').asInteger);
          CompCaption := CompCaption + utf8Decode(' năm ') + inttostr(qryReportList.FieldByName('REPORT_TO_YEAR').asInteger);
        end;
      end;
      5:
        CompCaption := utf8Decode('Sáu tháng đầu năm ') + inttostr(qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger);
      6:
        CompCaption := utf8Decode('Sáu tháng cuối năm ') + inttostr(qryReportList.FieldByName('REPORT_FROM_YEAR').asInteger);
      end;
      (Components[i] as TppLabel).Caption := CompCaption;
    end
    else if (CompCap='lblworkday') then (Components[i] as TppLabel).Caption := FormatDateTime('dd',WorkingDate)
    else if (CompCap='lblworkmonth') then (Components[i] as TppLabel).Caption := FormatDateTime('MM',WorkingDate)
    else if (CompCap='lblworkyear') then (Components[i] as TppLabel).Caption := FormatDateTime('yyyy',WorkingDate);
  end;
end;

procedure TfrmReportList.SuaLaiMau;
begin
  rptDocReport.Template.FileName := TemplatePath+'\Tonghop\'+ qryReportList.FieldByname('REPORT_FILETEMPLATE').AsString;

  if not FileExists(rptDocReport.Template.FileName) then
  begin
    ShowMessageUnicode(22);
    exit;
  end;
  rptDocReport.Template.LoadFromFile;
  dsgReport.Report := rptDocReport;

  dsgReport.ShowModal;
  dsgReport.Report := nil;
end;
procedure TfrmReportList.dbtreeReportListChangeNode(Sender: TObject;
  OldNode, Node: TdxTreeListNode);
begin
  ChangeTable;
  if (Node.HasChildren)then
  begin
    acPreview.Enabled := True;
    acPrint.Enabled := True;
    acDesign.Enabled := True;
    lcParam.Visible := True;
  end
  else
  begin
    if(node.Parent = nil)then
    begin
      acPreview.Enabled := true;
      acPrint.Enabled := true;
      acDesign.Enabled := true;
      lcParam.Visible := True;
    end
    else
    begin
      acPreview.Enabled := False;
      acPrint.Enabled := False;
      acDesign.Enabled := False;
      lcParam.Visible := False;
    end;
  end;
end;

procedure TfrmReportList.dbtreeReportListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if(ANode.HasChildren) or (Anode.Parent = nil)then
  begin
    AFont.Style := AFont.Style + [fsBold];
    Afont.Color := clGreen;
  end
end;

procedure TfrmReportList.dxCheckEdit1Change(Sender: TObject);
begin
  if dxCheckEdit1.Checked then
   dbtreeReportList.DragMode := dmAutomatic
  else
   dbtreeReportList.DragMode := dmManual;
end;

procedure TfrmReportList.RemoveDBPipeLine();
var DBPipeLine:TppDBPipeLine;
begin
  while(DBPipeLines.Count <> 0)do
  begin
    DBPipeLine := TppDBPipeLine(DBPipeLines[0]);
    DBPipeLines.Delete(0);
    DBPipeLine.DataSource.DataSet.Free;
    DBPipeLine.DataSource.Free;
    DBPipeLine.Free;
  end;
end;

procedure TfrmReportList.qryItemsNewRecord(DataSet: TDataSet);
begin
  qryItems.FieldByName('REPORT_ID').Value := qryReportList.fieldByname('REPORT_ID').Value;
  qryItems.FieldByName('REPORT_ITEM_ID').Value := 2*(qryItems.RecordCount-1);
  qryItems.FieldByName('REPORT_BOLD').Value := 0;
end;

procedure TfrmReportList.qryColsNewRecord(DataSet: TDataSet);
begin
  qryCols.FieldByName('REPORT_ID').Value := qryReportList.fieldByname('REPORT_ID').Value;
  qryCols.FieldByName('REPORT_COL_ID').Value := 2*(qryCols.RecordCount-1);
  qryCols.FieldByName('REPORT_COL_TYPE').Value := 0;
  qryCols.FieldByName('REPORT_COLOR').Value := clWhite;
  qryCols.FieldByName('REPORT_BOLD').Value := 0;
  qryCols.FieldByName('REPORT_VALUABLE').Value := 1;
end;

procedure TfrmReportList.CreateGridValue(var Grid: tdxdbgrid; qryItems,
  qryCols: TIBOQuery);
var
  Col: TdxDBTreeListColumn;
  ColAttach: TdxDBTreeListColumn;
begin
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateGridHeader(Grid,qryItems,qryCols);

    grid.ColumnByFieldName('REPORT_ITEM_ID').Visible := False;
    grid.ColumnByFieldName('REPORT_ITEM_NAME_ID').Visible := False;
    grid.Bands[0].Visible := False;

    qryCols.First;
    while not qryCols.Eof do
    begin
      if qryCols.FieldByName('REPORT_OBJECT_TYPE').IsNull then
      begin
        case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
        0:
        begin
          col := grid.CreateColumn(TdxDBGridMaskColumn);
          col.Alignment := taLeftJustify;
          col.OnValidate := DBGridColumnValidateValue;
          col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;
        end;
        1:
        begin
          col := grid.CreateColumn(TdxDBGridCalcColumn);
          col.Alignment := taRightJustify;
          col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;

          with TdxDBGridCurrencyColumn(col) do
          begin
            DisplayFormat := TIENTE_FORMAT;
          end;

          ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
          ColAttach.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString+'TYPE';
          ColAttach.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString + 'TYPE';
          ColAttach.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
          ColAttach.BandIndex := 1;
          ColAttach.Visible := False;
        end;
        2:
        begin
          col := grid.CreateColumn(TdxDBGridDateColumn);
          col.Alignment := taCenter;
          with TdxDBGridDateColumn(col) do
          begin
          end;
        end;
        3:
        begin
          col := grid.CreateColumn(TdxDBGridTimeColumn);
          col.Alignment := taCenter;
        end;
        4:
        begin
          col := grid.CreateColumn(TdxDBGridGraphicColumn);
          col.Alignment := taCenter;

          with TdxDBGridGraphicColumn(Col) do
          begin
            OnAssignPicture := DBGraphicAssignPictureValue;
            OnGetGraphicClass := DBGraphicGetGraphicClassValue;
            CustomGraphic := True;
            Stretch := True;
          end;
        end;
        5:
        begin
          col := grid.CreateColumn(TdxDBGridCheckColumn);
          col.Alignment := taCenter;
        end;
        6:
        begin
          col := grid.CreateColumn(TdxDBGridDateColumn);
          col.Alignment := taCenter;
        end;
        end;

        col.Color := qryCols.FieldByName('REPORT_COLOR').Value;
        col.Width := qryCols.FieldByName('REPORT_WIDTH_VALUE').AsInteger;
        col.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString;
        col.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString;
        col.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
        col.HeaderAlignment := taCenter;
        col.BandIndex := 1;

        ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
        ColAttach.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString+'FORMAT';
        ColAttach.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString + 'FORMAT';
        ColAttach.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
        ColAttach.BandIndex := 1;
        ColAttach.Visible := False;
      end
      else
      begin
        {qryTemp.SQL.Text := ' select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString;
        qryTemp.Prepare;

        qryTemp.Open;
        qryTemp.First;
        while not qryTemp.Eof do
        begin
          object_id := AnsiReplaceStr(qryTemp.FieldByName('OBJECT_ID').asstring,'.','_');
          case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
          0:
          begin
            col := grid.CreateColumn(TdxDBGridMaskColumn);
            col.Alignment := taLeftJustify;
            col.OnValidate := DBGridColumnValidateValue;
          end;
          1:
          begin
            col := grid.CreateColumn(TdxDBGridCalcColumn);
            col.Alignment := taRightJustify;
            col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;

            with TdxDBGridCurrencyColumn(col) do
            begin
              DisplayFormat := TIENTE_FORMAT;
            end;

            ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
            ColAttach.Name := grid.Name + object_id + 'TYPE';
            ColAttach.FieldName := object_id + 'TYPE';
            ColAttach.Caption := qryTemp.FieldByName('OBJECT_NAME').value;
            ColAttach.BandIndex := 1;
            ColAttach.Visible := False;
          end;
          end;

          col.Color := qryCols.FieldByName('REPORT_COLOR').Value;
          col.Width := qryCols.FieldByName('REPORT_WIDTH_VALUE').AsInteger;
          col.Name := grid.Name + object_id;
          col.FieldName := object_id;
          col.Caption := qryTemp.FieldByName('OBJECT_NAME').value;
          col.HeaderAlignment := taCenter;
          col.BandIndex := 1;

          ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
          ColAttach.Name := grid.Name + object_id + 'FORMAT';
          ColAttach.FieldName := object_id + 'FORMAT';
          ColAttach.Visible := False;

          qryTemp.Next;
        end;
        qryTemp.Close;}
      end;
      qryCols.Next;
    end;
  end;
end;

procedure TfrmReportList.CreateMemValue(var Mem: TdxMemData;qryItems:TIBOQuery;qryCols:TIBOQuery);
var
  Field: TField;
  FieldAttach:TField;
begin
  begin
    CreateMemHeader(Mem,qryItems,qryCols);

    FieldAttach := TWideStringField.Create(mem);
    FieldAttach.Size := 15;
    FieldAttach.SetFieldType(ftWideString);
    FieldAttach.FieldName := 'REPORT_IMAGETYPE';
    FieldAttach.DataSet := mem;
    FieldAttach.FieldKind := fkData;

    qryCols.First;
    while not qryCols.Eof do
    begin
      if qryCols.FieldByName('REPORT_OBJECT_TYPE').IsNull then
      begin
        case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
        0:
        begin
          Field := TWideStringField.Create(mem);
          Field.Size := 6144;
          Field.SetFieldType(ftWideString);
        end;
        1:
        begin
          Field := TFloatField.Create(mem);
          Field.SetFieldType(ftFloat);
          TFloatField(Field).DisplayFormat := TIENTE_FORMAT;

          FieldAttach := TIntegerField.Create(mem);
          FieldAttach.SetFieldType(ftInteger);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString + 'TYPE';
          FieldAttach.DataSet := mem;
        end;
        2:
        begin
          Field := TDateField.Create(mem);
          Field.SetFieldType(ftDate);
        end;
        3:
        begin
          Field := TTimeField.Create(mem);
          Field.SetFieldType(ftTime);
        end;
        4:
        begin
          Field := TGraphicField.Create(mem);
          Field.SetFieldType(ftGraphic);
        end;
        5:
        begin
          Field := TBooleanField.Create(mem);
          Field.SetFieldType(ftBoolean);
        end;
        6:
        begin
          Field := TDateTimeField.Create(mem);
          Field.SetFieldType(ftDateTime);
        end
        end;

        Field.FieldKind := fkData;
        Field.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString;
        Field.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString + 'FORMAT';
        FieldAttach.DataSet := mem;
      end
      else
      begin
        qryTemp.SQL.Text := ' select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString;
        qryTemp.Prepare;

        qryTemp.Open;
        qryTemp.First;
        while not qryTemp.Eof do
        begin
          object_id := TRIM(AnsiReplaceStr(qryTemp.FieldByName('OBJECT_ID').asstring,'.','_'));
          case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
          0:
          begin
            Field := TWideStringField.Create(mem);
            Field.Size := 6144;
            Field.SetFieldType(ftWideString);
          end;
          1:
          begin
            Field := TFloatField.Create(mem);
            Field.SetFieldType(ftFloat);
            TFloatField(Field).DisplayFormat := TIENTE_FORMAT;

            FieldAttach := TIntegerField.Create(mem);
            FieldAttach.SetFieldType(ftInteger);
            FieldAttach.FieldKind := fkData;
            FieldAttach.FieldName := object_id + 'TYPE';
            FieldAttach.DataSet := mem;
          end;
          end;

          Field.FieldKind := fkData;
          Field.FieldName := object_id;
          Field.DataSet := mem;

          FieldAttach := TIntegerField.Create(mem);
          FieldAttach.SetFieldType(ftInteger);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := object_id + 'FORMAT';
          FieldAttach.DataSet := mem;

          qryTemp.Next;
        end;
        qryTemp.Close;
      end;

      qryCols.Next;
    end;
  end;
end;

procedure TfrmReportList.AddToMemValueChange(var Mem: TdxMemData;
  qryTable: TIBOQuery);
var sum,temp:variant;
   valueformat,valuetype:variant;
   l_object_id, l_object_name:variant;
begin
  Mem.DisableControls;
  qryTable.DisableControls;

  if not qryTable.Active then qryTable.Open;

  Mem.Close;
  Mem.Open;

  case qryReportList.FieldByName('REPORT_VIEW_TYPE').AsInteger of
  0,1,2:
  begin
    qryTable.First;
    while not qryTable.Eof do
    begin
      if Mem.Locate('REPORT_ITEM_ID', qryTable.fieldByname('REPORT_ITEM_ID').Value, [])then
      begin
        Mem.Edit;
        UpdateValue(Mem, qryTable);
      end
      else
      begin
        Mem.Append;
        Mem.FieldByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').value;
        Mem.FieldByName('REPORT_ITEM_NAME_ID').Value := qryTable.fieldbyname('REPORT_ITEM_NAME_ID').value;

        UpdateValue(Mem, qryTable);
      end;
      Mem.Post;
      qryTable.Next;
    end;
  end;
  3,5:
  begin
    qryTable.first;
    while not qryTable.Eof do
    begin
    	if Mem.Locate('REPORT_ITEM_ID',qryTable.fieldByname('REPORT_ITEM_ID').Value,[])then
      begin
        Mem.Edit;
        if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
        begin
        	updatevalue(Mem,qryTable);
        end
      end
      else
      begin
				Mem.Append;
        Mem.FieldByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').value;
        Mem.FieldByName('REPORT_ITEM_NAME_ID').Value := qryTable.fieldbyname('REPORT_ITEM_NAME_ID').value;

        if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
        begin
 	       UpdateValue(Mem, qryTable);
        end
      end;
    	qryTable.Next;
    end;
  end;
  4:
  begin
  end;
  end;

  qryTable.EnableControls;
  Mem.EnableControls;
end;
// addtomemvalue
procedure TfrmReportList.AddToMemValue(var Mem: TdxMemData;
  qryTable: TIBOQuery);
var sum,temp:variant;
   valueformat,valuetype:variant;
   l_object_id, l_object_name:variant;
begin
  Mem.DisableControls;
  qryTable.DisableControls;

  if not qryTable.Active then qryTable.Open;

  Mem.Close;
  Mem.Open;

  case qryReportList.FieldByName('REPORT_VIEW_TYPE').AsInteger of
  0,1,2:
  begin
    qryTable.First;
    while not qryTable.Eof do
    begin
      if Mem.Locate('REPORT_ITEM_ID', qryTable.fieldByname('REPORT_ITEM_ID').Value, [])then
      begin
        Mem.Edit;
        UpdateValue(Mem, qryTable);
      end
      else
      begin
        Mem.Append;
        Mem.FieldByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').value;
        Mem.FieldByName('REPORT_ITEM_NAME_ID').Value := qryTable.fieldbyname('REPORT_ITEM_NAME_ID').value;

        UpdateValue(Mem, qryTable);
      end;
      Mem.Post;
      qryTable.Next;
    end;
  end;
  3:
  begin
    qryCols.First;
    while not qryCols.Eof do
    begin
      if qryCols.FieldByName('REPORT_OBJECT_TYPE').IsNull then
        qryCols.Next
      else
        break;
    end;
    //Thinh sua
    //qryTemp35.SQL.Text := 'select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString + ' order by object_id';
    qryTemp35.SQL.Text := 'select distinct(object_id),object_name '+
        ' from IS_DT_YT_YT2_PS('+IntToStr(FromPeriod)+','+IntToStr(ToPeriod)+','+ qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString+')'+
        ' join object_list on ID=object_id and OTYPE = otype_id order by DEBT_LEN,object_id';

    qryTemp35.Prepare;
    qryTemp35.Open;

    qryTemp35.First;

    // Voi moi doi tuong
    while not qryTemp35.Eof do
    begin
      qryTable.First;
      // voi moi o
      while not qryTable.Eof do
      begin
        l_object_id := TRIM(qryTemp35.Fieldbyname('OBJECT_ID').AsString);
        l_object_name := qryTemp35.Fieldbyname('OBJECT_NAME').Value;
        // neu dong nay chi tieu nay da co thi update
        if Mem.Locate('REPORT_ITEM_ID',qryTable.fieldByname('REPORT_ITEM_ID').Value,[])then
        begin
          Mem.Edit;

          if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
          begin
            updatevalue(Mem,qryTable);
          end
          else
          begin
            NotDetail := false;
            temp := cal3(qryTable,l_object_id);

            object_id := TRIM(AnsiReplaceStr(l_object_id,'.','_'));

//            Mem.FieldByName('NOTDETAIL').Value := NotDetail;
            if notdetail then
            begin
              Mem.FieldByName(object_id).Value := 0;
              Mem.FieldByName(TEMPFIELD).Value := temp;
            end
            else
            begin
              Mem.FieldByName(object_id).Value := temp;
              Mem.FieldByName(TEMPFIELD).Value := 0;
            end;

            valuetype := qryTable.FieldByName('REPORT_ISEXPRESSION').value;
            valueformat := qryTable.FieldByName('REPORT_COL_BOLD').value + qryTable.FieldByName('REPORT_ITEM_BOLD').value*10;

            Mem.FieldByName(object_id + 'TYPE').Value := valuetype;
            Mem.FieldByName(object_id + 'FORMAT').Value := valueformat;


            Mem.FieldByName(object_id+'NAME').Value := l_object_name;
            Mem.FieldByName(object_id + 'NAMETYPE').Value := valuetype;
            Mem.FieldByName(object_id + 'NAMEFORMAT').Value := valueformat;

            Mem.FieldByName('TONGCONGNAME').Value := UTF8Decode('TỔNG CỘNG');
            Mem.FieldByName('TONGCONGNAMEFORMAT').Value := valueformat;
            Mem.FieldByName('TONGCONG').Value := temp;
            Mem.FieldByName('TONGCONGTYPE').Value := valuetype;
            Mem.FieldByName('TONGCONGFORMAT').Value := valueformat;
          end;
        end
        else // neu dong chi tieu nay chua co thi them vao
        begin
          Mem.Append;
          Mem.FieldByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').value;
          Mem.FieldByName('REPORT_ITEM_NAME_ID').Value := qryTable.fieldbyname('REPORT_ITEM_NAME_ID').value;

          if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
          begin
            UpdateValue(Mem, qryTable);
          end
          else
          begin
            notdetail := false;
            temp := cal3(qryTable,l_object_id);

            object_id := TRIM(AnsiReplaceStr(l_object_id,'.','_'));

//            Mem.FieldByName('NOTDETAIL').Value := NotDetail;

            if notdetail then
            begin
              Mem.FieldByName(object_id).Value := 0;
              Mem.FieldByName(TEMPFIELD).Value := temp;
            end
            else
            begin
              Mem.FieldByName(object_id).Value := temp;
              Mem.FieldByName(TEMPFIELD).Value := 0;
            end;

            valuetype := qryTable.FieldByName('REPORT_ISEXPRESSION').value;
            valueformat := qryTable.FieldByName('REPORT_COL_BOLD').value + qryTable.FieldByName('REPORT_ITEM_BOLD').value*10;

            Mem.FieldByName(object_id + 'TYPE').Value := valuetype;
            Mem.FieldByName(object_id + 'FORMAT').Value := valueformat;


            Mem.FieldByName(object_id+'NAME').Value := l_object_name;
            Mem.FieldByName(object_id + 'NAMETYPE').Value := valuetype;
            Mem.FieldByName(object_id + 'NAMEFORMAT').Value := valueformat;

            Mem.FieldByName('TONGCONGNAME').Value := UTF8Decode('TỔNG CỘNG');
            Mem.FieldByName('TONGCONGNAMEFORMAT').Value := valueformat;
            Mem.FieldByName('TONGCONG').Value := temp;
            Mem.FieldByName('TONGCONGTYPE').Value := valuetype;
            Mem.FieldByName('TONGCONGFORMAT').Value := valueformat;
          end;
        end;

        Mem.Post;
        qryTable.Next;
      end;

      qryTemp35.Next;
    end;

    qryTemp35.Close;

    // Field phu
    qryTable.First;
    while not qryTable.Eof do
    begin
      if Mem.Locate('REPORT_ITEM_ID',qryTable.fieldByname('REPORT_ITEM_ID').Value,[])then
      begin
        Mem.Edit;

        if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
        begin
          updatevalue(Mem,qryTable);
        end
        else
        begin
          NotDetail := false;
          object_id := TEMPFIELD;
          temp := cal3(qryTable,object_id);
          Mem.Edit;

         if (qryTable.FieldByName('REPORT_NOT_DETAIL').AsInteger = 1) or (notdetail) then
            Mem.FieldByName(object_id).Value := temp
          else
            Mem.FieldByName(object_id).Value := 0;

          valuetype := qryTable.FieldByName('REPORT_ISEXPRESSION').value;
          valueformat := qryTable.FieldByName('REPORT_COL_BOLD').value + qryTable.FieldByName('REPORT_ITEM_BOLD').value*10;

          Mem.FieldByName(object_id + 'TYPE').Value := valuetype;
          Mem.FieldByName(object_id + 'FORMAT').Value := valueformat;


          Mem.FieldByName(object_id+'NAME').Value := object_id;
          Mem.FieldByName(object_id + 'NAMETYPE').Value := valuetype;
          Mem.FieldByName(object_id + 'NAMEFORMAT').Value := valueformat;

          Mem.FieldByName('TONGCONGNAME').Value := UTF8Decode('TỔNG CỘNG');
          Mem.FieldByName('TONGCONGNAMEFORMAT').Value := valueformat;
          Mem.FieldByName('TONGCONG').Value := temp;
          Mem.FieldByName('TONGCONGTYPE').Value := valuetype;
          Mem.FieldByName('TONGCONGFORMAT').Value := valueformat;
        end;
      end
      else
      begin
        Mem.Append;
        Mem.FieldByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').value;
        Mem.FieldByName('REPORT_ITEM_NAME_ID').Value := qryTable.fieldbyname('REPORT_ITEM_NAME_ID').value;

        if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
        begin
          UpdateValue(Mem, qryTable);
        end
        else
        begin
          notdetail := false;
          object_id := TEMPFIELD;
          temp := cal3(qryTable,object_id);
          Mem.Edit;

          if (qryTable.FieldByName('REPORT_NOT_DETAIL').AsInteger = 1) or (notdetail) then
            Mem.FieldByName(object_id).Value := temp
          else
            Mem.FieldByName(object_id).Value := 0;

          valuetype := qryTable.FieldByName('REPORT_ISEXPRESSION').value;
          valueformat := qryTable.FieldByName('REPORT_COL_BOLD').value + qryTable.FieldByName('REPORT_ITEM_BOLD').value*10;

          Mem.FieldByName(object_id + 'TYPE').Value := valuetype;
          Mem.FieldByName(object_id + 'FORMAT').Value := valueformat;


          Mem.FieldByName(object_id+'NAME').Value := object_id;
          Mem.FieldByName(object_id + 'NAMETYPE').Value := valuetype;
          Mem.FieldByName(object_id + 'NAMEFORMAT').Value := valueformat;

          Mem.FieldByName('TONGCONGNAME').Value := UTF8Decode('TỔNG CỘNG');
          Mem.FieldByName('TONGCONGNAMEFORMAT').Value := valueformat;
          Mem.FieldByName('TONGCONG').Value := temp;
          Mem.FieldByName('TONGCONGTYPE').Value := valuetype;
          Mem.FieldByName('TONGCONGFORMAT').Value := valueformat;
        end;
      end;

      Mem.Post;
      qryTable.Next;
    end;
    // Het field phu
  end;
  5:
  begin
    qryCols.First;
    while not qryCols.Eof do
    begin
      if qryCols.FieldByName('REPORT_OBJECT_TYPE').IsNull then
        qryCols.Next
      else
        break;
    end;

	qryTemp36.SQL.Text := 'select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT1_TYPE').AsString + ' order by object_id';
  qryTemp36.Prepare;
  qryTemp36.Open;
  qryTemp36.First;
  // Voi moi doi tuong
  while not qryTemp36.Eof do
  begin
    doituong_id := qryTemp36.Fieldbyname('OBJECT_ID').AsString;
    qryTemp35.SQL.Text := 'select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString + ' order by object_id';
    qryTemp35.Prepare;
    qryTemp35.Open;
    qryTemp35.First;
    // Voi moi yeu to
    while not qryTemp35.Eof do
    begin
      qryTable.First;
      // voi moi o
      while not qryTable.Eof do
      begin
        l_object_id := TRIM(qryTemp35.Fieldbyname('OBJECT_ID').AsString);
        l_object_name := qryTemp35.Fieldbyname('OBJECT_NAME').Value;
        // neu dong nay chi tieu nay da co thi update
        if Mem.Locate('REPORT_ITEM_ID',qryTable.fieldByname('REPORT_ITEM_ID').Value,[])then
        begin
          Mem.Edit;

          if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
          begin
            updatevalue(Mem,qryTable);
          end
          else
          begin
            NotDetail := false;
            temp := cal5(qryTable,l_object_id,doituong_id);

            object_id := TRIM(AnsiReplaceStr(l_object_id,'.','_'));

//            Mem.FieldByName('NOTDETAIL').Value := NotDetail;
            if notdetail then
            begin
              Mem.FieldByName(object_id+'_'+doituong_id).Value := 0;
              Mem.FieldByName(TEMPFIELD+'_'+doituong_id).Value := temp;
            end
            else
            begin
              Mem.FieldByName(object_id+'_'+doituong_id).Value := temp;
              Mem.FieldByName(TEMPFIELD+'_'+doituong_id).Value := 0;
            end;

            valuetype := qryTable.FieldByName('REPORT_ISEXPRESSION').value;
            valueformat := qryTable.FieldByName('REPORT_COL_BOLD').value + qryTable.FieldByName('REPORT_ITEM_BOLD').value*10;

            Mem.FieldByName(object_id+'_'+doituong_id + 'TYPE').Value := valuetype;
            Mem.FieldByName(object_id+'_'+doituong_id + 'FORMAT').Value := valueformat;


            Mem.FieldByName(object_id+'_'+doituong_id+'NAME').Value := l_object_name;
            Mem.FieldByName(object_id+'_'+doituong_id + 'NAMETYPE').Value := valuetype;
            Mem.FieldByName(object_id+'_'+doituong_id + 'NAMEFORMAT').Value := valueformat;

            Mem.FieldByName(object_id+'_'+doituong_id + 'NAMEDOITUONG').Value := qryTemp36.fieldbyname('OBJECT_NAME').value;

            Mem.FieldByName('TONGCONGNAME').Value := UTF8Decode('TỔNG CỘNG');
            Mem.FieldByName('TONGCONGNAMEFORMAT').Value := valueformat;
            Mem.FieldByName('TONGCONG').Value := temp;
            Mem.FieldByName('TONGCONGTYPE').Value := valuetype;
            Mem.FieldByName('TONGCONGFORMAT').Value := valueformat;
          end;
        end
        else // neu dong chi tieu nay chua co thi them vao
        begin
          Mem.Append;
          Mem.FieldByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').value;
          Mem.FieldByName('REPORT_ITEM_NAME_ID').Value := qryTable.fieldbyname('REPORT_ITEM_NAME_ID').value;

          if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
          begin
            UpdateValue(Mem, qryTable);
          end
          else
          begin
            notdetail := false;
            temp := cal5(qryTable,l_object_id,doituong_id);

            object_id := TRIM(AnsiReplaceStr(l_object_id,'.','_'));

//            Mem.FieldByName('NOTDETAIL').Value := NotDetail;

            if notdetail then
            begin
              Mem.FieldByName(object_id+'_'+doituong_id).Value := 0;
              Mem.FieldByName(TEMPFIELD+'_'+doituong_id).Value := temp;
            end
            else
            begin
              Mem.FieldByName(object_id+'_'+doituong_id).Value := temp;
              Mem.FieldByName(TEMPFIELD+'_'+doituong_id).Value := 0;
            end;

            valuetype := qryTable.FieldByName('REPORT_ISEXPRESSION').value;
            valueformat := qryTable.FieldByName('REPORT_COL_BOLD').value + qryTable.FieldByName('REPORT_ITEM_BOLD').value*10;

            Mem.FieldByName(object_id+'_'+doituong_id + 'TYPE').Value := valuetype;
            Mem.FieldByName(object_id+'_'+doituong_id + 'FORMAT').Value := valueformat;


            Mem.FieldByName(object_id+'_'+doituong_id+'NAME').Value := l_object_name;
            Mem.FieldByName(object_id+'_'+doituong_id + 'NAMETYPE').Value := valuetype;
            Mem.FieldByName(object_id+'_'+doituong_id + 'NAMEFORMAT').Value := valueformat;

            Mem.FieldByName(object_id+'_'+doituong_id + 'NAMEDOITUONG').Value := qryTemp36.fieldbyname('OBJECT_NAME').value;

            Mem.FieldByName('TONGCONGNAME').Value := UTF8Decode('TỔNG CỘNG');
            Mem.FieldByName('TONGCONGNAMEFORMAT').Value := valueformat;
            Mem.FieldByName('TONGCONG').Value := temp;
            Mem.FieldByName('TONGCONGTYPE').Value := valuetype;
            Mem.FieldByName('TONGCONGFORMAT').Value := valueformat;
          end;
        end;

        Mem.Post;
        qryTable.Next;
      end;

      qryTemp35.Next;
    end;

    qryTemp35.Close;

    // Field phu
    qryTable.First;
    while not qryTable.Eof do
    begin
      if Mem.Locate('REPORT_ITEM_ID',qryTable.fieldByname('REPORT_ITEM_ID').Value,[])then
      begin
        Mem.Edit;

        if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
        begin
          updatevalue(Mem,qryTable);
        end
        else
        begin
          NotDetail := false;
          object_id := TEMPFIELD;
          temp := cal5(qryTable,object_id,doituong_id);
          Mem.Edit;

         if (qryTable.FieldByName('REPORT_NOT_DETAIL').AsInteger = 1) or (notdetail) then
            Mem.FieldByName(object_id+'_'+doituong_id).Value := temp
          else
            Mem.FieldByName(object_id+'_'+doituong_id).Value := 0;

          valuetype := qryTable.FieldByName('REPORT_ISEXPRESSION').value;
          valueformat := qryTable.FieldByName('REPORT_COL_BOLD').value + qryTable.FieldByName('REPORT_ITEM_BOLD').value*10;

          Mem.FieldByName(object_id+'_'+doituong_id + 'TYPE').Value := valuetype;
          Mem.FieldByName(object_id+'_'+doituong_id + 'FORMAT').Value := valueformat;


          Mem.FieldByName(object_id+'_'+doituong_id+'NAME').Value := object_id;
          Mem.FieldByName(object_id+'_'+doituong_id + 'NAMETYPE').Value := valuetype;
          Mem.FieldByName(object_id+'_'+doituong_id + 'NAMEFORMAT').Value := valueformat;

          //Mem.FieldByName(object_id+'_'+doituong_id + 'NAMEDOITUONG').Value := qryTemp36.fieldbyname('OBJECT_NAME').value;

          Mem.FieldByName('TONGCONGNAME').Value := UTF8Decode('TỔNG CỘNG');
          Mem.FieldByName('TONGCONGNAMEFORMAT').Value := valueformat;
          Mem.FieldByName('TONGCONG').Value := temp;
          Mem.FieldByName('TONGCONGTYPE').Value := valuetype;
          Mem.FieldByName('TONGCONGFORMAT').Value := valueformat;
        end;
      end
      else
      begin
        Mem.Append;
        Mem.FieldByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').value;
        Mem.FieldByName('REPORT_ITEM_NAME_ID').Value := qryTable.fieldbyname('REPORT_ITEM_NAME_ID').value;

        if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
        begin
          UpdateValue(Mem, qryTable);
        end
        else
        begin
          notdetail := false;
          object_id := TEMPFIELD;
          temp := cal5(qryTable,object_id,doituong_id);
          Mem.Edit;

          if (qryTable.FieldByName('REPORT_NOT_DETAIL').AsInteger = 1) or (notdetail) then
            Mem.FieldByName(object_id+'_'+doituong_id).Value := temp
          else
            Mem.FieldByName(object_id+'_'+doituong_id).Value := 0;

          valuetype := qryTable.FieldByName('REPORT_ISEXPRESSION').value;
          valueformat := qryTable.FieldByName('REPORT_COL_BOLD').value + qryTable.FieldByName('REPORT_ITEM_BOLD').value*10;

          Mem.FieldByName(object_id+'_'+doituong_id + 'TYPE').Value := valuetype;
          Mem.FieldByName(object_id+'_'+doituong_id + 'FORMAT').Value := valueformat;


          Mem.FieldByName(object_id+'_'+doituong_id+'NAME').Value := object_id;
          Mem.FieldByName(object_id+'_'+doituong_id + 'NAMETYPE').Value := valuetype;
          Mem.FieldByName(object_id+'_'+doituong_id + 'NAMEFORMAT').Value := valueformat;

          //Mem.FieldByName(object_id+'_'+doituong_id + 'NAMEDOITUONG').Value := qryTemp36.fieldbyname('OBJECT_NAME').value;

          Mem.FieldByName('TONGCONGNAME').Value := UTF8Decode('TỔNG CỘNG');
          Mem.FieldByName('TONGCONGNAMEFORMAT').Value := valueformat;
          Mem.FieldByName('TONGCONG').Value := temp;
          Mem.FieldByName('TONGCONGTYPE').Value := valuetype;
          Mem.FieldByName('TONGCONGFORMAT').Value := valueformat;
        end;
      end;

      Mem.Post;
      qryTable.Next;
    end;
    // Het field phu
  	qryTemp36.Next;
	end;
  end;
  4:
  begin
  end;
  end;

  qryTable.EnableControls;
  Mem.EnableControls;
end;
procedure TfrmReportList.RemoveGrid(var Grid: tdxdbgrid);
begin
  while Grid.ColumnCount <> 0 do
    Grid.Columns[0].Free;
end;

procedure TfrmReportList.ChangeTable;
var
	i:integer;
begin
	for i:=2 to gridReportTable.Bands.Count-1 do
		gridReportTable.Bands.Delete(2);
  if qryReportList.FieldByName('REPORT_VIEW_TYPE').AsInteger = 5 then
  	gridReportTable.ShowBands := true
  else
		gridReportTable.ShowBands := false;

  if Changing then exit;

  Screen.Cursor := crHourGlass;

  Changing := True;

  qryReportList.DisableControls;
  qryItems.DisableControls;
  qryCols.DisableControls;
  qryTable.DisableControls;

  gridReportTable.DataSource := nil;
  RemoveGrid(gridReportTable);

  case qryReportList.FieldByName('REPORT_VIEW_TYPE').AsInteger of
  0,1,2:
  begin
    CreateGridValue(gridReportTable,qryItems,qryCols);

    memReportTable.DisableControls;

    memReportTable.Free;
    memReportTable := TdxMemData.Create(Self);
    memReportTable.Name := 'memReportTable';
    dsReportTable.DataSet := memReportTable;

    if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
    begin
      CreateMemValue(memReportTable,qryItems,qryCols);

      qryTable.Close;
      qryTable.Open;

      AddToMemValue(memReportTable,qryTable);
    end;
  end;
  3: // no ngang
  begin
    qryTable.Close;
    qryTable.Open;

    memReportTable.DisableControls;

    memReportTable.Free;
    memReportTable := TdxMemData.Create(Self);

    //InitiateExpression;
    CurrentReport := qryReportList.fieldbyname('REPORT_ID').AsString;
    //GetParam(qryReportList.fieldbyname('REPORT_ID').AsString);
    CreateMemValue3Change(memReportTable,qryItems,qryCols);
    AddToMemValueChange(memReportTable,qryTable);

    CreateGridValue3Change(gridReportTable,qryItems,qryCols);

    //CopyMem(memReportTable);
    memReportTable.Name := 'memReportTable';
    dsReportTable.DataSet := memReportTable;
  end;
  5: // no ngang doi tuong - yeu to
  begin
    qryTable.Close;
    qryTable.Open;

    memReportTable.DisableControls;

    memReportTable.Free;
    memReportTable := TdxMemData.Create(Self);

    //InitiateExpression;
    CurrentReport := qryReportList.fieldbyname('REPORT_ID').AsString;
    //GetParam(qryReportList.fieldbyname('REPORT_ID').AsString);
    CreateMemValue3Change(memReportTable,qryItems,qryCols);
    AddToMemValueChange(memReportTable,qryTable);

    CreateGridValue3Change(gridReportTable,qryItems,qryCols);

    //CopyMem(memReportTable);
    memReportTable.Name := 'memReportTable';
    dsReportTable.DataSet := memReportTable;
  end;
  4:
  begin
    CreateGridValue(gridReportTable,qryItems,qryCols);

    memReportTable.DisableControls;

    memReportTable.Free;
    memReportTable := TdxMemData.Create(Self);
    memReportTable.Name := 'memReportTable';
    dsReportTable.DataSet := memReportTable;

    CreateMemValue(memReportTable,qryItems,qryCols);

    qryTable.Close;
    qryTable.Open;
  end;
  end;

  if CurrentUser = 'SSPAdmin' then
  begin
    memReportTableDefine.DisableControls;
    memReportTableIndex.DisableControls;

    gridReportTableDefine.DataSource := nil;
    RemoveGrid(gridReportTableDefine);
    CreateGridDefine(gridReportTableDefine,qryItems,qryCols);

    gridReportTableIndex.DataSource := nil;
    RemoveGrid(gridReportTableIndex);
    CreateGridIndex(gridReportTableIndex,qryItems,qryCols);

    memReportTableDefine.Free;
    memReportTableDefine := TdxMemData.Create(Self);
    memReportTableDefine.Name := 'memReportTableDefine';
    dsReportTableDefine.DataSet := memReportTableDefine;

    memReportTableIndex.Free;
    memReportTableIndex := TdxMemData.Create(Self);
    memReportTableIndex.Name := 'memReportTableIndex';
    dsReportTableIndex.DataSet := memReportTableIndex;

    if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
    begin
      CreateMemDefine(memReportTableDefine,qryItems,qryCols);
      CreateMemIndex(memReportTableIndex,qryItems,qryCols);

      AddToMemDefine(memReportTableDefine,qryTable);
      AddToMemIndex(memReportTableIndex,qryTable);

      gridReportTableDefine.DataSource := dsReportTableDefine;
      gridReportTableIndex.DataSource := dsReportTableIndex;
    end;
    memReportTableDefine.EnableControls;
    memReportTableIndex.EnableControls;
  end;

  memReportTable.EnableControls;
  gridReportTable.DataSource := dsReportTable;

  qryTable.EnableControls;
  qryItems.EnableControls;
  qryCols.EnableControls;
  qryReportList.EnableControls;

  Changing := False;

  Screen.Cursor := crDefault;
end;

// changetablecal

procedure TfrmReportList.ChangeTableCal;
begin
  if Changing then exit;

  Screen.Cursor := crHourGlass;

  Changing := True;

  qryReportList.DisableControls;
  qryItems.DisableControls;
  qryCols.DisableControls;
  qryTable.DisableControls;

  gridReportTable.DataSource := nil;
  RemoveGrid(gridReportTable);

  case qryReportList.FieldByName('REPORT_VIEW_TYPE').AsInteger of
  0,1,2:
  begin
    CreateGridValue(gridReportTable,qryItems,qryCols);

    memReportTable.DisableControls;

    memReportTable.Free;
    memReportTable := TdxMemData.Create(Self);
    memReportTable.Name := 'memReportTable';
    dsReportTable.DataSet := memReportTable;

    if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
    begin
      CreateMemValue(memReportTable,qryItems,qryCols);

      qryTable.Close;
      qryTable.Open;

      AddToMemValue(memReportTable,qryTable);
    end;
  end;
  3: // no ngang
  begin
    qryTable.Close;
    qryTable.Open;

    memReportTable.DisableControls;

    memReportTable.Free;
    memReportTable := TdxMemData.Create(Self);

    InitiateExpression;
    CurrentReport := qryReportList.fieldbyname('REPORT_ID').AsString;
    GetParam(qryReportList.fieldbyname('REPORT_ID').AsString);
    CreateMemValue3(memReportTable,qryItems,qryCols);
    AddToMemValue(memReportTable,qryTable);

    CreateGridValue3(gridReportTable,qryItems,qryCols);

    CopyMem(memReportTable);
    memReportTable.Name := 'memReportTable';
    dsReportTable.DataSet := memReportTable;
  end;
  5: // no ngang (doi tuong - yeu to)
  begin
		qryTable.Close;
    qryTable.Open;

    memReportTable.DisableControls;

    memReportTable.Free;
    memReportTable := TdxMemData.Create(Self);

    InitiateExpression;
    CurrentReport := qryReportList.fieldbyname('REPORT_ID').AsString;
    GetParam(qryReportList.fieldbyname('REPORT_ID').AsString);
    CreateMemValue5(memReportTable,qryItems,qryCols);
    AddToMemValue(memReportTable,qryTable);

    CreateGridValue5(gridReportTable,qryItems,qryCols);

    CopyMem(memReportTable);
    memReportTable.Name := 'memReportTable';
    dsReportTable.DataSet := memReportTable;
  end;
  4:
  begin
    CreateGridValue(gridReportTable,qryItems,qryCols);

    memReportTable.DisableControls;

    memReportTable.Free;
    memReportTable := TdxMemData.Create(Self);
    memReportTable.Name := 'memReportTable';
    dsReportTable.DataSet := memReportTable;

    CreateMemValue(memReportTable,qryItems,qryCols);

    qryTable.Close;
    qryTable.Open;
  end;
  end;

  if CurrentUser = 'SSPAdmin' then
  begin
    memReportTableDefine.DisableControls;
    memReportTableIndex.DisableControls;

    gridReportTableDefine.DataSource := nil;
    RemoveGrid(gridReportTableDefine);
    CreateGridDefine(gridReportTableDefine,qryItems,qryCols);

    gridReportTableIndex.DataSource := nil;
    RemoveGrid(gridReportTableIndex);
    CreateGridIndex(gridReportTableIndex,qryItems,qryCols);

    memReportTableDefine.Free;
    memReportTableDefine := TdxMemData.Create(Self);
    memReportTableDefine.Name := 'memReportTableDefine';
    dsReportTableDefine.DataSet := memReportTableDefine;

    memReportTableIndex.Free;
    memReportTableIndex := TdxMemData.Create(Self);
    memReportTableIndex.Name := 'memReportTableIndex';
    dsReportTableIndex.DataSet := memReportTableIndex;

    if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
    begin
      CreateMemDefine(memReportTableDefine,qryItems,qryCols);
      CreateMemIndex(memReportTableIndex,qryItems,qryCols);

      AddToMemDefine(memReportTableDefine,qryTable);
      AddToMemIndex(memReportTableIndex,qryTable);

      gridReportTableDefine.DataSource := dsReportTableDefine;
      gridReportTableIndex.DataSource := dsReportTableIndex;
    end;
    memReportTableDefine.EnableControls;
    memReportTableIndex.EnableControls;
  end;

  memReportTable.EnableControls;
  gridReportTable.DataSource := dsReportTable;

  qryTable.EnableControls;
  qryItems.EnableControls;
  qryCols.EnableControls;
  qryReportList.EnableControls;

  Changing := False;

  Screen.Cursor := crDefault;
end;

procedure TfrmReportList.qryItemsAfterPost(DataSet: TDataSet);
begin
//  ChangeTable;
end;

procedure TfrmReportList.qryColsAfterPost(DataSet: TDataSet);
begin
//  ChangeTable;
end;

procedure TfrmReportList.qryItemsAfterDelete(DataSet: TDataSet);
begin
//  ChangeTable;
end;

procedure TfrmReportList.qryColsAfterDelete(DataSet: TDataSet);
begin
//  ChangeTable;
end;

procedure TfrmReportList.qryTableAfterPost(DataSet: TDataSet);
begin
  if memReportTable.Locate('REPORT_ITEM_NAME_ID',qryTable.FieldByName('REPORT_ITEM_NAME_ID').Value,[]) then
  if qryTable.FieldByName('REPORT_OBJECT_TYPE_COL').IsNull then
    UpdateValue(memReportTable, qryTable);

  if memReportTableDefine.Locate('REPORT_ITEM_NAME_ID',qryTable.FieldByName('REPORT_ITEM_NAME_ID').Value,[]) then
    UpdateDefine(memReportTableDefine, qryTable);

  if memReportTableindex.Locate('REPORT_ITEM_NAME_ID',qryTable.FieldByName('REPORT_ITEM_NAME_ID').Value,[]) then
    UpdateIndex(memReportTableindex, qryTable);
end;

procedure TfrmReportList.qryTableNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('REPORT_VALUE').AsInteger := 0;
  DataSet.FieldByName('REPORT_STRING').asString := ' ';
  DataSet.FieldByName('REPORT_EXPRESSION').asString := ' ';
  Dataset.FieldByName('REPORT_IMAGETYPE').AsString := ' ';
  Dataset.FieldByName('REPORT_OTHER_CONDITION').AsInteger := 0;
  Dataset.FieldByName('REPORT_NOT_DETAIL').AsInteger := 0;
end;

procedure TfrmReportList.qryTableBeforePost(DataSet: TDataSet);
begin
  if(DataSet.FieldByName('REPORT_VALUE').IsNull)then
    DataSet.FieldByName('REPORT_VALUE').AsInteger := 0;

  if(DataSet.FieldByName('REPORT_STRING').IsNull)then
    DataSet.FieldByName('REPORT_STRING').asString := ' ';

  if(DataSet.FieldByName('REPORT_EXPRESSION').IsNull)then
    DataSet.FieldByName('REPORT_EXPRESSION').asString := ' ';

  if(DataSet.FieldByName('REPORT_IMAGETYPE').IsNull)then
    DataSet.FieldByName('REPORT_IMAGETYPE').AsString := ' ';
end;

procedure TfrmReportList.UpdateValue(var Mem: TdxMemData;qryTable: TIBOQuery);
begin
  Mem.Edit;
  case qryTable.FieldByName('REPORT_TYPE').AsInteger of
  0:
    Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value := qryTable.fieldbyname('REPORT_STRING').value;
  1:
  begin
    Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_VALUE').value;
    Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString+'TYPE').Value :=
        qryTable.FieldByName('REPORT_ISEXPRESSION').value;
  end;
  2:
    Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_DATE').value;
  3:
    Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_TIME').value;
  4:
  begin
   Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_IMAGE').value;
   Mem.FieldByName('REPORT_IMAGETYPE').Value := qryTable.FieldByName('REPORT_IMAGETYPE').value;
  end;
  5:
   Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_BOOLEAN').value;
  6:
   Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_DATETIME').value;
  end;

  Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString+'FORMAT').Value :=
        qryTable.FieldByName('REPORT_COL_BOLD').value + qryTable.FieldByName('REPORT_ITEM_BOLD').value*10;
end;

procedure TfrmReportList.ElPopupButton8Click(Sender: TObject);
begin
  StrCopyToStream('/');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.StrCopyToStream(s: string);
begin
  CopyMemo.Text := s;
  CopyMemo.SelectAll;
  CopyMemo.CopyToClipboard;
end;

procedure TfrmReportList.AddToMemDefine(var Mem: TdxMemData;
  var qryTable: TIBOQuery);
begin
  Mem.DisableControls;
  qryTable.DisableControls;
  qryDebitCreditAcc.DisableControls;

  if not qryTable.Active then qryTable.Open;

  Mem.Close;
  Mem.Open;

  qryTable.First;
  while not qryTable.Eof do
  begin
    if mem.Locate('REPORT_ITEM_ID', qryTable.fieldByname('REPORT_ITEM_ID').Value, [])then
    begin
      mem.Edit;
      UpdateDefine(mem, qryTable);
    end
    else
    begin
      Mem.Append;

      Mem.FieldByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').value;
      mem.FieldByName('REPORT_ITEM_NAME_ID').Value := qryTable.fieldbyname('REPORT_ITEM_NAME_ID').value;

      UpdateDefine(mem,qryTable);
    end;
    mem.Post;
    qryTable.Next;
  end;
  qryDebitCreditAcc.EnableControls;
  qryTable.EnableControls;
  Mem.EnableControls;
end;

procedure TfrmReportList.UpdateDefine(var Mem: TdxMemData;
  var qryTable: TIBOQuery);
var x:string;
begin
  Mem.Edit;
  case qryTable.FieldByName('REPORT_TYPE').AsInteger of
  0:
    Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value := qryTable.fieldbyname('REPORT_STRING').Value;
  1:
  begin
    case qryTable.FieldByName('REPORT_ISEXPRESSION').AsInteger of
    -1:
      Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value := '';
    0:
      Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_VALUE').value;
    1:
      Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_EXPRESSION').value;
    2:
      Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_SQL').value;
    3:
    begin
      x := '';
      qryDebitCreditAcc.Refresh;
      qryDebitCreditAcc.First;
      while not qryDebitCreditAcc.Eof do
      begin
        x := x + 'TKNO: ' + qryDebitCreditAcc.FieldByName('REPORT_DEBIT_ACC').AsString;
        x := x + ' - TKCO: ' + qryDebitCreditAcc.FieldByName('REPORT_CREDIT_ACC').AsString;
        x := x + ' - HS: ' + qryDebitCreditAcc.FieldByName('REPORT_COEFFICIENT').AsString;

        case qryDebitCreditAcc.FieldByName('REPORT_CONDITIONS_TYPE').AsInteger of
        0:
          x := x + ' - KN' + #13;
        1:
          x := x + ' - KT' + #13;
        2:
          x := x + ' - LK' + #13;
        3:
          x := x + ' - DN' + #13;
        end;

        qryDebitCreditAcc.Next;
      end;
      Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value := x;
    end;
    end;
  end;
  2:
    Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_DATE').value;
  3:
  Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_TIME').value;
  4:
  begin
  Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_IMAGE').value;
  Mem.FieldByName('REPORT_IMAGETYPE').Value := qryTable.FieldByName('REPORT_IMAGETYPE').value;
  end;
  5:
  Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_BOOLEAN').value;
  6:
  Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_DATETIME').value;
  end;
end;

procedure TfrmReportList.AddToMemIndex(var Mem: TdxMemData;
  qryTable: TIBOQuery);
begin
  Mem.DisableControls;
  qryTable.DisableControls;

  if not qryTable.Active then qryTable.Open;

  Mem.Close;
  Mem.Open;

  qryTable.First;

  while not qryTable.Eof do
  begin
    if mem.Locate('REPORT_ITEM_ID', qryTable.fieldByname('REPORT_ITEM_ID').Value, [])then
    begin
      mem.Edit;
      UpdateIndex(mem, qryTable);
    end
    else
    begin
      Mem.Append;

      Mem.FieldByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').value;
      mem.FieldByName('REPORT_ITEM_NAME_ID').Value := qryTable.fieldbyname('REPORT_ITEM_NAME_ID').value;

      UpdateIndex(mem,qryTable);
    end;
    mem.Post;
    qryTable.Next;
  end;
  qryTable.EnableControls;
  Mem.EnableControls;
end;

procedure TfrmReportList.UpdateIndex(var Mem: TdxMemData;
  qryTable: TIBOQuery);
begin
  Mem.Edit;
  Mem.FieldByName(qryTable.FieldByName('REPORT_COL_NAME_ID').AsString).Value :=
        qryTable.FieldByName('REPORT_INDEX').Value;
end;

procedure TfrmReportList.FormDestroy(Sender: TObject);
begin
  with MainFrm.bbWindowList.Items do
    Delete(IndexOfObject(Self));
  with MainFrm do
    MyMDIChildCount:= MyMDIChildCount-1;

  frmReportList := nil;
end;

procedure TfrmReportList.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F11 then
    CallErrorForm(Self.Name);
  if Key=VK_F10 then
    LoadCaptionFormInfo(Self);
end;

procedure TfrmReportList.CreateGridDefine(var Grid: tdxdbgrid; qryItems,
  qryCols: TIBOQuery);
var
  Col: TdxDBTreeListColumn;
begin
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateGridHeader(Grid,qryItems,qryCols);

    qryCols.First;
    while not qryCols.Eof do
    begin
      case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
      0:
      begin
        col := grid.CreateColumn(TdxDBGridMaskColumn);
        //col.Width := 300;
        col.Alignment := taLeftJustify;
      end;
      1:
      begin
        col := grid.CreateColumn(TdxDBGridPopupColumn);
        //col.Width := 150;
        col.Alignment := taLeftJustify;
        //col.OnCustomDrawCell := gridReportTableDefineColumnCustomDrawCell;

        with TdxDBGridPopupColumn(col) do
        begin
          PopupControl := lcBieuThuc;
          PopupFormBorderStyle := pbsSysPanel;
          HideEditCursor := True;
          OnPopup := gridReportTableDefinePopup;
          OnCloseUp := gridReportTableDefineCloseUp;
        end;
      end;
      2:
      begin
        col := grid.CreateColumn(TdxDBGridDateColumn);
        //col.Width := 60;
        col.Alignment := taCenter;
      end;
      3:
      begin
        col := grid.CreateColumn(TdxDBGridTimeColumn);
        //col.Width := 50;
        col.Alignment := taCenter;
      end;
      4:
      begin
        col := grid.CreateColumn(TdxDBGridGraphicColumn);
        //col.Width := 100;
        col.Alignment := taCenter;

        with TdxDBGridGraphicColumn(Col) do
        begin
          OnAssignPicture := DBGraphicAssignPictureDefine;
          OnGetGraphicClass := DBGraphicGetGraphicClassDefine;
          CustomGraphic := True;
          TdxDBGridGraphicColumn(Col).Stretch := True;
        end;
      end;
      5:
      begin
        col := grid.CreateColumn(TdxDBGridCheckColumn);
        //col.Width := 100;
        col.Alignment := taCenter;
      end;
      6:
      begin
        col := grid.CreateColumn(TdxDBGridDateColumn);
        //col.Width := 70;
        col.Alignment := taCenter;
      end;
      end;

      case qryCols.FieldByName('REPORT_BOLD').AsInteger of
      0:
        col.Font.Style := col.Font.Style - [fsBold];
      1:
        col.Font.Style := col.Font.Style + [fsBold];
      end;

      col.Color := qryCols.FieldByName('REPORT_COLOR').Value;      
      col.Width := qryCols.FieldByName('REPORT_WIDTH_DEFINE').AsInteger;
      col.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString;
      col.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString;
      col.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value + '(' + qryCols.fieldbyname('REPORT_COL_ID').AsString + '-' + qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString + ')';
      col.HeaderAlignment := taCenter;
      col.BandIndex := 1;
      //col.DisableEditor := true;

      qryCols.Next;
    end;
  end;
end;

procedure TfrmReportList.CreateGridIndex(var Grid: tdxdbgrid; qryItems,
  qryCols: TIBOQuery);
var
  Col: TdxDBTreeListColumn;
begin
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateGridHeader(Grid,qryItems,qryCols);

    qryCols.First;
    while not qryCols.Eof do
    begin
      col := grid.CreateColumn(TdxDBGridSpinColumn);
      //TdxDBGridCurrencyColumn(col).DisplayFormat := TIENTE_FORMAT;
      col.Width := 50;
      col.Alignment := taRightJustify;

      col.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString;
      col.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString;
      col.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value + '(' + qryCols.fieldbyname('REPORT_COL_ID').AsString + '-' + qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString + ')';
      col.HeaderAlignment := taCenter;
      col.BandIndex := 1;
      //col.DisableEditor := true;
      with TdxDBGridSpinColumn(Col) do
      begin
        MinValue := 1;
        MaxValue := 9;
      end;

      qryCols.Next;
    end;
  end;
end;

procedure TfrmReportList.CreateMemDefine(var Mem: TdxMemData; qryItems,
  qryCols: TIBOQuery);
var
  Field: TField;
  FieldAttach:TField;
begin
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateMemHeader(Mem,qryItems,qryCols);

    FieldAttach := TWideStringField.Create(mem);
    FieldAttach.Size := 15;
    FieldAttach.SetFieldType(ftWideString);
    FieldAttach.FieldName := 'REPORT_IMAGETYPE';
    FieldAttach.DataSet := mem;
    FieldAttach.FieldKind := fkData;

    qryCols.First;
    while not qryCols.Eof do
    begin
      case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
      0:
      begin
        Field := TWideStringField.Create(mem);
        Field.Size := 6144;
        Field.SetFieldType(ftWideString);
      end;
      1:
      begin
        Field := TWideStringField.Create(mem);
        Field.Size := 255;
        Field.SetFieldType(ftWideString);
        Field.ReadOnly := True;
      end;
      2:
      begin
        Field := TDateField.Create(mem);
        Field.SetFieldType(ftDate);
      end;
      3:
      begin
        Field := TTimeField.Create(mem);
        Field.SetFieldType(ftTime);
      end;
      4:
      begin
        Field := TGraphicField.Create(mem);
        Field.SetFieldType(ftGraphic);
      end;
      5:
      begin
        Field := TBooleanField.Create(mem);
        Field.SetFieldType(ftBoolean);
      end;
      6:
      begin
        Field := TDateTimeField.Create(mem);
        Field.SetFieldType(ftDateTime);
      end
      end;

      Field.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString;
      Field.DataSet := mem;
      Field.FieldKind := fkData;
      qryCols.Next;
    end;
  end;
end;

procedure TfrmReportList.CreateMemIndex(var Mem: TdxMemData; qryItems,
  qryCols: TIBOQuery);
var
  Field: TField;
begin
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateMemHeader(Mem,qryItems,qryCols);

    qryCols.First;
    while not qryCols.Eof do
    begin
      Field := TFloatField.Create(mem);
      Field.FieldKind := fkData;
      Field.SetFieldType(ftFloat);

      Field.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString;
      Field.DataSet := mem;
      qryCols.Next;
    end;
  end;
end;

procedure TfrmReportList.CreateGridHeader(var Grid: tdxdbgrid; qryItems,
  qryCols: TIBOQuery);
begin
  with grid.CreateColumn(TdxDBTreeListCalcColumn) do
  begin
    Name := grid.Name + 'REPORT_ITEM_ID';
    Width := 60;
    Caption := Utf8Decode('STT');
    FieldName := 'REPORT_ITEM_ID';
    HeaderAlignment := taCenter;
    Alignment := taLeftJustify;
    Color := clInfoBk;
    DisableEditor := true;
    Sorted := csUp;
    Font.Style := [fsBold];
    BandIndex := 0;
  end;

  with grid.CreateColumn(TdxDBTreeListColumn) do
  begin
    Name := grid.Name + 'REPORT_ITEM_NAME_ID';
    Width := 120;
    Caption := Utf8Decode('Mã');
    FieldName := 'REPORT_ITEM_NAME_ID';
    HeaderAlignment := taCenter;
    Alignment := taLeftJustify;
    Color := clInfoBk;
    DisableEditor := true;
    Font.Style := [fsBold];
    BandIndex := 0;
  end;
end;

procedure TfrmReportList.CreateMemHeader(var Mem: TdxMemData; qryItems,
  qryCols: TIBOQuery);
var
  Field: TField;
begin
  Field := TIntegerField.Create(Mem);

  with Field do
  begin
    SetFieldType(ftInteger);
    FieldName := 'REPORT_ITEM_ID';
    FieldKind := fkData;
    DataSet := mem;
  end;

  Field := TWideStringField.Create(Mem);
  with Field do
  begin
    SetFieldType(ftWideString);
    FieldName := 'REPORT_ITEM_NAME_ID';
    Size := 1533;
    FieldKind := fkData;
    DataSet := mem;
  end;
end;

procedure TfrmReportList.DBGraphicAssignPictureValue(Sender: TObject;
  var Picture: TPicture);
begin
  if not (memReportTable.State in [dsInsert,dsEdit])then
    memReportTable.Edit;

  if Picture.Graphic <> nil then
    memReportTable.FieldByName('REPORT_IMAGETYPE').AsString := Picture.Graphic.ClassName
  else
    memReportTable.FieldByName('REPORT_IMAGETYPE').Clear;
end;

procedure TfrmReportList.DBGraphicAssignPictureDefine(Sender: TObject;
  var Picture: TPicture);
begin
  if not (memReportTableDefine.State in [dsInsert,dsEdit])then
    memReportTableDefine.Edit;

  if Picture.Graphic <> nil then
    memReportTableDefine.FieldByName('REPORT_IMAGETYPE').AsString := Picture.Graphic.ClassName
  else
    memReportTableDefine.FieldByName('REPORT_IMAGETYPE').Clear;
end;

procedure TfrmReportList.DBGraphicGetGraphicClassValue(Sender: TObject;
  Node: TdxTreeListNode; var GraphicClass: TGraphicClass);
var
  img_class: string;
begin
  img_class := memReportTable.FieldByName('REPORT_IMAGETYPE').AsString;
  if img_class <> '' then
    GraphicClass := TGraphicClass(GetClass(img_class))
  else
    GraphicClass := TGraphicClass(GetClass(TBitmap.ClassName));
end;

procedure TfrmReportList.DBGraphicGetGraphicClassDefine(Sender: TObject;
  Node: TdxTreeListNode; var GraphicClass: TGraphicClass);
var
  img_class: string;
begin
  img_class := memReportTableDefine.FieldByName('REPORT_IMAGETYPE').AsString;
  if img_class <> '' then
    GraphicClass := TGraphicClass(GetClass(img_class))
  else
    GraphicClass := TGraphicClass(GetClass(TBitmap.ClassName));
end;

procedure TfrmReportList.gridReportTableIndexCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
 if AColumn.Index > 1 then
 begin
   AColor := TColor($FFFFFF - Anode.Values[AColumn.Index]*50);
 end;
end;

procedure TfrmReportList.gridReportTableIndexEdited(Sender: TObject;
  Node: TdxTreeListNode);
var REPORT_COL_NAME_ID:string;
    REPORT_ITEM_NAME_ID:string;
begin
  REPORT_COL_NAME_ID := gridReportTableIndex.Columns[gridReportTableIndex.FocusedColumn].FieldName;
  REPORT_ITEM_NAME_ID := Node.Values[1];
  if qryTable.Locate('REPORT_ITEM_NAME_ID;REPORT_COL_NAME_ID',VarArrayOf([REPORT_ITEM_NAME_ID,REPORT_COL_NAME_ID]),[]) then
  begin
    if not(qryTable.State in [dsEdit,dsInsert])then qryTable.Edit;
    qryTable.FieldByName('REPORT_INDEX').AsInteger := memReportTableIndex.FieldByName(REPORT_COL_NAME_ID).AsInteger;
    qryTable.AfterPost := nil;
    qryTable.Post;
    qryTable.AfterPost := qryTableAfterPost;
  end;
end;

procedure TfrmReportList.gridReportTableDefineEdited(Sender: TObject;
  Node: TdxTreeListNode);
var REPORT_COL_NAME_ID:string;
    REPORT_ITEM_NAME_ID:string;
begin
  REPORT_COL_NAME_ID := gridReportTableDefine.FocusedField.FieldName;
  REPORT_ITEM_NAME_ID := Node.Values[1];
  if qryTable.Locate('REPORT_ITEM_NAME_ID;REPORT_COL_NAME_ID',VarArrayOf([REPORT_ITEM_NAME_ID,REPORT_COL_NAME_ID]),[]) then
  begin
    if not(qryTable.State in [dsEdit,dsInsert])then qryTable.Edit;
    case qryTable.FieldByName('REPORT_TYPE').AsInteger of
    0:
      qryTable.FieldByName('REPORT_STRING').Value := memReportTableDefine.FieldByName(REPORT_COL_NAME_ID).Value;
    1:
    begin
      exit;
    end;
    2:
      qryTable.FieldByName('REPORT_DATE').AsDateTime := memReportTableDefine.FieldByName(REPORT_COL_NAME_ID).AsDateTime;
    3:
      qryTable.FieldByName('REPORT_TIME').Value := memReportTableDefine.FieldByName(REPORT_COL_NAME_ID).Value;
    4:
    begin
      qryTable.FieldByName('REPORT_IMAGE').Value := memReportTableDefine.FieldByName(REPORT_COL_NAME_ID).Value;
      qryTable.FieldByName('REPORT_IMAGETYPE').AsString := memReportTableDefine.FieldByName('REPORT_IMAGETYPE').AsString;
    end;
    5:
      qryTable.FieldByName('REPORT_BOOLEAN').AsInteger := memReportTableDefine.FieldByName(REPORT_COL_NAME_ID).Value;
    6:
      qryTable.FieldByName('REPORT_DATETIME').AsDateTime := memReportTableDefine.FieldByName(REPORT_COL_NAME_ID).AsDateTime;
    end;
    qryTable.AfterPost := nil;
    qryTable.Post;
    qryTable.AfterPost := qryTableAfterPost;
  end;
end;

procedure TfrmReportList.qryReportListAfterPost(DataSet: TDataSet);
begin
  if qryReportListREPORT_PARENT.OldValue <> qryReportListREPORT_PARENT.Value then
    qryReportList.Refresh;
end;

procedure TfrmReportList.DBGridColumnValidateDefine(Sender: TObject;
  var ErrorText: WideString; var Accept: Boolean);
begin
  if gridReportTableDefine.FocusedField is TWideStringField then
  begin
    if (memReportTableDefine.FieldByName(gridReportTableDefine.FocusedField.FieldName).IsNull) or
       (memReportTableDefine.FieldByName(gridReportTableDefine.FocusedField.FieldName).AsString = '')
    then
    begin
      memReportTableDefine.FieldByName(gridReportTableDefine.FocusedField.FieldName).Value := ' ';
      memReportTableDefine.Post;
    end;
  end;
end;

procedure TfrmReportList.DBGridColumnValidatevalue(Sender: TObject;
  var ErrorText: WideString; var Accept: Boolean);
begin
  if gridReportTable.FocusedField is TWideStringField then
  begin
    if memReportTable.FieldByName(gridReportTable.FocusedField.FieldName).IsNull then
    begin
      memReportTable.FieldByName(gridReportTable.FocusedField.FieldName).Value := '';
      memReportTable.Post;
    end;
  end;
end;

procedure TfrmReportList.editTypeChange(Sender: TObject);
begin
  if (editType.Text <> '') then
  case strtoint(editType.Text) of
  -1:
  begin
   editValue.Visible := False;
   editExpression.Visible := False;
   lcButtons.Visible := False;
   lcCheckButtons.Visible := False;
   lcDoUuTien.Visible := False;
   lcSQL.Visible := False;
   lcConditions.Visible := False;
   lcOtherCondition.Visible := False;
  end;
  0:
  begin
   editValue.Visible := True;
   editExpression.Visible := False;
   lcButtons.Visible := False;
   lcCheckButtons.Visible := False;
   lcDoUuTien.Visible := False;
   lcSQL.Visible := False;
   lcConditions.Visible := False;
   lcOtherCondition.Visible := False;
  end;
  1:
  begin
   editValue.Visible := False;
   editExpression.Visible := True;
   lcButtons.Visible := True;
   lcCheckButtons.Visible := True;
   lcDoUuTien.Visible := True;
   lcSQL.Visible := False;
   lcConditions.Visible := False;
   lcOtherCondition.Visible := True;
  end;
  2:
  begin
   editValue.Visible := False;
   editExpression.Visible := False;
   lcButtons.Visible := False;
   lcCheckButtons.Visible := False;
   lcDoUuTien.Visible := False;
   lcSQL.Visible := True;
   lcConditions.Visible := False;
   lcOtherCondition.Visible := True;
  end;
  3:
  begin
   editValue.Visible := False;
   editExpression.Visible := False;
   lcButtons.Visible := False;
   lcCheckButtons.Visible := False;
   lcDoUuTien.Visible := False;
   lcSQL.Visible := False;
   lcConditions.Visible := True;
   lcOtherCondition.Visible := True;
  end;
  end;
end;

procedure TfrmReportList.gridReportTableDefinePopup(Sender: TObject;
  const EditText: WideString);
begin
  qryTable.Locate('REPORT_ITEM_NAME_ID;REPORT_COl_NAME_ID',VarArrayOf([memReportTableDefine.FieldByName('REPORT_ITEM_NAME_ID').AsString,gridReportTableDefine.FocusedField.FieldName]),[]);
end;

procedure TfrmReportList.gridReportTableDefineCloseUp(
  Sender: TObject; var Text: WideString; var Accept: Boolean);
begin
  if not (qryTable.State in [dsInsert, dsEdit]) then
    qryTable.Edit;

  case qryTable.FieldByName('REPORT_ISEXPRESSION').AsInteger of
  0:
  begin
  end;
  1:
  begin
    if (trim(editExpressionss.Text) <> '') and (not CheckExpression(editExpressionss.Text,False))then
      qryTable.FieldByName('REPORT_EXPRESSION').AsString := qryTable.FieldByName('REPORT_EXPRESSION').OldValue;
  end;
  2:
  begin
    qryTemp.SQL.Text := editSQL.Text;
    try
      qryTemp.Prepare;
    except
      qryTable.FieldByName('REPORT_SQL').AsString := qryTable.FieldByName('REPORT_SQL').OldValue;
      ShowMessageUnicode(188);
    end;
  end;
  end;

  qryTable.Post;
end;

procedure TfrmReportList.ElPopupButton39Click(Sender: TObject);
begin
  StrCopyToStream('0');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton36Click(Sender: TObject);
begin
  StrCopyToStream('+');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton9Click(Sender: TObject);
begin
  StrCopyToStream('-');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton11Click(Sender: TObject);
begin
  StrCopyToStream('*');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton31Click(Sender: TObject);
begin
  StrCopyToStream('7');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton41Click(Sender: TObject);
begin
  StrCopyToStream('4');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton40Click(Sender: TObject);
begin
  StrCopyToStream('1');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton32Click(Sender: TObject);
begin
  StrCopyToStream('8');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton42Click(Sender: TObject);
begin
  StrCopyToStream('5');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton45Click(Sender: TObject);
begin
  StrCopyToStream('2');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton35Click(Sender: TObject);
begin
  StrCopyToStream('(');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton33Click(Sender: TObject);
begin
  StrCopyToStream('9');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton43Click(Sender: TObject);
begin
  StrCopyToStream('6');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton44Click(Sender: TObject);
begin
  StrCopyToStream('3');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton34Click(Sender: TObject);
begin
  StrCopyToStream(')');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton47Click(Sender: TObject);
begin
  StrCopyToStream('muc');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton53Click(Sender: TObject);
begin
  StrCopyToStream('nodk');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton46Click(Sender: TObject);
begin
  StrCopyToStream('giatri');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton48Click(Sender: TObject);
begin
  StrCopyToStream('codk');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton52Click(Sender: TObject);
begin
  StrCopyToStream('nops');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton49Click(Sender: TObject);
begin
  StrCopyToStream('cops');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton51Click(Sender: TObject);
begin
  StrCopyToStream('nock');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton50Click(Sender: TObject);
begin
  StrCopyToStream('cock');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.gridReportTableEdited(Sender: TObject;
  Node: TdxTreeListNode);
var REPORT_COL_NAME_ID:string;
    REPORT_ITEM_NAME_ID:string;
begin
  REPORT_COL_NAME_ID := gridReportTable.FocusedField.FieldName;
  REPORT_ITEM_NAME_ID := Node.Values[1];
  if qryTable.Locate('REPORT_ITEM_NAME_ID;REPORT_COL_NAME_ID',VarArrayOf([REPORT_ITEM_NAME_ID,REPORT_COL_NAME_ID]),[]) then
  begin
    if not(qryTable.State in [dsEdit,dsInsert])then qryTable.Edit;
    case qryTable.FieldByName('REPORT_TYPE').AsInteger of
    0:
      qryTable.FieldByName('REPORT_STRING').Value := memReportTable.FieldByName(REPORT_COL_NAME_ID).Value;
    1:
    begin
      qryTable.FieldByName('REPORT_VALUE').AsFloat := memReportTable.FieldByName(REPORT_COL_NAME_ID).AsFloat;
    end;
    2:
      qryTable.FieldByName('REPORT_DATE').AsDateTime := memReportTable.FieldByName(REPORT_COL_NAME_ID).AsDateTime;
    3:
      qryTable.FieldByName('REPORT_TIME').Value := memReportTable.FieldByName(REPORT_COL_NAME_ID).Value;
    4:
    begin
      qryTable.FieldByName('REPORT_IMAGE').Value := memReportTable.FieldByName(REPORT_COL_NAME_ID).Value;
      qryTable.FieldByName('REPORT_IMAGETYPE').AsString := memReportTable.FieldByName('REPORT_IMAGETYPE').AsString;
    end;
    5:
      qryTable.FieldByName('REPORT_BOOLEAN').AsInteger := memReportTable.FieldByName(REPORT_COL_NAME_ID).Value;
    6:
      qryTable.FieldByName('REPORT_DATETIME').AsDateTime := memReportTable.FieldByName(REPORT_COL_NAME_ID).AsDateTime;
    end;
    qryTable.AfterPost := nil;
    qryTable.Post;
    qryTable.AfterPost := qryTableAfterPost;
  end;
end;

procedure TfrmReportList.gridReportTableColumnCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var x:variant;
begin
  x := Anode.Values[gridReportTable.ColumnByFieldName(TdxDBTreeListColumn(AColumn).FieldName+'FORMAT').Index];
  if x <> 0 then
   AFont.Style := AFont.Style + [fsBold];
   
  if TdxDBGridSpinColumn(AColumn).Field.DataType = ftFloat then
  begin
    x := Anode.Values[gridReportTable.ColumnByFieldName(TdxDBTreeListColumn(AColumn).FieldName+'TYPE').Index];
    case x of
    0:;
    1,2,3,4:
      AColor := TColor($FFEBFF);
    end;
  end;
end;

procedure TfrmReportList.imageeditParamTypeChange(Sender: TObject);
begin
  if imageeditParamType.Text <> '' then
  case strtoint(imageeditParamType.Text) of
  0:
  begin
    lcFromMonth.Visible := True;
    lcFromQuarter.Visible := False;
    lcFromYear.Visible := True;
    lcToMonth.Visible := False;
    lcToQuarter.Visible := False;
    lcToYear.Visible := False;
  end;
  1:
  begin
    lcFromMonth.Visible := False;
    lcFromQuarter.Visible := True;
    lcFromYear.Visible := True;
    lcToMonth.Visible := False;
    lcToQuarter.Visible := False;
    lcToYear.Visible := False;
  end;
  2:
  begin
    lcFromMonth.Visible := False;
    lcFromQuarter.Visible := False;
    lcFromYear.Visible := True;
    lcToMonth.Visible := False;
    lcToQuarter.Visible := False;
    lcToYear.Visible := False;
  end;
  3:
  begin
    lcFromMonth.Visible := True;
    lcFromQuarter.Visible := False;
    lcFromYear.Visible := True;
    lcToMonth.Visible := True;
    lcToQuarter.Visible := False;
    lcToYear.Visible := True;
  end;
  4:
  begin
    lcFromMonth.Visible := False;
    lcFromQuarter.Visible := True;
    lcFromYear.Visible := True;
    lcToMonth.Visible := False;
    lcToQuarter.Visible := True;
    lcToYear.Visible := True;
  end;
  5:
  begin
    lcFromMonth.Visible := False;
    lcFromQuarter.Visible := False;
    lcFromYear.Visible := True;
    lcToMonth.Visible := False;
    lcToQuarter.Visible := False;
    lcToYear.Visible := False;
  end;
  6:
  begin
    lcFromMonth.Visible := False;
    lcFromQuarter.Visible := False;
    lcFromYear.Visible := True;
    lcToMonth.Visible := False;
    lcToQuarter.Visible := False;
    lcToYear.Visible := False;
  end;
  end;
end;

procedure TfrmReportList.gridReportTableDefineKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ProcessKeyDownInGrid(TdxDBGrid(sender),key,shift, False);
end;

procedure TfrmReportList.gridReportTableDefineMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  popupReportList.PopupFromCursorPos;
end;

procedure TfrmReportList.gridReportTableMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button <> mbRight then exit;
 if TdxPopupMenuManager.Instance(TRUE).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
 popupReportList.PopupFromCursorPos;
end;

procedure TfrmReportList.gridReportTableIndexMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button <> mbRight then exit;
  popupReportList.PopupFromCursorPos;
end;

procedure TfrmReportList.dxDBGrid4MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button <> mbRight then exit;
 if TdxPopupMenuManager.Instance(True).ShowGridPopupMenu(TdxDBGrid(Sender)) then exit;
end;

procedure TfrmReportList.acPreviewExecute(Sender: TObject);
begin
  GetData;
  ThucHienInBC(False);
  RemoveDBPipeLine;
end;

procedure TfrmReportList.acPrintExecute(Sender: TObject);
begin
  GetData;
  ThucHienInBC(True);
  RemoveDBPipeLine;
end;

procedure TfrmReportList.acDesignExecute(Sender: TObject);
begin
  GetData;
  SuaLaiMau;
  RemoveDBPipeLine;
end;

procedure TfrmReportList.qryReportListBeforePost(DataSet: TDataSet);
begin
  if qryReportList.FieldByName('REPORT_ID').IsNull then
  begin
    ShowMessageUnicode(84);
    qryReportList.FieldByName('REPORT_ID').FocusControl;
    Abort;
    exit;
  end;

  if qryReportList.FieldByName('REPORT_NAME').IsNull then
  begin
    ShowMessageUnicode(84);
    qryReportList.FieldByName('REPORT_NAME').FocusControl;
    Abort;
    exit;
  end;
end;

procedure TfrmReportList.qryReportListError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  if ERRCODE = 335544665 then
  begin
    ShowMessageUnicode(33);
    qryReportList.FieldByName('REPORT_ID').FocusControl;
    RaiseException := False;
    Abort;
  end;
end;

procedure TfrmReportList.qryItemsBeforePost(DataSet: TDataSet);
begin
  if qryItems.FieldByName('REPORT_ITEM_ID').IsNull then
  begin
    ShowMessageUnicode(84);
    qryItems.FieldByName('REPORT_ITEM_ID').FocusControl;
    Abort;
    exit;
  end;

  if qryItems.FieldByName('REPORT_ITEM_NAME_ID').IsNull then
  begin
    ShowMessageUnicode(84);
    qryItems.FieldByName('REPORT_ITEM_NAME_ID').FocusControl;
    Abort;
    exit;
  end;
end;

procedure TfrmReportList.qryItemsError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  if ERRCODE = 335544665 then
  begin
    ShowMessageUnicode(33);
    qryItems.FieldByName('REPORT_ITEM_ID').FocusControl;
    RaiseException := False;
    Abort;
  end;
end;

procedure TfrmReportList.qryColsError(Sender: TObject;
  const ERRCODE: Integer; ErrorMessage, ErrorCodes: TStringList;
  const SQLCODE: Integer; SQLMessage, SQL: TStringList;
  var RaiseException: Boolean);
begin
  if ERRCODE = 335544665 then
  begin
    ShowMessageUnicode(33);
    qryCols.FieldByName('REPORT_COL_ID').FocusControl;
    RaiseException := False;
    Abort;
  end;
end;

procedure TfrmReportList.qryColsBeforePost(DataSet: TDataSet);
begin
  if qryCols.FieldByName('REPORT_COL_ID').IsNull then
  begin
    ShowMessageUnicode(84);
    qryCols.FieldByName('REPORT_COL_ID').FocusControl;
    Abort;
    exit;
  end;

  if qryCols.FieldByName('REPORT_COL_NAME_ID').IsNull then
  begin
    ShowMessageUnicode(84);
    qryCols.FieldByName('REPORT_COL_NAME_ID').FocusControl;
    Abort;
    exit;
  end;
end;


function TfrmReportList.muc(Row, Col: Variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    qryTemp.SQL.Text := ' select report_value ' +
                        ' from f_define_report ' +
                        ' JOIN F_REPORT_COLUMNS ON F_REPORT_COLUMNS.REPORT_COL_ID = f_define_report.REPORT_COL_ID and ' +
                        ' F_REPORT_COLUMNS.REPORT_ID = F_DEFINE_REPORT.REPORT_ID ' +
                        ' JOIN F_REPORT_ITEMS ON F_REPORT_ITEMS.REPORT_ITEM_ID = f_define_report.REPORT_ITEM_ID and ' +
                        ' F_REPORT_ITEMS.REPORT_ID = F_DEFINE_REPORT.REPORT_ID ' +
                        ' where f_define_report.report_id = ''' + currentReport + ''' and ' +
                        ' REPORT_ITEM_NAME_ID = ''' + UpperCase(ROW) + ''' and ' +
                        ' REPORT_COL_NAME_ID = ''' + UpperCase(col) + '''';
    qryTemp.Open;
    Result := qryTemp.FieldByName('REPORT_VALUE').Value;
    qryTemp.Close;
  end;
end;

procedure TfrmReportList.GetParam(REPORT_ID: Widestring);
var param_type:integer;
    from_month,to_month:integer;
    from_quarter,to_quarter:integer;
    from_year,to_year:integer;
begin
  if qryReportList.FieldByName('REPORT_PARENT').IsNull then
  begin
    param_type := qryReportList.FieldByName('REPORT_PARAM_TYPE').AsInteger;
    from_month := qryReportList.FieldByName('REPORT_FROM_MONTH').AsInteger;
    to_month := qryReportList.FieldByName('REPORT_TO_MONTH').AsInteger;
    from_quarter := qryReportList.FieldByName('REPORT_FROM_QUARTER').AsInteger;
    to_quarter := qryReportList.FieldByName('REPORT_TO_QUARTER').AsInteger;
    from_year := qryReportList.FieldByName('REPORT_FROM_YEAR').AsInteger;
    to_year := qryReportList.FieldByName('REPORT_TO_YEAR').AsInteger;
  end
  else
  begin
    qryTemp.SQL.Text := ' SELECT REPORT_PARAM_TYPE,' +
                        ' REPORT_FROM_MONTH,REPORT_TO_MONTH, ' +
                        ' REPORT_FROM_QUARTER,REPORT_TO_QUARTER, ' +
                        ' REPORT_FROM_YEAR,REPORT_TO_YEAR ' +
                        ' FROM F_REPORT_LIST ' +
                        ' WHERE REPORT_ID = ''' + qryReportList.FieldByName('REPORT_PARENT').AsString + '''';
    qryTemp.Open;

    param_type := qryTemp.FieldByName('REPORT_PARAM_TYPE').AsInteger;
    from_month := qryTemp.FieldByName('REPORT_FROM_MONTH').AsInteger;
    to_month := qryTemp.FieldByName('REPORT_TO_MONTH').AsInteger;
    from_quarter := qryTemp.FieldByName('REPORT_FROM_QUARTER').AsInteger;
    to_quarter := qryTemp.FieldByName('REPORT_TO_QUARTER').AsInteger;
    from_year := qryTemp.FieldByName('REPORT_FROM_YEAR').AsInteger;
    to_year := qryTemp.FieldByName('REPORT_TO_YEAR').AsInteger;

    qryTemp.Close;
  end;

  case param_type of
  0:
  begin
    FromPeriodYear := from_year*12;
    FromPeriod := from_month + FromPeriodYear;
    ToPeriod := FromPeriod;
    PrevToPeriod := ToPeriod-1;//Them
    PrevFromPeriod := FromPeriod-1;  //Them
  end;
  1:
  begin
    FromPeriodYear := from_year*12;
    FromPeriod := from_quarter*3 - 2 + FromPeriodYear;
    ToPeriod := FromPeriod + 2;
    PrevToPeriod := ToPeriod-3;          //Them
    PrevFromPeriod := FromPeriod-3;//Them
  end;
  2:
  begin
    FromPeriodYear := from_year*12;
    FromPeriod := FromPeriodYear + 1;
    ToPeriod := FromPeriod + 11;
    PrevToPeriod := ToPeriod-12;    //Them
  PrevFromPeriod := FromPeriod-12;//Them
  end;
  3:
  begin
    FromPeriodYear := from_year*12;
    FromPeriod := from_month + FromPeriodYear;
    ToPeriod := to_month + to_year*12;
    PrevToPeriod := FromPeriod - 1;
    PrevFromPeriod := PrevToPeriod-(ToPeriod-FromPeriod);
    {PrevFromPeriod := FromPeriod-(ToPeriod-FromPeriod)-1; //Them
    PrevToPeriod := FromPeriod+(ToPeriod-FromPeriod);//Them}
  end;
  4:
  begin
    FromPeriodYear := from_year*12;
    FromPeriod := from_quarter*3 - 2 + FromPeriodYear;
    ToPeriod := to_quarter*3 + to_year*12;
    PrevToPeriod := FromPeriod -1;
    PrevFromPeriod := PrevToPeriod-(ToPeriod-FromPeriod);
    //PrevFromPeriod := FromPeriod-(ToPeriod-FromPeriod)-1;//Them
    //PrevToPeriod := FromPeriod+(ToPeriod-FromPeriod);//Them
  end;
  5:
  begin
    FromPeriodYear := from_year*12;
    FromPeriod := FromPeriodYear + 1;
    ToPeriod := FromPeriod + 5;
    PrevFromPeriod := FromPeriod-6;  //Them
    PrevToPeriod := ToPeriod-6;//Them
  end;
  6:
  begin
    FromPeriodYear := from_year*12;
    FromPeriod := FromPeriodYear + 7;
    ToPeriod := FromPeriod + 5;
    PrevFromPeriod := FromPeriod-6; //Them
    PrevToPeriod := ToPeriod-6;//Them
  end;
  end;
  //PrevToPeriod := ToPeriod-1;
  //PrevFromPeriod := FromPeriod-(ToPeriod-FromPeriod)-1;
end;

procedure TfrmReportList.InitiateExpression;
begin
  with expReportCalculator do
  begin
    ClearIdentifiers;
    AddMethod2Param('muc',muc);
    AddMethod2Param('giatri',giatri);

    AddMethod2Param('nodktk',nodktk);
    AddMethod2Param('codktk',codktk);
    AddMethod2Param('nocktk',nocktk);
    AddMethod2Param('cocktk',cocktk);
    AddMethod2Param('nopstk',nopstk);
    AddMethod2Param('copstk',copstk);

    AddMethod2Param('nodkdt',nodkdt);
    AddMethod2Param('codkdt',codkdt);
    AddMethod2Param('nockdt',nockdt);
    AddMethod2Param('cockdt',cockdt);
    AddMethod2Param('nopsdt',nopsdt);
    AddMethod2Param('copsdt',copsdt);

    AddMethod2Param('nodkyt',nodkyt);
    AddMethod2Param('codkyt',codkyt);
    AddMethod2Param('nockyt',nockyt);
    AddMethod2Param('cockyt',cockyt);
    AddMethod2Param('nopsyt',nopsyt);
    AddMethod2Param('copsyt',copsyt);

    AddMethod2Param('nodkytdt',nodkytdt);
    AddMethod2Param('codkytdt',codkytdt);
    AddMethod2Param('nockytdt',nockytdt);
    AddMethod2Param('cockytdt',cockytdt);
    AddMethod2Param('nopsytdt',nopsytdt);
    AddMethod2Param('copsytdt',copsytdt);

   	AddMethod1Param('abs',abs);
  end
end;

procedure TfrmReportList.acCalExecute(Sender: TObject);
begin
  //Thinh sua
  if (lcToMonth.Visible = TRUE or lcToQuarter.Visible = TRUE) then
    if (spinToMonth.IntValue + 12*spinToYear.IntValue) < (spinFromMonth.IntValue + 12*spinFromYear.IntValue) then
    begin
      ShowMessageUnicode(108);
      Exit;
    end;
  if lcToYear.Visible = True then
    if (spinToYear.IntValue < spinFromYear.IntValue) then
    begin
      ShowMessageUnicode(108);
      Exit;
    end;
  //
  case qryReportList.FieldByName('REPORT_VIEW_TYPE').AsInteger of
  0,1,2:
  begin
    CalReport012;
    ChangeTable;
  end;
  3,5:
    ChangeTableCal;
  4:
  end;
end;

procedure TfrmReportList.ElPopupButton12Click(Sender: TObject);
begin
  if (trim(editExpressionss.Text) <> '') and (not CheckExpression(editExpressionss.Text, True)) then
    editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton4Click(Sender: TObject);
begin
  StrCopyToStream('giatri');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

function TfrmReportList.giatri(Row, Col: Variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    if object_id = 'PHLQP' then
    begin
      {memReportTable.Locate('REPORT_ITEM_ID',Row,[]);
      Result := MemReportTable.Fieldbyname(TEMPFIELD).Value;
      memReportTable.Locate('REPORT_ITEM_ID',qryTable.fieldByname('REPORT_ITEM_ID').Value,[])}
    end
    else
    begin
      qryTemp.SQL.Text := ' select report_value ' +
                          ' from f_define_report ' +
                          ' where f_define_report.report_id = ''' + currentReport + ''' and ' +
                          ' REPORT_ITEM_ID = ' + inttostr(ROW) + ' and ' +
                          ' REPORT_COL_ID = ' + inttostr(col);
      qryTemp.Open;
      Result := qryTemp.FieldByName('REPORT_VALUE').Value;
      qryTemp.Close;
    end;
  end;
end;

function TfrmReportList.CheckExpression(AExpression: string;ShowMessage:Boolean): boolean;
var ok:boolean;
begin
  TestFlag := True;
  InitiateExpression;
  with expReportCalculator do
  begin
    Expression := AExpression;
    try
      ok := True;
      Result := True;
      AnalyzeExpression;
    except
      ShowMessageUniText(UTF8Decode('Lỗi biểu thức tại vị trí ') + InttoStr(ErrorPosition));
      ok:=false;
      Result := False;
    end;
    if ok and Showmessage then
      ShowMessageUniText(UTF8Decode('Biểu thức được kiểm tra là chính xác.'));
  end;

  TestFlag := False;
end;

procedure TfrmReportList.qryReportListAfterDelete(DataSet: TDataSet);
begin
  qryReportList.Refresh;
end;

procedure TfrmReportList.FormShow(Sender: TObject);
begin
  SetVisible(Self);
  if CurrentUser = 'SSPAdmin' then
  begin
    dbtreeReportListHIEN_THI.Visible := True;
    dbtreeReportListREPORT_VIEW_TYPE.Visible := True;
    dbtreeReportListREPORT_ID.Visible := True;
    dbtreeReportListREPORT_FILETEMPLATE.Visible := True;
    ElTabSheet2.TabVisible := True;
    ElTabSheet3.TabVisible := True;
    ElTabSheet4.TabVisible := True;
    ElTabSheet5.TabVisible := True;
    ElPageControl1.ShowTabs := True;
    locFormGroup3.Visible := True;
    dxLayoutControl1Item2.Visible := True;
  end
  else 
  begin
    dbtreeReportListHIEN_THI.Visible := False;
    dbtreeReportListREPORT_VIEW_TYPE.Visible := False;
    dbtreeReportListREPORT_ID.Visible := False;
    dbtreeReportListREPORT_FILETEMPLATE.Visible := False;
    ElTabSheet2.TabVisible := False;
    ElTabSheet3.TabVisible := False;
    ElTabSheet4.TabVisible := False;
    ElTabSheet5.TabVisible := False;
    ElPageControl1.ShowTabs := False;
    locFormGroup3.Visible := False;
    dxLayoutControl1Item2.Visible := False;
  end;
end;

function TfrmReportList.GetParamValue(AParamName: Widestring): Variant;
begin
  AParamName := UpperCase(AParamName);
  if (AParamName = 'TUKY') then
    Result := FromPeriod
  else if (AParamName = 'DENKY') then
    Result := ToPeriod
  else if (AParamName = 'KYDN') then
    result := FromPeriodYear
  else if (AParamName = 'OBJECT_ID')then
    result := object_id
  else if (AParamName = 'DOITUONG_ID') then
  	result := doituong_id
  else if (AParamName = 'BRANCH_ID') then
  	result := MainDM.qryBranchBRANCH_ID.Value
  else
    Result := 0;
end;

procedure TfrmReportList.CreateMemTable(var Mem: TdxMemData;
  qryTables: TIBOQuery);
var Field: TField;
begin
  qryTables.First;
  while not qryTables.Eof do
  begin
    case qryTables.FieldByName('REPORT_TYPE').AsInteger of
    0:
    begin
      Field := TWideStringField.Create(mem);
      Field.Size := 6144;
      Field.SetFieldType(ftWideString);
    end;
    1:
    begin
      Field := TFloatField.Create(mem);
      Field.SetFieldType(ftFloat);
      TFloatField(Field).DisplayFormat := TIENTE_FORMAT;
    end;
    2:
    begin
      Field := TDateField.Create(mem);
      Field.SetFieldType(ftDate);
    end;
    3:
    begin
      Field := TTimeField.Create(mem);
      Field.SetFieldType(ftTime);
    end;
    4:
    begin
      Field := TGraphicField.Create(mem);
      Field.SetFieldType(ftGraphic);
    end;
    5:
    begin
      Field := TBooleanField.Create(mem);
      Field.SetFieldType(ftBoolean);
    end;
    6:
    begin
      Field := TDateTimeField.Create(mem);
      Field.SetFieldType(ftDateTime);
    end
    end;

    Field.FieldKind := fkData;
    Field.FieldName := qryTables.fieldByName('REPORT_COL_NAME_ID').AsString + qryTables.fieldByName('REPORT_ITEM_NAME_ID').AsString;
    Field.DataSet := mem;

    qryTables.Next;
  end;

  Mem.Open;
  Mem.Append;
  qryTables.First;
  while not qryTables.Eof do
  begin
    case qryTables.FieldByName('REPORT_TYPE').AsInteger of
    0:
      Mem.FieldByName(qryTables.fieldByName('REPORT_COL_NAME_ID').AsString + qryTables.fieldByName('REPORT_ITEM_NAME_ID').AsString).Value :=
      qryTables.FieldByName('REPORT_STRING').Value;
    1:
      Mem.FieldByName(qryTables.fieldByName('REPORT_COL_NAME_ID').AsString + qryTables.fieldByName('REPORT_ITEM_NAME_ID').AsString).Value :=
      qryTables.FieldByName('REPORT_VALUE').Value;
    2:
      Mem.FieldByName(qryTables.fieldByName('REPORT_COL_NAME_ID').AsString + qryTables.fieldByName('REPORT_ITEM_NAME_ID').AsString).Value :=
      qryTables.FieldByName('REPORT_DATE').Value;
    3:
      Mem.FieldByName(qryTables.fieldByName('REPORT_COL_NAME_ID').AsString + qryTables.fieldByName('REPORT_ITEM_NAME_ID').AsString).Value :=
      qryTables.FieldByName('REPORT_TIME').Value;
    4:                                                        
      Mem.FieldByName(qryTables.fieldByName('REPORT_COL_NAME_ID').AsString + qryTables.fieldByName('REPORT_ITEM_NAME_ID').AsString).Value :=
      qryTables.FieldByName('REPORT_IMAGE').Value;
    5:
      Mem.FieldByName(qryTables.fieldByName('REPORT_COL_NAME_ID').AsString + qryTables.fieldByName('REPORT_ITEM_NAME_ID').AsString).Value :=
      qryTables.FieldByName('REPORT_BOOLEAN').Value;
    6:
      Mem.FieldByName(qryTables.fieldByName('REPORT_COL_NAME_ID').AsString + qryTables.fieldByName('REPORT_ITEM_NAME_ID').AsString).Value :=
      qryTables.FieldByName('REPORT_DATETIME').Value;
    end;
    qryTables.Next;
  end;
  Mem.Post;
end;


function TfrmReportList.CreateDBPipeLine(Name: string): TdxMemData;
var
  Mem:TdxMemData;
  DBPipeLine:TppDBPipeLine;
begin
  DBPipeLine := TppDBPipeLine.Create(self);
  DBPipeLine.Name := 'dpl' + AnsiReplaceStr(Name,' ','');
  DBPipeLine.UserName := DBPipeLine.Name;

  DBPipeLine.DataSource := TDataSource.Create(self);

  Mem := TdxMemData.Create(self);
  DBPipeLine.DataSource.DataSet := Mem;

  DBPipeLines.Add(DBPipeLine);

  Result := Mem;
end;

procedure TfrmReportList.qryDebitCreditAccNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('REPORT_ID').Value := qryTable.FieldByName('REPORT_ID').Value;
  DataSet.FieldByName('REPORT_COL_ID').Value := qryTable.FieldByName('REPORT_COL_ID').Value;
  DataSet.FieldByName('REPORT_ITEM_ID').Value := qryTable.FieldByName('REPORT_ITEM_ID').Value;
  Dataset.FieldByName('REPORT_COEFFICIENT').AsInteger := 1;
  Dataset.FieldByName('REPORT_CONDITIONS_TYPE').AsInteger := 0;
end;

procedure TfrmReportList.dxDBGrid3Column10ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var ColorDialog: TColorDialog;
begin
  try
    ColorDialog := TColorDialog.Create(self);
    ColorDialog.Color := qryCols.FieldByName('REPORT_COLOR').Value;
    if ColorDialog.Execute then
    begin
      if not (qryCols.State in [dsEdit,dsInsert]) then
        qryCols.Edit;
      qryCols.FieldByName('REPORT_COLOR').Value:=ColorDialog.Color;
      qryCols.FieldByName('REPORT_COL_ID').FocusControl;
    end;
  finally
    ColorDialog.Free;
  end;

end;

procedure TfrmReportList.dxDBGrid3Column10CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: WideString; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  AColor := ANode.Values[dxDBGrid3REPORT_COLOR.Index];
end;

procedure TfrmReportList.qryReportListBeforeDelete(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowDelete(DataSet,19) then Abort;
end;

procedure TfrmReportList.qryReportListBeforeEdit(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowEdit(19) then Abort;
end;

procedure TfrmReportList.qryReportListBeforeInsert(DataSet: TDataSet);
begin
  if Not MainDM.CheckAllowInsert(19) then Abort;
end;

procedure TfrmReportList.qryReportListNewRecord(DataSet: TDataSet);
begin
  qryReportList.FieldByName('HIEN_THI').Value := 1;
  qryReportList.FieldByName('REPORT_VIEW_TYPE').Value := 1;
end;

procedure TfrmReportList.gridReportTableEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var REPORT_COL_NAME_ID:string;
    REPORT_ITEM_NAME_ID:string;
begin
  REPORT_COL_NAME_ID := gridReportTable.FocusedField.FieldName;
  REPORT_ITEM_NAME_ID := Node.Values[1];
  if qryTable.Locate('REPORT_ITEM_NAME_ID;REPORT_COL_NAME_ID',VarArrayOf([REPORT_ITEM_NAME_ID,REPORT_COL_NAME_ID]),[]) then
  begin
    if (qryTable.FieldByName('REPORT_TYPE').AsInteger = 1) and (qryTable.FieldByName('REPORT_ISEXPRESSION').AsInteger = -1) then
      Allow := False;
  end;
end;

function TfrmReportList.CheckOtherCondition(value: variant;
  condition_type: integer): variant;
var ok:boolean;
begin
  ok := false;
  case condition_type of
  0:
    ok := true;
  1:
    if value > 0 then ok := true;
  2:
    if value >= 0 then ok := true;
  3:
    if value < 0 then
    begin
      value := abs(value);
      ok := true;
    end;
  end;

  if ok then result := value
  else result := 0;
end;

function TfrmReportList.abs(value: Variant): variant;
begin
  if value < 0 then result := 0 - value;
end;

procedure TfrmReportList.qryReportListCalcFields(DataSet: TDataSet);
begin
  if qryReportList.FieldByName('REPORT_PARENT').IsNull then
    qryReportList.FieldByName('ICON').AsInteger := 0
  else
    qryReportList.FieldByName('ICON').AsInteger := 1;
end;

procedure TfrmReportList.qryAccountNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('REPORT_ID').Value := qryTable.FieldByName('REPORT_ID').Value;
  DataSet.FieldByName('REPORT_COL_ID').Value := qryTable.FieldByName('REPORT_COL_ID').Value;
  DataSet.FieldByName('REPORT_ITEM_ID').Value := qryTable.FieldByName('REPORT_ITEM_ID').Value;
  Dataset.FieldByName('REPORT_COEFFICIENT').AsInteger := 1;
  Dataset.FieldByName('REPORT_CONDITIONS_TYPE').AsInteger := 0;
end;

procedure TfrmReportList.CreateGridValue3Change(var Grid: tdxdbgrid; qryItems,
  qryCols: TIBOQuery);
var
  Col: TdxDBTreeListColumn;
  ColAttach: TdxDBTreeListColumn;
  ok,oksum:boolean;
begin
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateGridHeader(Grid,qryItems,qryCols);

    grid.ColumnByFieldName('REPORT_ITEM_ID').Visible := False;
    grid.ColumnByFieldName('REPORT_ITEM_NAME_ID').Visible := False;
    grid.Bands[0].Visible := False;

    qryCols.First;
    while not qryCols.Eof do
    begin
      if qryCols.FieldByName('REPORT_OBJECT_TYPE').IsNull then
      begin
        case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
        0:
        begin
          col := grid.CreateColumn(TdxDBGridMaskColumn);
          col.Alignment := taLeftJustify;
          col.OnValidate := DBGridColumnValidateValue;
          col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;
        end;
        1:
        begin
          col := grid.CreateColumn(TdxDBGridCalcColumn);
          col.Alignment := taRightJustify;
          col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;

          with TdxDBGridCurrencyColumn(col) do
          begin
            DisplayFormat := TIENTE_FORMAT;
          end;

          ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
          ColAttach.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString+'TYPE';
          ColAttach.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString + 'TYPE';
          ColAttach.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
          ColAttach.BandIndex := 1;
          ColAttach.Visible := False;
        end;
        2:
        begin
          col := grid.CreateColumn(TdxDBGridDateColumn);
          col.Alignment := taCenter;
          with TdxDBGridDateColumn(col) do
          begin
          end;
        end;
        3:
        begin
          col := grid.CreateColumn(TdxDBGridTimeColumn);
          col.Alignment := taCenter;
        end;
        4:
        begin
          col := grid.CreateColumn(TdxDBGridGraphicColumn);
          col.Alignment := taCenter;

          with TdxDBGridGraphicColumn(Col) do
          begin
            OnAssignPicture := DBGraphicAssignPictureValue;
            OnGetGraphicClass := DBGraphicGetGraphicClassValue;
            CustomGraphic := True;
            Stretch := True;
          end;
        end;
        5:
        begin
          col := grid.CreateColumn(TdxDBGridCheckColumn);
          col.Alignment := taCenter;
        end;
        6:
        begin
          col := grid.CreateColumn(TdxDBGridDateColumn);
          col.Alignment := taCenter;
        end;
        end;

        col.Color := qryCols.FieldByName('REPORT_COLOR').Value;
        col.Width := qryCols.FieldByName('REPORT_WIDTH_VALUE').AsInteger;
        col.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString;
        col.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString;
        col.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
        col.HeaderAlignment := taCenter;
        col.BandIndex := 1;

        ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
        ColAttach.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString+'FORMAT';
        ColAttach.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString + 'FORMAT';
        ColAttach.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
        ColAttach.BandIndex := 1;
        ColAttach.Visible := False;
      end
      else
      begin
      end;
      qryCols.Next;
    end;
  end;
end;
// creategridvalue3
procedure TfrmReportList.CreateGridValue3(var Grid: tdxdbgrid; qryItems,
  qryCols: TIBOQuery);
var
  Col: TdxDBTreeListColumn;
  ColAttach: TdxDBTreeListColumn;
  ok,oksum:boolean;
begin
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateGridHeader(Grid,qryItems,qryCols);

    grid.ColumnByFieldName('REPORT_ITEM_ID').Visible := False;
    grid.ColumnByFieldName('REPORT_ITEM_NAME_ID').Visible := False;
    grid.Bands[0].Visible := False;

    qryCols.First;
    while not qryCols.Eof do
    begin
      if qryCols.FieldByName('REPORT_OBJECT_TYPE').IsNull then
      begin
        case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
        0:
        begin
          col := grid.CreateColumn(TdxDBGridMaskColumn);
          col.Alignment := taLeftJustify;
          col.OnValidate := DBGridColumnValidateValue;
          col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;
        end;
        1:
        begin
          col := grid.CreateColumn(TdxDBGridCalcColumn);
          col.Alignment := taRightJustify;
          col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;

          with TdxDBGridCurrencyColumn(col) do
          begin
            DisplayFormat := TIENTE_FORMAT;
          end;

          ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
          ColAttach.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString+'TYPE';
          ColAttach.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString + 'TYPE';
          ColAttach.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
          ColAttach.BandIndex := 1;
          ColAttach.Visible := False;
        end;
        2:
        begin
          col := grid.CreateColumn(TdxDBGridDateColumn);
          col.Alignment := taCenter;
          with TdxDBGridDateColumn(col) do
          begin
          end;
        end;
        3:
        begin
          col := grid.CreateColumn(TdxDBGridTimeColumn);
          col.Alignment := taCenter;
        end;
        4:
        begin
          col := grid.CreateColumn(TdxDBGridGraphicColumn);
          col.Alignment := taCenter;

          with TdxDBGridGraphicColumn(Col) do
          begin
            OnAssignPicture := DBGraphicAssignPictureValue;
            OnGetGraphicClass := DBGraphicGetGraphicClassValue;
            CustomGraphic := True;
            Stretch := True;
          end;
        end;
        5:
        begin
          col := grid.CreateColumn(TdxDBGridCheckColumn);
          col.Alignment := taCenter;
        end;
        6:
        begin
          col := grid.CreateColumn(TdxDBGridDateColumn);
          col.Alignment := taCenter;
        end;
        end;

        col.Color := qryCols.FieldByName('REPORT_COLOR').Value;
        col.Width := qryCols.FieldByName('REPORT_WIDTH_VALUE').AsInteger;
        col.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString;
        col.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString;
        col.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
        col.HeaderAlignment := taCenter;
        col.BandIndex := 1;

        ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
        ColAttach.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString+'FORMAT';
        ColAttach.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString + 'FORMAT';
        ColAttach.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
        ColAttach.BandIndex := 1;
        ColAttach.Visible := False;
      end
      else
      begin
        oksum := true;
        //Thinh
        //qryTemp.SQL.Text := ' select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString + ' order by object_id';
        qryTemp.SQL.Text := 'select distinct(object_id),object_name '+
        ' from IS_DT_YT_YT2_PS('+IntToStr(FromPeriod)+','+IntToStr(ToPeriod)+','+ qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString+')'+
        ' join object_list on ID=object_id and OTYPE = otype_id order by DEBT_LEN,object_id';
        qryTemp.Prepare;

        qryTemp.Open;
        qryTemp.First;
        while not qryTemp.Eof do
        begin
          ok := true;
          object_id := TRIM(AnsiReplaceStr(qryTemp.FieldByName('OBJECT_ID').asstring,'.','_'));
          case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
          0:
          begin
            col := grid.CreateColumn(TdxDBGridMaskColumn);
            col.Alignment := taLeftJustify;
            col.OnValidate := DBGridColumnValidateValue;
          end;
          1:
          begin
            // Kiem tra co dung khac 0 hay khong?
            memReportTable.Open;
            ok := false;
            memReportTable.First;
            while not memReportTable.Eof do
            begin
              if memReportTable.FieldByName(object_id).AsFloat <> 0 then
              begin
                ok := true;
                Break;
              end;
              memReportTable.Next;
            end;

            if ok then
            begin
              if oksum then
              begin
                oksum := false;
                col := grid.CreateColumn(TdxDBGridCalcColumn);
                col.Alignment := taRightJustify;
                col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;
                col.Color := qryCols.FieldByName('REPORT_COLOR').Value;
                col.Width := qryCols.FieldByName('REPORT_WIDTH_VALUE').AsInteger;
                col.Name := grid.Name + 'TONGCONG';
                col.FieldName := 'TONGCONG';
                col.Caption := UTF8Decode('TỔNG CỘNG');
                col.HeaderAlignment := taCenter;
                col.BandIndex := 1;

                with TdxDBGridCurrencyColumn(col) do
                begin
                  DisplayFormat := TIENTE_FORMAT;
                end;

                ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
                ColAttach.Name := grid.Name + 'TONGCONGTYPE';
                ColAttach.FieldName := 'TONGCONGTYPE';
                ColAttach.Caption := UTF8Decode('TỔNG CỘNG');

                ColAttach.BandIndex := 1;
                ColAttach.Visible := False;

                ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
                ColAttach.Name := grid.Name + 'TONGCONGFORMAT';
                ColAttach.FieldName := 'TONGCONGFORMAT';
                ColAttach.Caption := UTF8Decode('TỔNG CỘNG');
                ColAttach.BandIndex := 1;
                ColAttach.Visible := False;
              end;
              col := grid.CreateColumn(TdxDBGridCalcColumn);
              col.Alignment := taRightJustify;
              col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;

              with TdxDBGridCurrencyColumn(col) do
              begin
                DisplayFormat := TIENTE_FORMAT;
              end;

              ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
              ColAttach.Name := grid.Name + object_id + 'TYPE';
              ColAttach.FieldName := object_id + 'TYPE';
              ColAttach.Caption := qryTemp.FieldByName('OBJECT_NAME').value;
              ColAttach.BandIndex := 1;
              ColAttach.Visible := False;
            end;
          end;
          end;

          if ok then
          begin
            col.Color := qryCols.FieldByName('REPORT_COLOR').Value;
            col.Width := qryCols.FieldByName('REPORT_WIDTH_VALUE').AsInteger;
            col.Name := grid.Name + object_id;
            col.FieldName := object_id;
            col.Caption := qryTemp.FieldByName('OBJECT_NAME').value;
            col.HeaderAlignment := taCenter;
            col.BandIndex := 1;

            ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
            ColAttach.Name := grid.Name + object_id + 'FORMAT';
            ColAttach.FieldName := object_id + 'FORMAT';
            ColAttach.Caption := qryTemp.FieldByName('OBJECT_NAME').value;
            ColAttach.BandIndex := 1;
            ColAttach.Visible := False;
          end;

          qryTemp.Next;
        end;
        qryTemp.Close;
      end;
      qryCols.Next;
    end;
  end;
end;
procedure TfrmReportList.CreateGridValue5(var Grid: tdxdbgrid; qryItems,
  qryCols: TIBOQuery);
var
	Band: TdxTreeListBand;
  Col: TdxDBTreeListColumn;
  ColAttach: TdxDBTreeListColumn;
  ok,oksum:boolean;
  i:integer;
begin
	for i:=2 to grid.bands.count-1 do
  	grid.Bands.Delete(2);
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateGridHeader(Grid,qryItems,qryCols);

    grid.ColumnByFieldName('REPORT_ITEM_ID').Visible := False;
    grid.ColumnByFieldName('REPORT_ITEM_NAME_ID').Visible := False;
    grid.Bands[0].Visible := False;

    qryCols.First;
    while not qryCols.Eof do
    begin
      if qryCols.FieldByName('REPORT_OBJECT_TYPE').IsNull then
      begin
        case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
        0:
        begin
          col := grid.CreateColumn(TdxDBGridMaskColumn);
          col.Alignment := taLeftJustify;
          col.OnValidate := DBGridColumnValidateValue;
          col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;
        end;
        1:
        begin
          col := grid.CreateColumn(TdxDBGridCalcColumn);
          col.Alignment := taRightJustify;
          col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;

          with TdxDBGridCurrencyColumn(col) do
          begin
            DisplayFormat := TIENTE_FORMAT;
          end;

          ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
          ColAttach.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString+'TYPE';
          ColAttach.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString + 'TYPE';
          ColAttach.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
          ColAttach.BandIndex := 1;
          ColAttach.Visible := False;
        end;
        2:
        begin
          col := grid.CreateColumn(TdxDBGridDateColumn);
          col.Alignment := taCenter;
          with TdxDBGridDateColumn(col) do
          begin
          end;
        end;
        3:
        begin
          col := grid.CreateColumn(TdxDBGridTimeColumn);
          col.Alignment := taCenter;
        end;
        4:
        begin
          col := grid.CreateColumn(TdxDBGridGraphicColumn);
          col.Alignment := taCenter;

          with TdxDBGridGraphicColumn(Col) do
          begin
            OnAssignPicture := DBGraphicAssignPictureValue;
            OnGetGraphicClass := DBGraphicGetGraphicClassValue;
            CustomGraphic := True;
            Stretch := True;
          end;
        end;
        5:
        begin
          col := grid.CreateColumn(TdxDBGridCheckColumn);
          col.Alignment := taCenter;
        end;
        6:
        begin
          col := grid.CreateColumn(TdxDBGridDateColumn);
          col.Alignment := taCenter;
        end;
        end;

        col.Color := qryCols.FieldByName('REPORT_COLOR').Value;
        col.Width := qryCols.FieldByName('REPORT_WIDTH_VALUE').AsInteger;
        col.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString;
        col.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString;
        col.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
        col.HeaderAlignment := taCenter;
        col.BandIndex := 1;

        ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
        ColAttach.Name := grid.Name + qryCols.fieldbyname('REPORT_COL_ID').AsString+'FORMAT';
        ColAttach.FieldName := qryCols.fieldbyname('REPORT_COL_NAME_ID').AsString + 'FORMAT';
        ColAttach.Caption := qryCols.fieldbyname('REPORT_COL_NAME').Value;
        ColAttach.BandIndex := 1;
        ColAttach.Visible := False;
      end
      else
      begin
        oksum := true;
			qryTemp36.SQL.Text := ' select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT1_TYPE').AsString + ' order by object_id';
      qryTemp36.Prepare;
      qryTemp36.Open;
      qryTemp36.First;
      while not qryTemp36.Eof do
      begin
        // lay doi tuong
				doituong_id := TRIM(AnsiReplaceStr(qryTemp36.FieldByName('OBJECT_ID').asstring,'.','_'));
				// tao band cho moi doi tuong
        Band := grid.Bands.Add;
        Band.Caption := qryTemp36.fieldbyname('OBJECT_NAME').value;
        Band.Alignment := taCenter;
        // tao cac column cho moi yeu to
        qryTemp.SQL.Text := ' select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString + ' order by object_id';
        qryTemp.Prepare;
        qryTemp.Open;
        qryTemp.First;
        while not qryTemp.Eof do
        begin
          ok := true;
          object_id := TRIM(AnsiReplaceStr(qryTemp.FieldByName('OBJECT_ID').asstring,'.','_'));
          case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
          0:
          begin
            col := grid.CreateColumn(TdxDBGridMaskColumn);
            col.Alignment := taLeftJustify;
            col.OnValidate := DBGridColumnValidateValue;
          end;
          1:
          begin
            // Kiem tra co dung khac 0 hay khong?
            memReportTable.Open;
            ok := false;
            memReportTable.First;
            while not memReportTable.Eof do
            begin
              if memReportTable.FieldByName(object_id+'_'+doituong_id).AsFloat <> 0 then
              begin
                ok := true;
                Break;
              end;
              memReportTable.Next;
            end;

            if ok then
            begin
              if oksum then
              begin
                oksum := false;
                col := grid.CreateColumn(TdxDBGridCalcColumn);
                col.Alignment := taRightJustify;
                col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;
                col.Color := qryCols.FieldByName('REPORT_COLOR').Value;
                col.Width := qryCols.FieldByName('REPORT_WIDTH_VALUE').AsInteger;
                col.Name := grid.Name + 'TONGCONG';
                col.FieldName := 'TONGCONG';
                col.Caption := UTF8Decode('TỔNG CỘNG');
                col.HeaderAlignment := taCenter;
                col.BandIndex := Band.Index-1;

                with TdxDBGridCurrencyColumn(col) do
                begin
                  DisplayFormat := TIENTE_FORMAT;
                end;

                ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
                ColAttach.Name := grid.Name + 'TONGCONGTYPE';
                ColAttach.FieldName := 'TONGCONGTYPE';
                ColAttach.Caption := UTF8Decode('TỔNG CỘNG');

                ColAttach.BandIndex := Band.Index-1;
                ColAttach.Visible := False;

                ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
                ColAttach.Name := grid.Name + 'TONGCONGFORMAT';
                ColAttach.FieldName := 'TONGCONGFORMAT';
                ColAttach.Caption := UTF8Decode('TỔNG CỘNG');
                ColAttach.BandIndex := Band.Index-1;
                ColAttach.Visible := False;
              end;
              col := grid.CreateColumn(TdxDBGridCalcColumn);
              col.Alignment := taRightJustify;
              col.OnCustomDrawCell := gridReportTableColumnCustomDrawCell;

              with TdxDBGridCurrencyColumn(col) do
              begin
                DisplayFormat := TIENTE_FORMAT;
              end;
              // caption cot (yeu to)
              ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
              ColAttach.Name := grid.Name + object_id+'_'+doituong_id + 'TYPE';
              ColAttach.FieldName := object_id+'_'+doituong_id + 'TYPE';
              ColAttach.Caption := qryTemp.FieldByName('OBJECT_NAME').value;
              ColAttach.BandIndex := Band.Index;;
              ColAttach.Visible := False;
            end;
          end;
          end;

          if ok then
          begin
            col.Color := qryCols.FieldByName('REPORT_COLOR').Value;
            col.Width := qryCols.FieldByName('REPORT_WIDTH_VALUE').AsInteger;
            col.Name := grid.Name + object_id+'_'+doituong_id;
            col.FieldName := object_id+'_'+doituong_id;
            col.Caption := qryTemp.FieldByName('OBJECT_NAME').value;
            col.HeaderAlignment := taCenter;
            col.BandIndex := Band.Index;

            ColAttach := grid.CreateColumn(TdxDBGridSpinColumn);
            ColAttach.Name := grid.Name + object_id+'_'+doituong_id + 'FORMAT';
            ColAttach.FieldName := object_id+'_'+doituong_id + 'FORMAT';
            ColAttach.Caption := qryTemp.FieldByName('OBJECT_NAME').value;
            ColAttach.BandIndex := Band.Index;
            ColAttach.Visible := False;
          end;
         qryTemp.Next;
        end;

        if Col.BandIndex <> Band.Index then
        	grid.Bands.Delete(Band.Index);

        qryTemp.Close;
      	qryTemp36.Next;
      end;
      end;
      qryCols.Next;
    end;
  end;
end;
procedure TfrmReportList.CreateMemValue3Change(var Mem: TdxMemData; qryItems,
  qryCols: TIBOQuery);
var
  Field: TField;
  FieldAttach:TField;
begin
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateMemHeader(Mem,qryItems,qryCols);

{    FieldAttach := TBooleanField.Create(mem);
    FieldAttach.SetFieldType(ftBoolean);
    FieldAttach.FieldName := 'NOTDETAIL';
    FieldAttach.DataSet := mem;
    FieldAttach.FieldKind := fkData;}

{    FieldAttach := TWideStringField.Create(mem);
    FieldAttach.Size := 15;
    FieldAttach.SetFieldType(ftWideString);
    FieldAttach.FieldName := 'REPORT_IMAGETYPE';
    FieldAttach.DataSet := mem;
    FieldAttach.FieldKind := fkData;}

    qryCols.First;
    while not qryCols.Eof do
    begin
      if qryCols.FieldByName('REPORT_OBJECT_TYPE').IsNull then
      begin
        case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
        0:
        begin
          Field := TWideStringField.Create(mem);
          Field.Size := 6144;
          Field.SetFieldType(ftWideString);
          Field.Tag := 1;
        end;
        1:
        begin
          Field := TFloatField.Create(mem);
          Field.SetFieldType(ftFloat);
          TFloatField(Field).DisplayFormat := TIENTE_FORMAT;

          FieldAttach := TIntegerField.Create(mem);
          FieldAttach.SetFieldType(ftInteger);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString + 'TYPE';
          FieldAttach.DataSet := mem;
        end;
        end;

        Field.FieldKind := fkData;
        Field.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString;
        Field.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString + 'FORMAT';
        FieldAttach.DataSet := mem;
      end
      else  // no ngang
      begin
      end;

      qryCols.Next;
    end;
  end;
end;
// creatememvalue3
procedure TfrmReportList.CreateMemValue3(var Mem: TdxMemData; qryItems,
  qryCols: TIBOQuery);
var
  Field: TField;
  FieldAttach:TField;
begin
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateMemHeader(Mem,qryItems,qryCols);

    qryCols.First;
    while not qryCols.Eof do
    begin
      if qryCols.FieldByName('REPORT_OBJECT_TYPE').IsNull then
      begin
        case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
        0:
        begin
          //Thinh
          Field := TWideStringField.Create(mem);
          Field.Size := 200; //Thinh 6144;
          Field.SetFieldType(ftWideString);
          Field.Tag := 1;
        end;
        1:
        begin
          Field := TFloatField.Create(mem);
          Field.SetFieldType(ftFloat);
          TFloatField(Field).DisplayFormat := TIENTE_FORMAT;

          FieldAttach := TIntegerField.Create(mem);
          FieldAttach.SetFieldType(ftInteger);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString + 'TYPE';
          FieldAttach.DataSet := mem;
        end;
        end;

        Field.FieldKind := fkData;
        Field.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString;
        Field.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString + 'FORMAT';
        FieldAttach.DataSet := mem;
      end
      else  // no ngang //qryCols.FieldByName('REPORT_OBJECT_TYPE') = :madt_in , still in while loop
      begin
        //Tao cot tong cong truoc
        Field := TFloatField.Create(mem);
        Field.SetFieldType(ftFloat);
        TFloatField(Field).DisplayFormat := TIENTE_FORMAT;
        Field.FieldKind := fkData;
        Field.FieldName := 'TONGCONG';
        Field.DataSet := mem;

        Field := TWideStringField.Create(mem);
        Field.SetFieldType(ftWideString);
        Field.FieldKind := fkData;
        Field.FieldName := 'TONGCONGNAME';
        Field.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := 'TONGCONGNAMEFORMAT';
        FieldAttach.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := 'TONGCONGTYPE';
        FieldAttach.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := 'TONGCONGFORMAT';
        FieldAttach.DataSet := mem;
        //Thinh sua
        //qryTemp35.SQL.Text := ' select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString + ' order by object_id';
        qryTemp35.SQL.Text := 'select distinct(object_id),object_name '+
          ' from IS_DT_YT_YT2_PS('+IntToStr(FromPeriod)+','+IntToStr(ToPeriod)+','+ qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString+')'+
          ' join object_list on ID=object_id and OTYPE = otype_id order by DEBT_LEN,object_id';
        qryTemp35.Prepare;

        // Tao cac cot phat sinh, moi cot la 1 doi tuong tu qury35
        // voi moi doi tuong
        qryTemp35.Open;
        qryTemp35.First;
        while not qryTemp35.Eof do
        begin
          object_id := TRIM(AnsiReplaceStr(qryTemp35.FieldByName('OBJECT_ID').AsString,'.','_'));
          case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
          0:
          begin
            //Thinh
            Field := TWideStringField.Create(mem);
            Field.Size := 6144;
            Field.SetFieldType(ftWideString);
            Field.Tag := 1;
          end;
          1:
          begin
            Field := TFloatField.Create(mem);
            Field.SetFieldType(ftFloat);
            TFloatField(Field).DisplayFormat := TIENTE_FORMAT;

            FieldAttach := TWideStringField.Create(mem);
            FieldAttach.Size := 200;//6144;  //Thinh sua
            FieldAttach.SetFieldType(ftWideString);
            FieldAttach.FieldKind := fkData;
            FieldAttach.FieldName := object_id +'NAME';
            FieldAttach.DataSet := mem;

            FieldAttach := TIntegerField.Create(mem);
            FieldAttach.SetFieldType(ftInteger);
            FieldAttach.FieldKind := fkData;
            FieldAttach.FieldName := object_id + 'TYPE';
            FieldAttach.DataSet := mem;

            FieldAttach := TIntegerField.Create(mem);
            FieldAttach.SetFieldType(ftInteger);
            FieldAttach.FieldKind := fkData;
            FieldAttach.FieldName := object_id + 'NAMETYPE';
            FieldAttach.DataSet := mem;
          end;
          end;

          Field.FieldKind := fkData;
          Field.FieldName := object_id;
          Field.DataSet := mem;

          FieldAttach := TIntegerField.Create(mem);
          FieldAttach.SetFieldType(ftInteger);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := object_id + 'FORMAT';
          FieldAttach.DataSet := mem;

          FieldAttach := TIntegerField.Create(mem);
          FieldAttach.SetFieldType(ftInteger);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := object_id + 'NAMEFORMAT';
          FieldAttach.DataSet := mem;

          qryTemp35.Next;
        end; //Chay het doi tuong roi
        //van con trong vong lap col, moi DT duoc sinh ra col tuy vao dinh nghia cong thuc
        // Field phu   //De lam gi vay troi
        OBJECT_ID := TEMPFIELD;

        Field := TFloatField.Create(mem);
        Field.SetFieldType(ftFloat);
        TFloatField(Field).DisplayFormat := TIENTE_FORMAT;

        FieldAttach := TWideStringField.Create(mem);
        FieldAttach.Size := 200;//6144;  //Thinh sua
        FieldAttach.SetFieldType(ftWideString);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := object_id +'NAME';
        FieldAttach.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := object_id + 'TYPE';
        FieldAttach.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := object_id + 'NAMETYPE';
        FieldAttach.DataSet := mem;

        Field.FieldKind := fkData;
        Field.FieldName := object_id;
        Field.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := object_id + 'FORMAT';
        FieldAttach.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := object_id + 'NAMEFORMAT';
        FieldAttach.DataSet := mem;
        // Het field phu

        qryTemp35.Close;
      end;

      qryCols.Next;
    end;
  end;
end;
procedure TfrmReportList.CreateMemValue5(var Mem: TdxMemData; qryItems,
  qryCols: TIBOQuery);
var
  Field: TField;
  FieldAttach:TField;
begin
  if(qryCols.RecordCount <> 0) and (qryItems.RecordCount <> 0)then
  begin
    CreateMemHeader(Mem,qryItems,qryCols);

    qryCols.First;
    while not qryCols.Eof do
    begin
      if qryCols.FieldByName('REPORT_OBJECT_TYPE').IsNull then
      begin
        case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
        0:
        begin
          Field := TWideStringField.Create(mem);
          Field.Size := 6144;
          Field.SetFieldType(ftWideString);
          Field.Tag := 1;
        end;
        1:
        begin
          Field := TFloatField.Create(mem);
          Field.SetFieldType(ftFloat);
          TFloatField(Field).DisplayFormat := TIENTE_FORMAT;

          FieldAttach := TIntegerField.Create(mem);
          FieldAttach.SetFieldType(ftInteger);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString + 'TYPE';
          FieldAttach.DataSet := mem;
        end;
        end;

        Field.FieldKind := fkData;
        Field.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString;
        Field.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := qryCols.fieldByName('REPORT_COL_NAME_ID').AsString + 'FORMAT';
        FieldAttach.DataSet := mem;
      end
      else  // no ngang (dt - yt)
      begin
        Field := TFloatField.Create(mem);
        Field.SetFieldType(ftFloat);
        TFloatField(Field).DisplayFormat := TIENTE_FORMAT;
        Field.FieldKind := fkData;
        Field.FieldName := 'TONGCONG';
        Field.DataSet := mem;

        Field := TWideStringField.Create(mem);
        Field.SetFieldType(ftWideString);
        Field.FieldKind := fkData;
        Field.FieldName := 'TONGCONGNAME';
        Field.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := 'TONGCONGNAMEFORMAT';
        FieldAttach.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := 'TONGCONGTYPE';
        FieldAttach.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := 'TONGCONGFORMAT';
        FieldAttach.DataSet := mem;

			qryTemp36.SQL.Text := ' select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT1_TYPE').AsString + ' order by object_id';
      qryTemp36.Prepare;
      qryTemp36.Open;
      qryTemp36.First;
      while not qryTemp36.Eof do
      begin
      	// lay doi tuong
	      doituong_id := TRIM(AnsiReplaceStr(qryTemp36.FieldByName('OBJECT_ID').AsString,'.','_'));
   			// lay cac yeu to theo doi tuong nay
        qryTemp35.SQL.Text := ' select object_id,object_name from object_list where object_list.otype_id = ' + qryCols.FieldByName('REPORT_OBJECT_TYPE').AsString + ' order by object_id';
        qryTemp35.Prepare;
        qryTemp35.Open;
        qryTemp35.First;
        while not qryTemp35.Eof do
        begin
          // lay yeu to
          object_id := TRIM(AnsiReplaceStr(qryTemp35.FieldByName('OBJECT_ID').AsString,'.','_'));
          case qryCols.FieldByName('REPORT_COL_TYPE').AsInteger of
          0:
          begin
            Field := TWideStringField.Create(mem);
            Field.Size := 6144;
            Field.SetFieldType(ftWideString);
            Field.Tag := 1;
          end;
          1:
          begin
            Field := TFloatField.Create(mem);
            Field.SetFieldType(ftFloat);
            TFloatField(Field).DisplayFormat := TIENTE_FORMAT;

            FieldAttach := TWideStringField.Create(mem);
            FieldAttach.Size := 6144;
            FieldAttach.SetFieldType(ftWideString);
            FieldAttach.FieldKind := fkData;
            FieldAttach.FieldName := object_id + '_' + doituong_id + 'NAME';
            FieldAttach.DataSet := mem;

            FieldAttach := TIntegerField.Create(mem);
            FieldAttach.SetFieldType(ftInteger);
            FieldAttach.FieldKind := fkData;
            FieldAttach.FieldName := object_id + '_' + doituong_id + 'TYPE';
            FieldAttach.DataSet := mem;

            FieldAttach := TIntegerField.Create(mem);
            FieldAttach.SetFieldType(ftInteger);
            FieldAttach.FieldKind := fkData;
            FieldAttach.FieldName := object_id + '_' + doituong_id + 'NAMETYPE';
            FieldAttach.DataSet := mem;
          end;
          end;

          Field.FieldKind := fkData;
          Field.FieldName := object_id + '_' + doituong_id;
          Field.DataSet := mem;

          FieldAttach := TIntegerField.Create(mem);
          FieldAttach.SetFieldType(ftInteger);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := object_id + '_' + doituong_id + 'FORMAT';
          FieldAttach.DataSet := mem;

          FieldAttach := TIntegerField.Create(mem);
          FieldAttach.SetFieldType(ftInteger);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := object_id + '_' + doituong_id + 'NAMEFORMAT';
          FieldAttach.DataSet := mem;

          FieldAttach := TWideStringField.Create(mem);
          FieldAttach.SetFieldType(ftString);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := object_id + '_' + doituong_id + 'NAMEDOITUONG';
          //FieldAttach.Tag := 1;
          FieldAttach.DataSet := mem;

          FieldAttach := TIntegerField.Create(mem);
          FieldAttach.SetFieldType(ftInteger);
          FieldAttach.FieldKind := fkData;
          FieldAttach.FieldName := object_id + '_' + doituong_id + 'NAMEDOITUONGFORMAT';
          FieldAttach.DataSet := mem;

          qryTemp35.Next;
        end;

        // Field phu
        OBJECT_ID := TEMPFIELD;

        Field := TFloatField.Create(mem);
        Field.SetFieldType(ftFloat);
        TFloatField(Field).DisplayFormat := TIENTE_FORMAT;

        FieldAttach := TWideStringField.Create(mem);
        FieldAttach.Size := 6144;
        FieldAttach.SetFieldType(ftWideString);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := object_id + '_' + doituong_id + 'NAME';
        FieldAttach.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := object_id + '_' + doituong_id + 'TYPE';
        FieldAttach.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := object_id + '_' + doituong_id + 'NAMETYPE';
        FieldAttach.DataSet := mem;

        Field.FieldKind := fkData;
        Field.FieldName := object_id + '_' + doituong_id;
        Field.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := object_id + '_' + doituong_id + 'FORMAT';
        FieldAttach.DataSet := mem;

        FieldAttach := TIntegerField.Create(mem);
        FieldAttach.SetFieldType(ftInteger);
        FieldAttach.FieldKind := fkData;
        FieldAttach.FieldName := object_id + '_' + doituong_id + 'NAMEFORMAT';
        FieldAttach.DataSet := mem;
        // Het field phu

        qryTemp35.Close;
        qryTemp36.Next;
      end; // end while qryTemp36
      end;

      qryCols.Next;
    end;
  end;
end;
function TfrmReportList.Cal3(var qryTable:TIBOQuery;Aobject_id: string): variant;
var  i:integer;
begin
  qryUpdate.SQL.Text := ' UPDATE F_DEFINE_REPORT ' +
                        ' SET REPORT_VALUE = :VALUEX ' +
                        ' WHERE REPORT_ID = :REPORT_ID AND ' +
                        '       REPORT_ITEM_ID = :REPORT_ITEM_ID AND ' +
                        '       REPORT_COL_ID = :REPORT_COL_ID';
  qryUpdate.Prepare;

  case qryTable.FieldByName('REPORT_ISEXPRESSION').AsInteger of
  -1: result := 0;
  0:
  begin
    result := qryTable.FieldByName('REPORT_VALUE').Value;
  end;
  1:
  begin
    with expReportCalculator do
    begin
      Expression := trim(qryTable.FieldByName('REPORT_EXPRESSION').AsString);
      if Expression <> '' then
      begin
        object_id := Aobject_id;
        result := CheckOtherCondition(AnalyzeExpression, qryTable.FieldByName('REPORT_OTHER_CONDITION').AsInteger);

        qryUpdate.ParamByName('REPORT_ID').Value := qryTable.fieldbyname('REPORT_ID').Value;
        qryUpdate.ParamByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').Value;
        qryUpdate.ParamByName('REPORT_COL_ID').Value := qryTable.fieldbyname('REPORT_COL_ID').Value;

        if notdetail then
          qryUpdate.ParamByName('VALUEX').Value := 0
        else
          qryUpdate.ParamByName('VALUEX').Value := result;
        qryUpdate.ExecSQL;
        qryUpdate.IB_Transaction.CommitRetaining;
      end;
    end;
  end;
  2:
  begin
    qryTemp.SQL.Text := trim(qryTable.FieldByName('REPORT_SQL').AsString);
    if qryTemp.SQL.Text <> '' then
    begin
      object_id := Aobject_id;
      qryTemp.Prepare;
      for i := 0 to qryTemp.ParamCount - 1 do
        qryTemp.ParamByName(qryTemp.Params[i].Name).Value := GetParamValue(qryTemp.Params[i].Name);

      qryTemp.Open;

      result := CheckOtherCondition(qryTemp.Fields[0].AsFloat, qryTable.FieldByName('REPORT_OTHER_CONDITION').AsInteger);

      qryUpdate.ParamByName('REPORT_ID').Value := qryTable.fieldbyname('REPORT_ID').Value;
      qryUpdate.ParamByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').Value;
      qryUpdate.ParamByName('REPORT_COL_ID').Value := qryTable.fieldbyname('REPORT_COL_ID').Value;
      if notdetail then
        if object_id = TEMPFIELD then
//            qryUpdate.ParamByName('VALUEX').Value
        else
         qryUpdate.ParamByName('VALUEX').Value := 0
      else
        qryUpdate.ParamByName('VALUEX').Value := result;
      qryUpdate.ExecSQL;
      qryUpdate.IB_Transaction.CommitRetaining;

      qryTemp.Close;
    end;
  end;
  3:
  begin
    qryTemp.SQL.Text := 'select valuex from MACRO_CAL_F_REPORT(:REPORT_ID,:REPORT_COL_ID,:REPORT_ITEM_ID,:TUKY,:DENKY,:BRANCH_ID)';
    qryTemp.Prepare;

    for i := 0 to qryTemp.ParamCount - 1 do
      qryTemp.ParamByName(qryTemp.Params[i].Name).Value := GetParamValue(qryTemp.Params[i].Name);

    qryUpdate.ParamByName('REPORT_ID').Value := qryTable.fieldbyname('REPORT_ID').Value;
    qryUpdate.ParamByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').Value;
    qryUpdate.ParamByName('REPORT_COL_ID').Value := qryTable.fieldbyname('REPORT_COL_ID').Value;

    qryTemp.Open;
    result := qryTemp.fieldbyname('VALUEX').Value;
    qryTemp.Close;
    end;
  end;

  qryUpdate.Close;
end;
function TfrmReportList.Cal5(var qryTable:TIBOQuery;Aobject_id: string;Adoituong_id: string): variant;
var  i:integer;
begin
  qryUpdate.SQL.Text := ' UPDATE F_DEFINE_REPORT ' +
                        ' SET REPORT_VALUE = :VALUEX ' +
                        ' WHERE REPORT_ID = :REPORT_ID AND ' +
                        '       REPORT_ITEM_ID = :REPORT_ITEM_ID AND ' +
                        '       REPORT_COL_ID = :REPORT_COL_ID';
  qryUpdate.Prepare;

  case qryTable.FieldByName('REPORT_ISEXPRESSION').AsInteger of
  -1: result := 0;
  0:
  begin
    result := qryTable.FieldByName('REPORT_VALUE').Value;
  end;
  1:
  begin
    with expReportCalculator do
    begin
      Expression := trim(qryTable.FieldByName('REPORT_EXPRESSION').AsString);
      if Expression <> '' then
      begin
        object_id := Aobject_id;
        doituong_id := Adoituong_id;
        result := CheckOtherCondition(AnalyzeExpression, qryTable.FieldByName('REPORT_OTHER_CONDITION').AsInteger);

        qryUpdate.ParamByName('REPORT_ID').Value := qryTable.fieldbyname('REPORT_ID').Value;
        qryUpdate.ParamByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').Value;
        qryUpdate.ParamByName('REPORT_COL_ID').Value := qryTable.fieldbyname('REPORT_COL_ID').Value;

        if notdetail then
          qryUpdate.ParamByName('VALUEX').Value := 0
        else
          qryUpdate.ParamByName('VALUEX').Value := result;
        qryUpdate.ExecSQL;
        qryUpdate.IB_Transaction.CommitRetaining;
      end;
    end;
  end;
  2:
  begin
    qryTemp.SQL.Text := trim(qryTable.FieldByName('REPORT_SQL').AsString);
    if qryTemp.SQL.Text <> '' then
    begin
      object_id := Aobject_id;
      qryTemp.Prepare;
      for i := 0 to qryTemp.ParamCount - 1 do
        qryTemp.ParamByName(qryTemp.Params[i].Name).Value := GetParamValue(qryTemp.Params[i].Name);

      qryTemp.Open;

      result := CheckOtherCondition(qryTemp.Fields[0].AsFloat, qryTable.FieldByName('REPORT_OTHER_CONDITION').AsInteger);

      qryUpdate.ParamByName('REPORT_ID').Value := qryTable.fieldbyname('REPORT_ID').Value;
      qryUpdate.ParamByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').Value;
      qryUpdate.ParamByName('REPORT_COL_ID').Value := qryTable.fieldbyname('REPORT_COL_ID').Value;
      if notdetail then
        if object_id = TEMPFIELD then
//            qryUpdate.ParamByName('VALUEX').Value
        else
         qryUpdate.ParamByName('VALUEX').Value := 0
      else
        qryUpdate.ParamByName('VALUEX').Value := result;
      qryUpdate.ExecSQL;
      qryUpdate.IB_Transaction.CommitRetaining;

      qryTemp.Close;
    end;
  end;
  3:
  begin
    qryTemp.SQL.Text := 'select valuex from MACRO_CAL_F_REPORT(:REPORT_ID,:REPORT_COL_ID,:REPORT_ITEM_ID,:TUKY,:DENKY,:BRANCH_ID)';
    qryTemp.Prepare;

    for i := 0 to qryTemp.ParamCount - 1 do
      qryTemp.ParamByName(qryTemp.Params[i].Name).Value := GetParamValue(qryTemp.Params[i].Name);

    qryUpdate.ParamByName('REPORT_ID').Value := qryTable.fieldbyname('REPORT_ID').Value;
    qryUpdate.ParamByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').Value;
    qryUpdate.ParamByName('REPORT_COL_ID').Value := qryTable.fieldbyname('REPORT_COL_ID').Value;

    qryTemp.Open;
    result := qryTemp.fieldbyname('VALUEX').Value;
    qryTemp.Close;
    end;
  5:
  begin
    qryTemp.SQL.Text := 'select valuex from MACRO_CAL_F_REPORT(:REPORT_ID,:REPORT_COL_ID,:REPORT_ITEM_ID,:TUKY,:DENKY,:BRANCH_ID)';
    qryTemp.Prepare;

    for i := 0 to qryTemp.ParamCount - 1 do
      qryTemp.ParamByName(qryTemp.Params[i].Name).Value := GetParamValue(qryTemp.Params[i].Name);

    qryUpdate.ParamByName('REPORT_ID').Value := qryTable.fieldbyname('REPORT_ID').Value;
    qryUpdate.ParamByName('REPORT_ITEM_ID').Value := qryTable.fieldbyname('REPORT_ITEM_ID').Value;
    qryUpdate.ParamByName('REPORT_COL_ID').Value := qryTable.fieldbyname('REPORT_COL_ID').Value;

    qryTemp.Open;
    result := qryTemp.fieldbyname('VALUEX').Value;
    qryTemp.Close;
    end;
  end;

  qryUpdate.Close;
end;
procedure TfrmReportList.CopyMem(var FromMem: tdxMemData);
var i:integer;
  ok:boolean;
  Field: TField;
  temp:tdxmemdata;
  name:string;
  FieldName:string;
  sum:variant;
begin
  temp := tdxMemData.Create(self);
  for i := 0 to frommem.FieldCount - 1 do
  begin
    FieldName := frommem.Fields[i].FieldName;
    case frommem.Fields[i].DataType of
    ftfloat:
    begin
      if FieldName = 'TONGCONG' then
        ok := true
      else
      begin
        ok := false;
        FromMem.First;
        while not frommem.Eof do
        begin
          if FromMem.Fields[i].Value <> 0 then
          begin
            ok := True;
            break;
          end;
          FromMem.Next;
        end;
      end;

      if ok then
      begin
        Field := TFloatField.Create(temp);
        Field.SetFieldType(ftfloat);
        Field.FieldKind := fkData;
        Field.FieldName := FieldName;
        Field.DataSet := temp;
        TFloatField(Field).DisplayFormat := TIENTE_FORMAT;

        Field := TIntegerField.Create(temp);
        Field.SetFieldType(ftInteger);
        Field.FieldKind := fkData;
        Field.FieldName := FieldName + 'TYPE';
        Field.DataSet := temp;

        Field := TIntegerField.Create(temp);
        Field.SetFieldType(ftInteger);
        Field.FieldKind := fkData;
        Field.FieldName := FieldName + 'FORMAT';
        Field.DataSet := temp;
      end
    end;
    ftWideString:
    begin
      Field := TWideStringField.Create(temp);
      Field.Size := 6144;
      Field.SetFieldType(ftWideString);
      Field.Tag := frommem.Fields[i].Tag;

      Field.FieldKind := fkData;
      Field.FieldName := FieldName;
      Field.DataSet := temp;

      if (FieldName <> 'REPORT_ITEM_NAME_ID') and (FieldName <> 'REPORT_IMAGETYPE') then
      begin
        Field := TIntegerField.Create(temp);
        Field.SetFieldType(ftInteger);
        Field.FieldKind := fkData;
        Field.FieldName := FieldName + 'FORMAT';
        Field.DataSet := temp;
      end;
    end;
    ftInteger:
    begin
      if FieldName = 'REPORT_ITEM_ID' then
      begin
        Field := TIntegerField.Create(temp);
        Field.SetFieldType(ftInteger);

        Field.FieldKind := fkData;
        Field.FieldName := FieldName;
        Field.DataSet := temp;
      end;
    end;
    end;
  end;

  temp.Open;
  frommem.First;
  while not frommem.Eof do
  begin
    temp.Insert;

    sum := 0;
    for i := 0 to temp.FieldCount - 1 do
    begin
      FieldName := temp.Fields[i].FieldName;
      temp.Fields[i].Value := frommem.fieldbyname(FieldName).Value;

      if (temp.Fields[i].DataType = ftfloat) and (FieldName <> 'TONGCONG')then
        sum := sum + temp.Fields[i].Value;
    end;

    temp.FieldByName('TONGCONG').Value := sum;

    temp.Post;
    frommem.Next;
  end;

  name := FromMem.Name;
  FromMem.Free;
  temp.Name := name;
  frommem := temp;
end;

procedure TfrmReportList.CreateMemTable3(var Mem: TdxMemData);
var i,j,k:integer;
    FieldReport,FieldMem:TField;
    xoa : boolean;
    memNew : tdxMemData;
begin
  memReportTable.DisableControls;
  // sao chep cac field tu memReportTable sang memNew
if (qryReportListREPORT_ID.AsString = 'OSC_CP_CT') or (qryReportListREPORT_ID.AsString = 'OSC_CP_NV') then
begin
	memNew := tdxMemData.Create(self);
  for j := 0 to memReportTable.FieldCount - 1 do
  begin
    FieldReport := memReportTable.Fields[j];
    if FieldReport.FieldName <> 'RecId' then
    begin
      if FieldReport.DataType = ftInteger then
      begin
				FieldMem := TIntegerField.Create(memNew);
        FieldMem.Size := FieldReport.Size;
  		  FieldMem.Tag := FieldReport.Tag;
	  	  FieldMem.FieldKind := fkData;
  	  	FieldMem.FieldName := FieldReport.FieldName;
	    	FieldMem.DataSet := memNew;
      end
      else if FieldReport.DataType = ftWideString then
      begin
				FieldMem := TWideStringField.Create(memNew);
        FieldMem.Size := FieldReport.Size;
  		  FieldMem.Tag := FieldReport.Tag;
	  	  FieldMem.FieldKind := fkData;
  	  	FieldMem.FieldName := FieldReport.FieldName;
	    	FieldMem.DataSet := memNew;
      end
			else if FieldReport.DataType = ftFloat then
      begin
				FieldMem := TFloatField.Create(memNew);
        FieldMem.Size := FieldReport.Size;
  		  FieldMem.Tag := FieldReport.Tag;
	  	  FieldMem.FieldKind := fkData;
  	  	FieldMem.FieldName := FieldReport.FieldName;
	    	FieldMem.DataSet := memNew;
      end
      else
			begin
				FieldMem := TField.Create(memNew);
        FieldMem.Size := FieldReport.Size;
  		  FieldMem.Tag := FieldReport.Tag;
        FieldMem.SetFieldType(FieldReport.DataType);
	  	  FieldMem.FieldKind := fkData;
  	  	FieldMem.FieldName := FieldReport.FieldName;
	    	FieldMem.DataSet := memNew;
      end;
    end;
  end;
  // sao chep cac record tu memReportTable sang memNew
	memReportTable.First;
  memNew.Open;
  while not memReportTable.Eof do
  begin
    memNew.Insert;
		for j := 0 to memReportTable.FieldCount - 1 do
    	memNew.Fields[j].Value := memReportTable.Fields[j].Value;
  	memReportTable.Next;
  end;
  memNew.Post;
  // xoa cac dong tat ca deu bang 0
  memReportTable.First;
  while not memReportTable.Eof do
  begin
    xoa := true;
		for j := 0 to memReportTable.FieldCount - 1 do
	  	if memReportTable.Fields[j].DataType = ftFloat then
      	if memReportTable.Fields[j].AsFloat <> 0 then
        begin
        	xoa := false;
					break;
        end;

    if xoa = true then
    	memReportTable.Delete
    else
			memReportTable.Next;
  end;
end;

  // lay cac field header
  for i := 0 to memReportTable.FieldCount - 1 do
  begin
    FieldReport := memReportTable.Fields[i];
    case FieldReport.DataType of
    ftFloat:
    begin
    end;
    ftWideString:
    begin
      if FieldReport.Tag = 1 then
      begin
        FieldMem := TWideStringField.Create(mem);
        FieldMem.Tag := 1;
        FieldMem.Size := 6144;
        FieldMem.SetFieldType(ftWideString);
        FieldMem.FieldKind := fkData;
        FieldMem.FieldName := FieldReport.FieldName;
        FieldMem.DataSet := mem;

        FieldMem := TIntegerField.Create(mem);
        FieldMem.SetFieldType(ftInteger);
        FieldMem.FieldKind := fkData;
        FieldMem.FieldName := FieldReport.FieldName+'FORMAT';
        FieldMem.DataSet := mem;
      end;
    end;
    end;
  end;

  // Tao 5 object
  for i := 1 to 5 do
  begin
    FieldMem := TWideStringField.Create(mem);
    FieldMem.Size := 6144;
    FieldMem.SetFieldType(ftWideString);
    FieldMem.FieldKind := fkData;
    FieldMem.FieldName := 'OBJECT_NAME_'+inttostr(i);
    FieldMem.DataSet := mem;

    FieldMem := TIntegerField.Create(mem);
    FieldMem.SetFieldType(ftInteger);
    FieldMem.FieldKind := fkData;
    FieldMem.FieldName := 'OBJECT_NAME_'+inttostr(i)+'FORMAT';
    FieldMem.DataSet := mem;

    FieldMem := TFloatField.Create(mem);
    FieldMem.SetFieldType(ftFloat);
    FieldMem.FieldKind := fkData;
    FieldMem.FieldName := 'OBJECT_VALUE_'+inttostr(i);
    FieldMem.DataSet := mem;

    FieldMem := TIntegerField.Create(mem);
    FieldMem.SetFieldType(ftInteger);
    FieldMem.FieldKind := fkData;
    FieldMem.FieldName := 'OBJECT_VALUE_'+inttostr(i)+'FORMAT';
    FieldMem.DataSet := mem;
  end;

  Mem.Open;
  MemReportTable.SortedField := 'RecId';

  i := 0;
  while i < (memReportTable.FieldCount-1) do
  begin
    if (memReportTable.Fields[i].DataType = ftFloat) then
    begin
      memReportTable.First;
      while not memReportTable.Eof do
      begin
        mem.Insert;

        for j := 0 to memReportTable.FieldCount - 1 do
        begin
          FieldReport := memReportTable.Fields[j];
          if (FieldReport.Tag = 1) and (FieldReport.DataType = ftWideString) then
          begin
            mem.FieldByName(FieldReport.FieldName).Value := FieldReport.Value;
            mem.FieldByName(FieldReport.FieldName+'FORMAT').Value := memReportTable.FieldbyName(FieldReport.FieldName+'FORMAT').Value;
          end;
        end;

        j := 1; k := i;
        while j < 6 do
        begin
          if k < memReportTable.FieldCount then
          begin
            FieldReport := memReportTable.Fields[k];
            if (FieldReport.FieldName <> TEMPFIELD) and (FieldReport.DataType = ftFloat) then
            begin
              mem.FieldByName('OBJECT_NAME_'+inttostr(j)).Value := memReportTable.FieldByName(FieldReport.FieldName+'NAME').Value;
              mem.FieldByName('OBJECT_NAME_'+inttostr(j)+'FORMAT').Value := memReportTable.FieldByName(FieldReport.FieldName+'NAMEFORMAT').Value;
              mem.FieldByName('OBJECT_VALUE_'+inttostr(j)).Value := memReportTable.FieldByName(FieldReport.FieldName).Value;
              //TFloatField(mem.FieldByName('OBJECT_VALUE_'+inttostr(j))).DisplayFormat := TIENTE_FORMAT;
              mem.FieldByName('OBJECT_VALUE_'+inttostr(j)+'FORMAT').Value := memReportTable.FieldByName(FieldReport.FieldName+'FORMAT').Value;
              j := j + 1;
            end;
            k := k + 1;
          end
          else
            break;
        end;

        memReportTable.Next;
      end;
      i := k;
    end
    else
      i := i + 1;
  end;

  mem.SortedField := 'RecID';

if (qryReportListREPORT_ID.AsString = 'OSC_CP_CT') or (qryReportListREPORT_ID.AsString = 'OSC_CP_NV') then
begin
  // xoa cac record memReportTable
	memReportTable.First;
  while not memReportTable.Eof do
		memReportTable.Delete;
  // sao chep cac record tu memNew sang memReportTable
  memNew.First;
  while not memNew.Eof do
  begin
    memReportTable.Append;
		for j := 0 to memNew.FieldCount - 1 do
    	memReportTable.Fields[j].Value := memNew.Fields[j].Value;
  	memNew.Next;
  end;
  memNew.Free;
end;
  memReportTable.EnableControls;
  memReportTable.Refresh;
end;
procedure TfrmReportList.CreateMemTable5(var Mem: TdxMemData);
var i,j,k:integer;
    FieldReport,FieldMem:TField;
    xoa : boolean;
    memNew : tdxMemData;
begin
  memReportTable.DisableControls;
  // sao chep cac field tu memReportTable sang memNew
if (qryReportListREPORT_ID.AsString = 'OSC_CP_CT') or (qryReportListREPORT_ID.AsString = 'OSC_CP_NV') then
begin
	memNew := tdxMemData.Create(self);
  for j := 0 to memReportTable.FieldCount - 1 do
  begin
    FieldReport := memReportTable.Fields[j];
    if FieldReport.FieldName <> 'RecId' then
    begin
      if FieldReport.DataType = ftInteger then
      begin
				FieldMem := TIntegerField.Create(memNew);
        FieldMem.Size := FieldReport.Size;
  		  FieldMem.Tag := FieldReport.Tag;
	  	  FieldMem.FieldKind := fkData;
  	  	FieldMem.FieldName := FieldReport.FieldName;
	    	FieldMem.DataSet := memNew;
      end
      else if FieldReport.DataType = ftWideString then
      begin
				FieldMem := TWideStringField.Create(memNew);
        FieldMem.Size := FieldReport.Size;
  		  FieldMem.Tag := FieldReport.Tag;
	  	  FieldMem.FieldKind := fkData;
  	  	FieldMem.FieldName := FieldReport.FieldName;
	    	FieldMem.DataSet := memNew;
      end
			else if FieldReport.DataType = ftFloat then
      begin
				FieldMem := TFloatField.Create(memNew);
        FieldMem.Size := FieldReport.Size;
  		  FieldMem.Tag := FieldReport.Tag;
	  	  FieldMem.FieldKind := fkData;
  	  	FieldMem.FieldName := FieldReport.FieldName;
	    	FieldMem.DataSet := memNew;
      end
      else
			begin
				FieldMem := TField.Create(memNew);
        FieldMem.Size := FieldReport.Size;
  		  FieldMem.Tag := FieldReport.Tag;
        FieldMem.SetFieldType(FieldReport.DataType);
	  	  FieldMem.FieldKind := fkData;
  	  	FieldMem.FieldName := FieldReport.FieldName;
	    	FieldMem.DataSet := memNew;
      end;
    end;
  end;
  // sao chep cac record tu memReportTable sang memNew
	memReportTable.First;
  memNew.Open;
  while not memReportTable.Eof do
  begin
    memNew.Insert;
		for j := 0 to memReportTable.FieldCount - 1 do
    	memNew.Fields[j].Value := memReportTable.Fields[j].Value;
  	memReportTable.Next;
  end;
  memNew.Post;
  // xoa cac dong tat ca deu bang 0
  memReportTable.First;
  while not memReportTable.Eof do
  begin
    xoa := true;
		for j := 0 to memReportTable.FieldCount - 1 do
	  	if memReportTable.Fields[j].DataType = ftFloat then
      	if memReportTable.Fields[j].AsFloat <> 0 then
        begin
        	xoa := false;
					break;
        end;

    if xoa = true then
    	memReportTable.Delete
    else
			memReportTable.Next;
  end;
end;

  // lay cac field header
  for i := 0 to memReportTable.FieldCount - 1 do
  begin
    FieldReport := memReportTable.Fields[i];
    case FieldReport.DataType of
    ftFloat:
    begin
    end;
    ftWideString:
    begin
      if FieldReport.Tag = 1 then
      begin
        FieldMem := TWideStringField.Create(mem);
        FieldMem.Tag := 1;
        FieldMem.Size := 6144;
        FieldMem.SetFieldType(ftWideString);
        FieldMem.FieldKind := fkData;
        FieldMem.FieldName := FieldReport.FieldName;
        FieldMem.DataSet := mem;

        FieldMem := TIntegerField.Create(mem);
        FieldMem.SetFieldType(ftInteger);
        FieldMem.FieldKind := fkData;
        FieldMem.FieldName := FieldReport.FieldName+'FORMAT';
        FieldMem.DataSet := mem;
      end;
    end;
    end;
  end;

  // Tao 5 object
  for i := 1 to 5 do
  begin
    FieldMem := TWideStringField.Create(mem);
    FieldMem.Size := 6144;
    FieldMem.SetFieldType(ftWideString);
    FieldMem.FieldKind := fkData;
    FieldMem.FieldName := 'OBJECT_NAME_'+inttostr(i);
    FieldMem.DataSet := mem;

    FieldMem := TIntegerField.Create(mem);
    FieldMem.SetFieldType(ftInteger);
    FieldMem.FieldKind := fkData;
    FieldMem.FieldName := 'OBJECT_NAME_'+inttostr(i)+'FORMAT';
    FieldMem.DataSet := mem;

    FieldMem := TFloatField.Create(mem);
    FieldMem.SetFieldType(ftFloat);
    FieldMem.FieldKind := fkData;
    FieldMem.FieldName := 'OBJECT_VALUE_'+inttostr(i);
    FieldMem.DataSet := mem;

    FieldMem := TIntegerField.Create(mem);
    FieldMem.SetFieldType(ftInteger);
    FieldMem.FieldKind := fkData;
    FieldMem.FieldName := 'OBJECT_VALUE_'+inttostr(i)+'FORMAT';
    FieldMem.DataSet := mem;
  end;

  Mem.Open;
  MemReportTable.SortedField := 'RecId';

  i := 0;
  while i < (memReportTable.FieldCount-1) do
  begin
    if (memReportTable.Fields[i].DataType = ftFloat) then
    begin
      memReportTable.First;
      while not memReportTable.Eof do
      begin
        mem.Insert;

        for j := 0 to memReportTable.FieldCount - 1 do
        begin
          FieldReport := memReportTable.Fields[j];
          if (FieldReport.Tag = 1) and (FieldReport.DataType = ftWideString) then
          begin
            mem.FieldByName(FieldReport.FieldName).Value := FieldReport.Value;
            mem.FieldByName(FieldReport.FieldName+'FORMAT').Value := memReportTable.FieldbyName(FieldReport.FieldName+'FORMAT').Value;
          end;
        end;

        j := 1; k := i;
        while j < 6 do
        begin
          if k < memReportTable.FieldCount then
          begin
            FieldReport := memReportTable.Fields[k];
            if (FieldReport.FieldName <> TEMPFIELD) and (FieldReport.DataType = ftFloat) then
            begin
              if FieldReport.FieldName = 'TONGCONG' then
								mem.FieldByName('OBJECT_NAME_'+inttostr(j)).Value := memReportTable.FieldByName(FieldReport.FieldName+'NAME').Value
              else
	              mem.FieldByName('OBJECT_NAME_'+inttostr(j)).Value := memReportTable.FieldByName(FieldReport.FieldName+'NAMEDOITUONG').Value + #13#10 + memReportTable.FieldByName(FieldReport.FieldName+'NAME').Value;
              mem.FieldByName('OBJECT_NAME_'+inttostr(j)+'FORMAT').Value := memReportTable.FieldByName(FieldReport.FieldName+'NAMEFORMAT').Value;
              mem.FieldByName('OBJECT_VALUE_'+inttostr(j)).Value := memReportTable.FieldByName(FieldReport.FieldName).Value;
              //TFloatField(mem.FieldByName('OBJECT_VALUE_'+inttostr(j))).DisplayFormat := TIENTE_FORMAT;
              mem.FieldByName('OBJECT_VALUE_'+inttostr(j)+'FORMAT').Value := memReportTable.FieldByName(FieldReport.FieldName+'FORMAT').Value;
              j := j + 1;
            end;
            k := k + 1;
          end
          else
            break;
        end;

        memReportTable.Next;
      end;
      i := k;
    end
    else
      i := i + 1;
  end;

  mem.SortedField := 'RecID';

if (qryReportListREPORT_ID.AsString = 'OSC_CP_CT') or (qryReportListREPORT_ID.AsString = 'OSC_CP_NV') then
begin
  // xoa cac record memReportTable
	memReportTable.First;
  while not memReportTable.Eof do
		memReportTable.Delete;
  // sao chep cac record tu memNew sang memReportTable
  memNew.First;
  while not memNew.Eof do
  begin
    memReportTable.Append;
		for j := 0 to memNew.FieldCount - 1 do
    	memReportTable.Fields[j].Value := memNew.Fields[j].Value;
  	memNew.Next;
  end;
  memNew.Free;
end;
  memReportTable.EnableControls;
  memReportTable.Refresh;
end;
procedure TfrmReportList.ppDBTextPrint(Sender: TObject);
var ppDBText:TppDBText;
begin
  try
  ppDBText := TppDBText(Sender);
  if TppDBPipeline(ppDBText.DataPipeline).dataSource.Dataset.FieldByName(ppDBText.DataField+'FORMAT').Value <> 0 then
    ppDBText.Font.Style := ppDBText.Font.Style + [fsBold]
  else
    ppDBText.Font.Style := ppDBText.Font.Style - [fsBold];
  except
  end;
end;

procedure TfrmReportList.ElPopupButton14Click(Sender: TObject);
begin
  StrCopyToStream('nopsdt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton13Click(Sender: TObject);
begin
  StrCopyToStream('copsdt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton15Click(Sender: TObject);
begin
  StrCopyToStream('nockdt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton16Click(Sender: TObject);
begin
  StrCopyToStream('cockdt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton7Click(Sender: TObject);
begin
  StrCopyToStream('codkdt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton6Click(Sender: TObject);
begin
  StrCopyToStream('nodkdt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton22Click(Sender: TObject);
begin
  StrCopyToStream('nodkyt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton21Click(Sender: TObject);
begin
  StrCopyToStream('codkyt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton20Click(Sender: TObject);
begin
  StrCopyToStream('cockyt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton19Click(Sender: TObject);
begin
  StrCopyToStream('nockyt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton18Click(Sender: TObject);
begin
  StrCopyToStream('nopsyt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.ElPopupButton17Click(Sender: TObject);
begin
  StrCopyToStream('copsyt');
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.imageeditParamTypeExit(Sender: TObject);
begin
  if qryReportList.State in [dsInsert,dsEdit] then
    qryReportList.Post;
end;

procedure TfrmReportList.spinFromMonthExit(Sender: TObject);
begin
  if qryReportList.State in [dsInsert,dsEdit] then
    qryReportList.Post;
end;

procedure TfrmReportList.spinFromQuarterExit(Sender: TObject);
begin
  if qryReportList.State in [dsInsert,dsEdit] then
    qryReportList.Post;
end;

procedure TfrmReportList.spinFromYearExit(Sender: TObject);
begin
  if qryReportList.State in [dsInsert,dsEdit] then
    qryReportList.Post;
end;

procedure TfrmReportList.spinToMonthExit(Sender: TObject);
begin
  if qryReportList.State in [dsInsert,dsEdit] then
    qryReportList.Post;
end;

procedure TfrmReportList.spinToQuarterExit(Sender: TObject);
begin
  if qryReportList.State in [dsInsert,dsEdit] then
    qryReportList.Post;
end;

procedure TfrmReportList.spinToYearExit(Sender: TObject);
begin
  if qryReportList.State in [dsInsert,dsEdit] then
    qryReportList.Post;
end;

procedure TfrmReportList.CalReport012;
var
  qrySubReports:TIBOQuery;
  qrySubTables:TIBOQuery;
  i:integer;
begin
  Screen.Cursor := crHourGlass;
  lcProgress.Visible := True;
  self.Repaint;

  InitiateExpression;

  try
    qrySubReports := TIBOQuery.Create(self);
    qrySubReports.Unicode := True;
    qrySubReports.SQL.Text := ' select * ' +
                              ' from f_report_list ' +
                              ' where f_report_list.report_id = :report_id or ' +
                              ' f_report_list.report_parent = :report_id ' +
                              ' order by report_id asc';
    qrySubReports.Prepare;

    qrySubTables := TIBOQuery.Create(self);
    qrySubTables.Unicode := True;
    qrySubTables.SQL.Text := 'SELECT F_DEFINE_REPORT.REPORT_ID ' +
                             ', F_DEFINE_REPORT.REPORT_ITEM_ID ' +
                             ', F_DEFINE_REPORT.REPORT_COL_ID' +
                             ', F_DEFINE_REPORT.REPORT_EXPRESSION' +
                             ', F_DEFINE_REPORT.REPORT_SQL' +
                             ', F_DEFINE_REPORT.REPORT_ISEXPRESSION ' +
                             ', F_DEFINE_REPORT.REPORT_OTHER_CONDITION ' +
                             ', F_REPORT_COLUMNS.REPORT_OBJECT_TYPE REPORT_OBJECT_TYPE_COL' +
                             ' FROM F_DEFINE_REPORT ' +
                             ' JOIN F_REPORT_COLUMNS ON F_REPORT_COLUMNS.REPORT_COL_TYPE = 1 AND F_REPORT_COLUMNS.REPORT_COL_ID = F_DEFINE_REPORT.REPORT_COL_ID AND ' +
                             ' F_REPORT_COLUMNS.REPORT_ID = F_DEFINE_REPORT.REPORT_ID ' +
                             ' WHERE F_DEFINE_REPORT.REPORT_ID = :REPORT_ID ' +
                             ' ORDER BY  F_DEFINE_REPORT.REPORT_INDEX,F_DEFINE_REPORT.REPORT_ITEM_ID,F_DEFINE_REPORT.REPORT_COL_ID';
    qrySubTables.Prepare;

    qryUpdate.SQL.Text := ' UPDATE F_DEFINE_REPORT ' +
                          ' SET REPORT_VALUE = :VALUEX ' +
                          ' WHERE REPORT_ID = :REPORT_ID AND ' +
                          '       REPORT_ITEM_ID = :REPORT_ITEM_ID AND ' +
                          '       REPORT_COL_ID = :REPORT_COL_ID';
    qryUpdate.Prepare;

    qrySubReports.ParamByName('REPORT_ID').Value := qryReportList.FieldByName('REPORT_ID').Value;
    qrySubReports.Open;

    qrySubReports.First;
    CurrentReport := qrySubReports.FieldByName('REPORT_ID').Value;
    GetParam(CurrentReport);

    while(not qrySubReports.Eof)do
    begin
      qrySubTables.ParamByName('REPORT_ID').Value := qrySubReports.FieldByName('REPORT_ID').Value;
      qrySubTables.Open;

      ProgressBar.Position := 0;
      ProgressBar.Min := 0;
      ProgressBar.Max := qrySubTables.RecordCount;

      qrySubTables.First;
      while not qrySubTables.Eof do
      begin
        case qrySubTables.FieldByName('REPORT_ISEXPRESSION').AsInteger of
        0:
        begin
        end;
        1:
        begin
          with expReportCalculator do
          begin
            Expression := AnsiReplaceStr(qrySubTables.FieldByName('REPORT_EXPRESSION').AsString,' ','');
            if Expression <> '' then
            begin
              qryUpdate.ParamByName('REPORT_ID').Value := qrySubTables.FieldByName('REPORT_ID').Value;
              qryUpdate.ParamByName('REPORT_ITEM_ID').Value := qrySubTables.FieldByName('REPORT_ITEM_ID').Value;
              qryUpdate.ParamByName('REPORT_COL_ID').Value := qrySubTables.FieldByName('REPORT_COL_ID').Value;
              qryUpdate.ParamByName('VALUEX').Value := CheckOtherCondition(AnalyzeExpression, qrySubTables.FieldByName('REPORT_OTHER_CONDITION').AsInteger);
              qryUpdate.ExecSQL;
              qryUpdate.IB_Transaction.CommitRetaining;
            end;
          end;
        end;
        2:
        begin
          qryTemp.SQL.Text := qrySubTables.FieldByName('REPORT_SQL').AsString;
          if qryTemp.SQL.Text <> '' then
          begin
            qryTemp.Prepare;

            for i := 0 to qryTemp.ParamCount - 1 do
              qryTemp.ParamByName(qryTemp.Params[i].Name).Value := GetParamValue(qryTemp.Params[i].Name);

            qryTemp.Open;

            qryUpdate.ParamByName('REPORT_ID').Value := qrySubTables.FieldByName('REPORT_ID').value;
            qryUpdate.ParamByName('REPORT_ITEM_ID').Value := qrySubTables.FieldByName('REPORT_ITEM_ID').Value;
            qryUpdate.ParamByName('REPORT_COL_ID').Value := qrySubTables.FieldByName('REPORT_COL_ID').Value;
            qryUpdate.ParamByName('VALUEX').Value := CheckOtherCondition(qryTemp.Fields[0].AsFloat, qrySubTables.FieldByName('REPORT_OTHER_CONDITION').AsInteger);
            qryUpdate.ExecSQL;
            qryUpdate.IB_Transaction.CommitRetaining;

            qryTemp.Close;
          end;
        end;
        3:
        begin
          qryTemp.SQL.Text := 'select valuex from MACRO_CAL_F_REPORT(:REPORT_ID,:REPORT_COL_ID,:REPORT_ITEM_ID,:TUKY,:DENKY,:BRANCH_ID)';
          qryTemp.Prepare;

          for i := 0 to qryTemp.ParamCount - 1 do
            qryTemp.ParamByName(qryTemp.Params[i].Name).Value := GetParamValue(qryTemp.Params[i].Name);

          qryTemp.ParamByName('REPORT_ID').Value := qrySubTables.FieldByName('REPORT_ID').Value;
          qryTemp.ParamByName('REPORT_COL_ID').Value := qrySubTables.FieldByName('REPORT_COL_ID').Value;
          qryTemp.ParamByName('REPORT_ITEM_ID').Value := qrySubTables.FieldByName('REPORT_ITEM_ID').Value;

          qryTemp.Open;
          qryTemp.Close;
        end;
        end;
        ProgressBar.StepIt;
        qrySubTables.Next;
      end;
      qrySubTables.Close;
      qrySubReports.Next;
      CurrentReport := qrySubReports.FieldByName('REPORT_ID').Value;
    end;

    qrySubReports.Close;
  finally
    qrySubTables.Free;
    qrySubReports.Free;
  end;

  qryUpdate.Close;
  qryTable.Refresh;

  lcProgress.Visible := False;
  Screen.Cursor := crDefault;
end;

procedure TfrmReportList.editExpressionssButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
dxBarPopupMenu1.PopupFromCursorPos;
end;

procedure TfrmReportList.dxBarButton59Click(Sender: TObject);
begin
  StrCopyToStream('giatri(dong,cot)');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton5Click(Sender: TObject);
begin
  StrCopyToStream('nodktk(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton6Click(Sender: TObject);
begin
 StrCopyToStream('codktk(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton7Click(Sender: TObject);
begin
 StrCopyToStream('nopstk(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton8Click(Sender: TObject);
begin
 StrCopyToStream('copstk(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton9Click(Sender: TObject);
begin
 StrCopyToStream('nocktk(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton10Click(Sender: TObject);
begin
 StrCopyToStream('cocktk(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton11Click(Sender: TObject);
begin
 StrCopyToStream('nodkdt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton12Click(Sender: TObject);
begin
 StrCopyToStream('codkdt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton13Click(Sender: TObject);
begin
 StrCopyToStream('nopsdt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton14Click(Sender: TObject);
begin
 StrCopyToStream('copsdt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton15Click(Sender: TObject);
begin
 StrCopyToStream('nockdt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton16Click(Sender: TObject);
begin
 StrCopyToStream('cockdt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton17Click(Sender: TObject);
begin
 StrCopyToStream('nodkyt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton18Click(Sender: TObject);
begin
 StrCopyToStream('codkyt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton19Click(Sender: TObject);
begin
 StrCopyToStream('nopsyt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton20Click(Sender: TObject);
begin
 StrCopyToStream('copsyt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton21Click(Sender: TObject);
begin
 StrCopyToStream('nockyt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton22Click(Sender: TObject);
begin
   StrCopyToStream('cockyt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton23Click(Sender: TObject);
begin
  StrCopyToStream('cockyt(shtk,[KN,KT,LK,DN])');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton60Click(Sender: TObject);
begin
   StrCopyToStream('+');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton61Click(Sender: TObject);
begin
   StrCopyToStream('-');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton62Click(Sender: TObject);
begin
   StrCopyToStream('*');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton63Click(Sender: TObject);
begin
   StrCopyToStream('/');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton64Click(Sender: TObject);
begin
   StrCopyToStream('(');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton65Click(Sender: TObject);
begin
   StrCopyToStream(')');
  PaseFromClipboard;
end;

procedure TfrmReportList.dxBarButton66Click(Sender: TObject);
begin
   StrCopyToStream('abs()');
  PaseFromClipboard;
end;

function TfrmReportList.CoCKTK(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    NotDetail := true;

    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cock from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cock from macro_sodutk(' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cock from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cock from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';
    qryTemp.Open;
    Result := qrytemp.FieldByName('cock').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.CoDKTK(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    NotDetail := true;
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select codk from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select codk from macro_sodutk(' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select codk from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select codk from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('codk').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.CoPSTK(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    NotDetail := true;
    tg := UpperCase(tg);

    { Thinh
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cops from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cops from macro_sodutk(' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cops from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cops from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ')';
    }
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_tk(' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_tk(' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_tk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_tk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('cops').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.NoCKTK(shtk: variant;tg:variant): variant;
var test : double;
begin
  Result := 0;

  if TestFlag then
    Result := 1
  else
  begin
    NotDetail := true;
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nock from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nock from macro_sodutk(' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nock from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nock from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('nock').Value;
    qrytemp.Close;
  end;
end;

function TfrmReportList.NoDKTK(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    NotDetail := true;
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nodk from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nodk from macro_sodutk(' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nodk from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nodk from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('nodk').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.NoPSTK(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    NotDetail := true;
    tg := UpperCase(tg);

    { Thinh
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nops from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nops from macro_sodutk(' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nops from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nops from macro_sodutk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ')';
    }
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_tk(' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_tk(' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_tk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_tk(' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';
    qryTemp.Open;
    Result := qrytemp.FieldByName('nops').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.cockdt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cock from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cock from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cock from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cock from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('cock').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.codkdt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select codk from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select codk from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select codk from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select codk from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('codk').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.copsdt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);
    {Thinh sua
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cops from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cops from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cops from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cops from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ')';
    }
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_dt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_dt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_dt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_dt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';
   qryTemp.Open;
    Result := qrytemp.FieldByName('cops').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.nockdt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nock from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nock from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nock from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nock from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';
  qryTemp.Open;
    Result := qrytemp.FieldByName('nock').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.nodkdt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nodk from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nodk from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nodk from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nodk from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';
   qryTemp.Open;
    Result := qrytemp.FieldByName('nodk').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.nopsdt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      //Thinh qryTemp.SQL.Text := 'select nops from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ')'
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_dt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      //Thinh qryTemp.SQL.Text := 'select nops from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ')'
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_dt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      //Thinh qryTemp.SQL.Text := 'select nops from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ')'
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_dt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      //Thinh qryTemp.SQL.Text := 'select nops from macro_sodudt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ')';
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_dt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

   qryTemp.Open;
    Result := qrytemp.FieldByName('nops').AsFloat;
    qrytemp.Close;
  end;
end;
// theo yeu to
function TfrmReportList.cockyt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cock from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cock from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cock from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
     else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cock from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('cock').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.codkyt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select codk from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select codk from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select codk from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select codk from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('codk').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.copsyt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);
    {Thinh sua
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cops from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cops from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cops from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cops from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ')';
    }
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_yt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_yt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_yt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cops from macro_bcth_cops_yt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('cops').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.nockyt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nock from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nock from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nock from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nock from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';
   qryTemp.Open;
    Result := qrytemp.FieldByName('nock').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.nodkyt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nodk from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nodk from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nodk from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nodk from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';
   qryTemp.Open;
    Result := qrytemp.FieldByName('nodk').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.nopsyt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);
    {Thinh sua
    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nops from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nops from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nops from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nops from macro_soduyt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ')';
   } // Thinh them
   if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_yt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_yt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_yt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nops from macro_bcth_nops_yt(''' +object_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';
   qryTemp.Open;
    Result := qrytemp.FieldByName('nops').AsFloat;
    qrytemp.Close;
  end;
end;

// theo yeu to - doi tuong
function TfrmReportList.nodkytdt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nodk from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nodk from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nodk from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nodk from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('nodk').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.codkytdt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select codk from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select codk from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select codk from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select codk from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('codk').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.nopsytdt(shtk: variant;tg:variant): variant;
begin
	if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nops from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nops from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nops from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select nops from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('nops').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.copsytdt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cops from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cops from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cops from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cops from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('cops').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.nockytdt(shtk: variant;tg:variant): variant;
begin
  if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select nock from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select nock from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select nock from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cops from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('nock').AsFloat;
    qrytemp.Close;
  end;
end;

function TfrmReportList.cockytdt(shtk: variant;tg:variant): variant;
begin
    if TestFlag then
    Result := 1
  else
  begin
    tg := UpperCase(tg);

    if(tg = 'KN')then
      qryTemp.SQL.Text := 'select cock from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriod) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'KT')then
      qryTemp.SQL.Text := 'select cock from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(PrevFromPeriod) + ',' + inttostr(PrevToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'LK')then
      qryTemp.SQL.Text := 'select cock from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(ToPeriod) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')'
    else if(tg = 'DN')then
      qryTemp.SQL.Text := 'select cops from macro_soduytdt(''' +object_id + ''',''' + doituong_id + ''',' + string(shtk) + ',' + inttostr(FromPeriodYear+1) + ',' + inttostr(FromPeriodYear+1) + ',''' + Maindm.qryBranchBRANCH_ID.Value + ''')';

    qryTemp.Open;
    Result := qrytemp.FieldByName('cock').AsFloat;
    qrytemp.Close;
  end;
end;

// khac
procedure TfrmReportList.PaseFromClipboard;
begin
  editExpressionss.PasteFromClipboard;
  editExpressionss.SetFocus;
end;

procedure TfrmReportList.popBranchCloseUp(Sender: TObject;
  var Text: WideString; var Accept: Boolean);
begin
  text := MainDM.qryBranchSHORTNAME.Value;//MainDM.qryBranchFULLNAME.Value;
end;

end.
