object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'BCrypt Password Hashing by Fernando GS'
  ClientHeight = 301
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 301
    Align = alClient
    TabOrder = 0
    object lblSignedUpHash: TLabel
      Left = 19
      Top = 136
      Width = 148
      Height = 26
      Alignment = taCenter
      Caption = 'Registered Password Hash (dont care about this field)'
      WordWrap = True
    end
    object lblInfoHash: TLabel
      Left = 136
      Top = 13
      Width = 337
      Height = 19
      Caption = 'Basic Account Management with Hashing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 0
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object lblLoginInfo: TLabel
      Left = 173
      Top = 176
      Width = 263
      Height = 13
      Caption = '*This is going to work only if you previously signed up*'
    end
    object btnLogin: TButton
      Left = 247
      Top = 249
      Width = 75
      Height = 25
      Caption = 'Login'
      TabOrder = 0
      OnClick = btnLoginClick
    end
    object btnSignUp: TButton
      Left = 247
      Top = 106
      Width = 75
      Height = 25
      Caption = 'Sign Up'
      TabOrder = 1
      OnClick = btnSignUpClick
    end
    object edtPasswordLogin: TEdit
      Left = 225
      Top = 222
      Width = 121
      Height = 21
      Hint = 'Password'
      TabOrder = 2
      Text = 'Password'
      TextHint = 'Password'
    end
    object edtPasswordRegister: TEdit
      Left = 225
      Top = 79
      Width = 121
      Height = 21
      Hint = 'Password'
      TabOrder = 3
      Text = 'Password'
      TextHint = 'Password'
    end
    object edtSignedUpHash: TEdit
      Left = 173
      Top = 141
      Width = 417
      Height = 21
      TabOrder = 4
      Text = 'Registered password hash'
    end
    object edtEmailLogin: TEdit
      Left = 225
      Top = 195
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'Email'
    end
    object edtEmailRegister: TEdit
      Left = 225
      Top = 52
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'Email'
    end
  end
end
