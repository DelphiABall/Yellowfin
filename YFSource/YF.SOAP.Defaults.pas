unit YF.SOAP.Defaults;

interface

// Each Service is documented
// https://wiki.yellowfinbi.com/display/yfcurrent/Web+Services+Directory

type
  TYFDefaults = class(TObject)
  type
    TYFService = (Admin, Reports);
  private
    Fperson_password: string;
    FloginId: string;
    FLoginpassword: string;
    ForgId: integer;
    Fperson_userId: string;
    FBaseURL: string;
    procedure SetBaseURL(const Value: string);
  public
    // Base URL for YellowFin and the way to get the Servie URL
    function GetServiceURL(aService : TYFService):string;
    property BaseURL         : string read FBaseURL write SetBaseURL;

    // Admin
    property loginId         : string read FloginId write FloginId;
    property Loginpassword   : string read FLoginpassword write FLoginpassword;
    // Site
    property orgId           : integer read ForgId write ForgId;
    // Request
    property person_userId   : string read Fperson_userId write Fperson_userId;
    property person_password : string read Fperson_password write Fperson_password;
  end;

  // Returns GLobal Instance
  function YFDefaults : TYFDefaults;


implementation

uses System.SysUtils;

//global (private) instance
var
  FYFDefaults : TYFDefaults;


function YFDefaults : TYFDefaults;
begin
  if not Assigned(FYFDefaults) then
    FYFDefaults := TYFDefaults.Create;

  Result := FYFDefaults;
end;

{ TYFDefaults }

function TYFDefaults.GetServiceURL(aService: TYFService): string;
begin
  // The YellowFin "Legacy" Services are a direct mirror of the non legacy ones.
  // Legacy here just uses a different WebService Engine (JAX)
  case aService of
    Admin  : Result := BaseURL + 'webservices/LegacyAdministrationService';
    Reports: Result := BaseURL + 'webservices/LegacyReportService';
    else Exception.Create('unimplemented service URL');
  end;
end;

procedure TYFDefaults.SetBaseURL(const Value: string);
begin
  if not Value.EndsWith('/') then
    FBaseURL := Value + '/'
  else
    FBaseURL := Value;
end;

initialization
  // Default Test Values for Yellowfin Demo Install.
  // Recommendation is to install Yellowfin on a different machine in production.
  YFDefaults.BaseURL := 'http://localhost:8080';
  YFDefaults.loginpassword := 'test';
  YFDefaults.loginId := 'admin@yellowfin.com.au';
  YFDefaults.orgId := 1;
  YFDefaults.person_userId := 'admin@yellowfin.com.au';
  YFDefaults.person_password := 'test';

finalization
  if Assigned(FYFDefaults) then
    FreeAndNil(FYFDefaults);

end.
