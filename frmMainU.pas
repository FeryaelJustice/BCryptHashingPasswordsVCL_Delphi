unit frmMainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, BCrypt, Vcl.ExtCtrls, std_TiposU;

type
  TfrmMain = class(TForm)
    edtPasswordRegister: TEdit;
    btnSignUp: TButton;
    edtPasswordLogin: TEdit;
    btnLogin: TButton;
    pnlMain: TPanel;
    lblSignedUpHash: TLabel;
    lblInfoHash: TLabel;
    edtSignedUpHash: TEdit;
    edtEmailLogin: TEdit;
    edtEmailRegister: TEdit;
    lblLoginInfo: TLabel;
    procedure btnSignUpClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
    function checkPasswordHash(password: String): Boolean;
    function registration(email: String; password: String): Boolean;
    function login(email:String; password: String): Boolean;
  public
    { Public declarations }
    var emailSignUp: String;
        passwordSignup: String;
        signedUpHashedPassword: String;
        emailLogin: String;
        passwordLogin: String;

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

function TfrmMain.checkPasswordHash(password: String): Boolean;
var rehash: Boolean;
begin
  rehash := False;
  if TBCrypt.CheckPassword(password,signedUpHashedPassword,rehash) then Result := True
  else                                                                  Result := False;
end;

function TfrmMain.login(email: String; password: String): Boolean;
begin
  emailLogin := email;
  passwordLogin := password;

  // Here we would check in the database (email and password hash checking)
  if emailLogin = emailSignUp then
  begin
    if checkPasswordHash(passwordLogin) AND (passwordLogin = passwordSignUp) then Result := True
    else                                                                        Result := False;
  end
  else Result := False;
end;

procedure TfrmMain.btnLoginClick(Sender: TObject);
begin
  if login(edtEmailLogin.Text, edtPasswordLogin.Text) then
  begin
    showMessage('Successful login');
  end
  else
  begin
    showMessage('Unsuccessful login');
  end;
end;

function TfrmMain.registration(email: string; password: string): Boolean;
var aHashedPassword: String;
begin
  // Hash
  try
    aHashedPassword := TBCrypt.HashPassword(password);
  except on e: Exception do
    begin
      aHashedPassword := '';
    end;
  end;
  
  emailSignUp := email;
  passwordSignup := password;
  signedUpHashedPassword := aHashedPassword;
  // Here we would insert in the database
  if True then Result := True;
end;

procedure TfrmMain.btnSignUpClick(Sender: TObject);
begin
  // Register
  if registration(edtEmailRegister.Text,edtPasswordRegister.Text) then
  begin
    lblSignedUpHash.Caption := signedUpHashedPassword;
    edtSignedUpHash.Text := signedUpHashedPassword;
    showMessage('Your hashed password is: ' + signedUpHashedPassword);
  end
  else
  begin
    showMessage('Failed to sign up. Your hashed password is none.');
  end;

end;

end.
