unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  mySQLDbTables;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    ButtonRecord: TButton;
    GroupBox2: TGroupBox;
    ScrollBoxClients: TScrollBox;
    MySQLDatabase1: TMySQLDatabase;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  MySQLQueryClient : TMySQLQuery;
  PanelClient : TPanel;
  LabelDate : TLabel;
  LabelTime : TLabel;
  LabelUser : TLabel;
  LabelManager : TLabel;
  LabelStatus : TLabel;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
var ClientID, ManagerName,strTime : string; topPanel : integer;
begin
    ClientID := '2';
    ManagerName := '';
    MySQLQueryClient := TMySQLQuery.Create(Application);
    MySQLQueryClient.Database := MySQLDatabase1;
    MySQLQueryClient.SQL.Text := 'SELECT * FROM ListMeasurements JOIN '+
    ' ListUser ON ListMeasurements.UserID = ListUser.IdUser WHERE ClientID = '''+ClientID+''' AND '+
    ' MeasurementsVisible = 1 ORDER BY ListMeasurementsDate DESC ';
    MySQLQueryClient.Active := true;


    topPanel := 3;

  with MySQLQueryClient do begin

    while not eof do begin

        PanelClient := TPanel.Create(ScrollBoxClients);
        PanelClient.Parent := ScrollBoxClients;
      with PanelClient do begin
      Left := 18;
      Top := topPanel;
      Width := 405;
      Height := 70;
      Color := clSkyBlue;
      ParentBackground := False;
      TabOrder := 0;
      end;
        LabelDate := TLabel.Create(PanelClient);
        LabelDate.Parent := PanelClient;
      with LabelDate do begin
        Left := 8;
        Top := 8;
        Width := 107;
        Height := 15;
        Caption := '����: '+fieldByname('ListMeasurementsDate').AsString+' |';
        Font.Charset := RUSSIAN_CHARSET;
        Font.Color := clWindowText;
        Font.Height := -13;
        Font.Name := 'SF UI Display';
        Font.Style := [];
        ParentFont := False;
      end;
        LabelTime := TLabel.Create(PanelClient);
        LabelTime.Parent := PanelClient;
      with LabelTime do begin
        Left := 115;
        Top := 8;
        Width := 83;
        Height := 15;
        strTime := FormatDateTime('hh:mm',strtodatetime(fieldByname('ListMeasurementsTime').AsString));
        Caption := '�����: '+strTime+' |';
        Font.Charset := RUSSIAN_CHARSET;
        Font.Color := clWindowText;
        Font.Height := -13;
        Font.Name := 'SF UI Display';
        Font.Style := [];
        ParentFont := False;
      end;
        LabelUser := TLabel.Create(PanelClient);
        LabelUser.Parent := PanelClient;
      with LabelUser do begin
        Left := 200;
        Top := 8;
        Width := 170;
        Height := 15;
        Caption := ' �����������: '+fieldByname('UserName').AsString;
        Font.Charset := RUSSIAN_CHARSET;
        Font.Color := clWindowText;
        Font.Height := -13;
        Font.Name := 'SF UI Display';
        Font.Style := [];
        ParentFont := False;
      end;
        LabelManager := TLabel.Create(PanelClient);
        LabelManager.Parent := PanelClient;
      with LabelManager do begin
        Left := 8;
        Top := 29;
        Width := 166;
        Height := 15;
        Caption := '����� ��������: '+fieldByname('ManagerID').AsString;
        Font.Charset := RUSSIAN_CHARSET;
        Font.Color := clWindowText;
        Font.Height := -13;
        Font.Name := 'SF UI Display';
        Font.Style := [];
        ParentFont := False;
      end;
        LabelStatus := TLabel.Create(PanelClient);
        LabelStatus.Parent := PanelClient;
      with LabelStatus do begin
        Left := 8;
        Top := 50;
        Width := 149;
        Height := 15;
        Caption := '������: '+fieldByname('MeasurementsStatus').AsString;
        Font.Charset := RUSSIAN_CHARSET;
        Font.Color := clWindowText;
        Font.Height := -13;
        Font.Name := 'SF UI Display';
        Font.Style := [];
        ParentFont := False;
      end;
       topPanel := topPanel+75;
       Next;

    end;
  end;
end;



end.
