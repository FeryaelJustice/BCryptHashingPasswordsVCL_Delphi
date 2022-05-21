program ProjectBCryptHashingPassword;

uses
  Vcl.Forms,
  frmMainU in 'frmMainU.pas' {frmMain},
  BCrypt in 'BCrypt.pas' {BCrypt};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
