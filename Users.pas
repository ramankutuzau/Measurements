unit Users;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  mySQLDbTables, Vcl.DBCtrls,Vcl.ExtCtrls;

type
  TUsers = class(TForm)


  Constructor Create(Form: TForm; ScrollBox : TScrollbox;
 MySQLQuery : TMySQLQuery; MySQLDatabase : TMySQLDatabase;
 DataSource : TDataSource);
  procedure AddUserPanel(Date : String);
  end;

implementation

var
Form1 : TForm;
ScrollBoxUser : TScrollbox;
PanelUser : TPanel;
LabelMeasur : TLabel;
LabelUser: TLabel;
MySQLQueryMeasur : TMySQLQuery;
MySQLDatabase1 : TMySQLDatabase;
DataSourceMeasur : TDataSource;


Constructor TUsers.Create(Form: TForm; ScrollBox : TScrollbox;
 MySQLQuery : TMySQLQuery; MySQLDatabase : TMySQLDatabase;
 DataSource : TDataSource);
begin
  Form1 := Form;
  ScrollBoxUser := ScrollBox;
  MySQLQueryMeasur := MySQLQuery;
  MySQLDatabase1 := MySQLDatabase;
  DataSourceMeasur := DataSource;
end;


procedure TUsers.AddUserPanel(Date : String);
var i,j,indent,indent1,n,k : integer; arrUsers,arrUsers1 : array of String;
begin

   MySQLQueryMeasur := TMySQLQuery.Create(Application);
   MySQLQueryMeasur.Database := MySQLDatabase1;
   MySQLQueryMeasur.SQL.Text := 'SELECT UserName, ListMeasurementsTime, MeasurementsCity, '+
   'MeasurementsStreet, MeasurementsHouse, MeasurementsStatus FROM Listmeasurements'+
  ' JOIN ListUser ON'+
  ' UserID = listUser.idUser WHERE ListMeasurementsDate = '''+Date+''' AND  '+
  'MeasurementsVisible = 1 AND CompanyID = 1 ORDER BY ListMeasurementsTime ASC, UserName ASC ';
       MySQLQueryMeasur.Active := true;
       MySQLQueryMeasur.Last;
       SetLength(arrUsers,MySQLQueryMeasur.RecNo);
       MySQLQueryMeasur.First;


      indent := 17;
      indent1 := 36;

     while not MySQLQueryMeasur.Eof do
      begin
        arrUsers[i] := MySQLQueryMeasur.Fields[0].AsString;
        inc(i);
        MySQLQueryMeasur.Next;

      end;

        for i := 0 to Length(arrUsers) - 1 do
        begin
        if arrUsers[i]


        end;



        PanelUser := TPanel.Create(ScrollBoxUser);
        PanelUser.Parent := ScrollBoxUser;

         with PanelUser do begin
        Left := 16;
        Top := indent1;
        Width := 440;
        Height := 41;
        Color := clSkyBlue;
        ParentBackground := False;
        TabOrder := 0;
        end;
        indent1 := indent1 + 50;
        LabelMeasur := TLabel.Create(PanelUser);
        LabelMeasur.Parent := PanelUser;

        with LabelMeasur do begin
        Left := 16;
        Top := 16;
        Width := 37;
        Height := 13;
        Caption := MySQLQueryMeasur.Fields[1].AsString + ' | Нас.Пункт: '+
        MySQLQueryMeasur.Fields[2].AsString + ' | Ул: ' + MySQLQueryMeasur.Fields[3].AsString +
        ' | Дом : '+MySQLQueryMeasur.Fields[4].AsString;
        end;


end;



end.
