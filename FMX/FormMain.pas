unit FormMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Layouts, FMX.Objects,
  FMX.MultiView, FMX.TabControl, FMX.Effects, Frames.Settings,
  Frames.ReportsList, FireDAC.UI.Intf, FireDAC.FMXUI.Wait, FireDAC.Stan.Intf,
  FireDAC.Comp.UI;

type
  TForm1 = class(TForm)
    tcMain: TTabControl;
    tabSettings: TTabItem;
    tabReports: TTabItem;
    MultiView1: TMultiView;
    imgYellowFinLogo: TImage;
    background: TRectangle;
    BackgroundBrush: TBrushObject;
    ToolBar1: TToolBar;
    loMain: TLayout;
    btnMenu: TButton;
    btnSettings: TButton;
    btnReports: TButton;
    btnUsers: TButton;
    tabUsers: TTabItem;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure btnSettingsClick(Sender: TObject);
    procedure btnReportsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tcMainChange(Sender: TObject);
    procedure btnUsersClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses YF.SOAP.ReportService.Data, TabHelper, Frames.Users, YF.Resources,
  YF.FMX.Resources;

procedure TForm1.btnReportsClick(Sender: TObject);
begin
  tcMain.ActiveTab := tabReports;
  // Reports uses the core data. If its already loaded, use the cache.

  if YF_ReportData.mtReports.RecordCount = 0 then
    YF_ReportData.Reload;
end;

procedure TForm1.btnSettingsClick(Sender: TObject);
begin
  tcMain.ActiveTab := tabSettings;
end;

procedure TForm1.btnUsersClick(Sender: TObject);
begin
  tcMain.ActiveTab := tabUsers;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  var Favs : IFavourateImages := TYF_FMXResources.Create(Self);
  YF_ReportData := TYF_ReportData.Create(Self, Favs);

  tcMain.ActiveTab := tabSettings;
  tcMain.TabPosition := TTabPosition.None;
  tcMainChange(nil); // Ensure Default Tab is loaded.

  if TOSVersion.Platform in [TOSVersion.TPlatform.pfAndroid, TOSVersion.TPlatform.pfiOS] then
    MultiView1.Mode := TMultiViewMode.Drawer;

end;

procedure TForm1.tcMainChange(Sender: TObject);
begin
  // Sections loaded on demand - this keeps startup lean and reduces API calls.
  if tcMain.ActiveTab = tabReports then begin
    if not tabReports.Contains(TFrameReportList) then begin
      var F := TFrameReportList.Create(tcMain.ActiveTab);
      F.Parent := tabReports;
      F.Align := TAlignLayout.Client;
      F.Visible := True;
    end;
  end else
  if tcMain.ActiveTab = tabSettings then begin
    if not tabSettings.Contains(TFrameSettings) then begin
      var F := TFrameSettings.Create(tcMain.ActiveTab);
      F.Parent := tabSettings;
      F.Align := TAlignLayout.Client;
      F.Visible := True;
    end;
  end else
  if tcMain.ActiveTab = tabUsers then begin
    if not tabUsers.Contains(TFrameUsers) then begin
      var F := TFrameUsers.Create(tcMain.ActiveTab);
      F.Parent := tabUsers;
      F.Align := TAlignLayout.Client;
      F.Visible := True;
    end;
  end;
end;

end.
