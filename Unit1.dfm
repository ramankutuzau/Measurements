object FormMeasurement: TFormMeasurement
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FormMeasurement'
  ClientHeight = 461
  ClientWidth = 756
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
    Left = 0
    Top = 0
    Width = 756
    Height = 461
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 80
      Height = 15
      Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 64
      Top = 115
      Width = 32
      Height = 15
      Caption = #1044#1072#1090#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 41
      Top = 174
      Width = 55
      Height = 15
      Caption = #1058#1077#1083#1077#1092#1086#1085':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 64
      Top = 144
      Width = 32
      Height = 15
      Caption = #1060#1048#1054':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 30
      Top = 204
      Width = 66
      Height = 15
      Caption = #1053#1072#1089'. '#1087#1091#1085#1082#1090':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 56
      Top = 233
      Width = 40
      Height = 15
      Caption = #1059#1083#1080#1094#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 68
      Top = 262
      Width = 28
      Height = 15
      Caption = #1044#1086#1084':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 149
      Top = 262
      Width = 61
      Height = 15
      Caption = #1050#1074#1072#1088#1090#1080#1088#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 41
      Top = 291
      Width = 55
      Height = 15
      Caption = #1055#1086#1076#1098#1077#1079#1076':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 175
      Top = 291
      Width = 35
      Height = 15
      Caption = #1069#1090#1072#1078':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 11
      Top = 317
      Width = 85
      Height = 15
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
    end
    object DateTimePickerMeasur: TDateTimePicker
      Left = 102
      Top = 112
      Width = 94
      Height = 23
      Date = 44363.000000000000000000
      Time = 0.494157187502423800
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DateTimePickerMeasurChange
    end
    object ComboBoxTime: TComboBox
      Left = 199
      Top = 112
      Width = 58
      Height = 23
      Style = csDropDownList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = '8:00'
      Items.Strings = (
        '8:00'
        '9:00'
        '10:00'
        '11:00'
        '12:00'
        '13:00'
        '14:00'
        '15:00'
        '16:00'
        '17:00'
        '18:00'
        '19:00'
        '20:00')
    end
    object EditNumber: TEdit
      Left = 102
      Top = 172
      Width = 155
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '375447008130'
    end
    object EditName: TEdit
      Left = 102
      Top = 141
      Width = 155
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = #1060#1048#1054
    end
    object EditCity: TEdit
      Left = 102
      Top = 201
      Width = 155
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      MaxLength = 25
      ParentFont = False
      TabOrder = 4
    end
    object EditStreet: TEdit
      Left = 102
      Top = 230
      Width = 155
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      MaxLength = 25
      ParentFont = False
      TabOrder = 5
    end
    object EditHouse: TEdit
      Left = 102
      Top = 259
      Width = 43
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 6
    end
    object EditFlat: TEdit
      Left = 214
      Top = 259
      Width = 43
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 7
    end
    object EditEntrance: TEdit
      Left = 102
      Top = 288
      Width = 43
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 8
    end
    object EditFloor: TEdit
      Left = 214
      Top = 288
      Width = 43
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 9
    end
    object MemoComment: TMemo
      Left = 102
      Top = 317
      Width = 155
      Height = 89
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      Lines.Strings = (
        '')
      MaxLength = 254
      ParentFont = False
      TabOrder = 10
    end
    object Button1: TButton
      Left = 11
      Top = 412
      Width = 255
      Height = 38
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1085#1072' '#1079#1072#1084#1077#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = Button1Click
    end
    object DBLookupListBoxUsers: TDBLookupListBox
      Left = 102
      Top = 12
      Width = 155
      Height = 94
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'SF UI Display'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object ScrollBoxUsers: TScrollBox
      Left = 272
      Top = 3
      Width = 481
      Height = 438
      TabOrder = 13
    end
  end
  object MySQLDatabase1: TMySQLDatabase
    DatabaseName = 'Measurements'
    UserName = 'root'
    UserPassword = 'root'
    Host = 'localhost'
    ConnectOptions = [coCompress]
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'DatabaseName=Measurements'
      'Host=localhost'
      'UID=root'
      'PWD=root')
    SSLProperties.TLSVersion = tlsAuto
    DatasetOptions = []
    Left = 64
    Top = 72
  end
end
