unit Frames.YellowfinBrowser;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.WebBrowser, System.Actions, FMX.ActnList;

type
  TFrameYellowfinBrowser = class(TFrame)
    WebBrowser: TWebBrowser;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnRefresh: TButton;
    ActionList1: TActionList;
    actHome: TAction;
    procedure actHomeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}
uses YF.SOAP.UserMethods, YF.SOAP.Defaults;

procedure TFrameYellowfinBrowser.actHomeExecute(Sender: TObject);
begin
  var URL := Format(YFDefaults.BaseURL + '/logon.i4?LoginWebserviceId=%s&disableheader=true&entry=TIMELINE', [TYFUserMethods.FetchSessionID(YFDefaults.loginId, YFDefaults.Loginpassword)]);
  WebBrowser.Navigate(URL);
end;

end.
