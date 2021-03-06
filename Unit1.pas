unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  mySQLDbTables, Vcl.DBCtrls, Vcl.ExtCtrls,UsersMeasur,unit2;

type
  TFormMeasurement = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerMeasur: TDateTimePicker;
    ComboBoxTime: TComboBox;
    Label3: TLabel;
    EditNumber: TEdit;
    Label4: TLabel;
    EditName: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    EditCity: TEdit;
    EditStreet: TEdit;
    Label7: TLabel;
    EditHouse: TEdit;
    Label8: TLabel;
    EditFlat: TEdit;
    Label9: TLabel;
    EditEntrance: TEdit;
    Label10: TLabel;
    EditFloor: TEdit;
    Label11: TLabel;
    MemoComment: TMemo;
    Button1: TButton;
    MySQLDatabase1: TMySQLDatabase;
    DBLookupListBoxUsers: TDBLookupListBox;
    ScrollBoxUsers: TScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DateTimePickerMeasurChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMeasurement: TFormMeasurement;
  DataSourceMeasur : TDataSource;
  MySQLQueryMeasur : TMySQLQuery;
  Users : TUsers;
  Date: String;
implementation

{$R *.dfm}

procedure TFormMeasurement.Button1Click(Sender: TObject);
var UserID,ClientID,ManagerID,City,Street,House,Flat,
Floor,Entrance,Status,Time,DateNow,Comment,NameID : String; i: Integer; checkDateTime :Boolean;

begin

    if (DBLookupListBoxUsers.KeyValue <> null ) then begin

                 UserID := DBLookupListBoxUsers.KeyValue;
                 NameID := '2';  // add
                 ClientID := '1'; // add
                 ManagerID := '3'; // add current user
                 City := EditCity.Text;
                 Street := EditStreet.Text;
                 House := EditHouse.Text;
                 Flat := EditFlat.Text;
                 Entrance := EditEntrance.Text;
                 Floor := EditFloor.Text;
                 Status := '????? ????????';
                 Date :=   FormatDateTime('yyyy-mm-dd',DateTimePickerMeasur.Date); // Datetostr(DateTimePickerMeasur.Date);
                 Time := ComboBoxTime.Items[ComboBoxTime.ItemIndex];  // selected current time
                 DateNow :=FormatDateTime('yyyy-mm-dd',now);
                 Comment := MemoComment.Text;

                   Checkdatetime := true;
                   if Length(Users.strUserTime) > 0 then
                   begin
                   Checkdatetime := Users.CheckDateTime(Users.strUserTime,
                   DBLookupListBoxUsers.SelectedItem,ComboBoxTime.Text);
                   end;

                   if CheckDateTime = true then
                   begin
                       MySQLQueryMeasur := TMySQLQuery.Create(Application);
                       MySQLQueryMeasur.Database := MySQLDatabase1;
                       MySQLQueryMeasur.SQL.Text := 'INSERT INTO `listmeasurements`'+
                       '( `ClientID`, `ManagerID`, `UserID`,`CompanyID`, `MeasurementsCity`,'+
                       '`MeasurementsStreet`, `MeasurementsHouse`, `MeasurementsFlat`,'+
                       ' `MeasurementsEntrance`,'+
                       ' `MeasurementsFloor`, `MeasurementsStatus`, `ListMeasurementsDate`,'+
                       ' `ListMeasurementsTime`,'+
                       ' `ListMeasurementsDateAdd`, `ListMeasurementsComment`,'+
                       ' `MeasurementsVisible`) VALUES'+
                       '('''+clientID+''', '''+managerID+''', '''+userID+''', 1, '''+city+''','+
                       ' '''+street+''', '''+house+''', '''+flat+''','+
                       ' '''+entrance+''', '''+floor+''', '''+status+''','+
                       ' '''+date+''', '''+time+''', '''+dateNow+''', '''+comment+''',1)';
                       MySQLQueryMeasur.ExecSQL;

                      EditCity.Clear;
                      EditStreet.Clear;
                      EditHouse.Clear;
                      EditFlat.Clear;
                      EditEntrance.Clear;
                      EditFloor.Clear;
                      MemoComment.Clear;

                      Users.AddUserPanel(Date);
                   end else Showmessage('??? ???????? ????? ?? ??? ?????');




    end
    else
      ShowMessage('???????? ???????????');

   end;




procedure TFormMeasurement.DateTimePickerMeasurChange(Sender: TObject);
begin
Date := FormatDateTime('yyyy-mm-dd',DateTimePickerMeasur.Date);
Users.AddUserPanel(Date);
end;

procedure TFormMeasurement.FormCreate(Sender: TObject);
var user:String; i:integer;
begin

   DBLookupListBoxUsers.Height := 94;

   MySQLQueryMeasur := TMySQLQuery.Create(Application);
   MySQLQueryMeasur.Database := MySQLDatabase1;
   MySQLQueryMeasur.SQL.Text := 'SELECT * FROM ListUser';
   MySQLQueryMeasur.Active := true;

   DataSourceMeasur := TDataSource.Create(Application);
   DataSourceMeasur.DataSet := MySQLQueryMeasur;

   DBLookupListBoxUsers.ListSource := DataSourceMeasur;
   DBLookupListBoxUsers.KeyField := 'idUser';
   DBLookupListBoxUsers.ListField := 'UserName';


    Users := TUsers.Create(FormMeasurement,ScrollBoxUsers,
    MySQLDatabase1);
    DateTimePickerMeasur.Date := Now;
    Date := FormatDateTime('yyyy-mm-dd',DateTimePickerMeasur.Date);

    Users.AddUserPanel(Date);


    ScrollBoxUsers.Width := 481;
    ScrollBoxUsers.Height := 438;
    ScrollBoxUsers.AutoScroll := true;

   end;

end.
