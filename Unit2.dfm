object FormClient: TFormClient
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FormClient'
  ClientHeight = 480
  ClientWidth = 463
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 449
    Height = 57
    TabOrder = 0
    object ButtonRecord: TButton
      Left = 8
      Top = 12
      Width = 127
      Height = 34
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1085#1072' '#1079#1072#1084#1077#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ButtonRecordClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 79
    Width = 449
    Height = 393
    TabOrder = 1
    object ScrollBoxClients: TScrollBox
      Left = 8
      Top = 10
      Width = 433
      Height = 374
      TabOrder = 0
    end
  end
  object MySQLDatabase1: TMySQLDatabase
    DatabaseName = 'measurements'
    UserName = 'root'
    UserPassword = 'root'
    ConnectOptions = [coCompress]
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'DatabaseName=measurements'
      'UID=root'
      'PWD=root')
    SSLProperties.TLSVersion = tlsAuto
    DatasetOptions = []
    Left = 392
    Top = 417
  end
end
