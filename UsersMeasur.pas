unit UsersMeasur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  mySQLDbTables, Vcl.DBCtrls,Vcl.ExtCtrls;

type
  TUsers = class(TForm)


Constructor Create(Form: TForm; ScrollBox : TScrollbox; MySQLDatabase : TMySQLDatabase);
  procedure AddUserPanel(Date : String);
  function CheckDateTime(StrUserTime : array of String;SelectedUser,Selectedtime:String):Boolean;
  destructor Destroy;
  public
  recordTime : array of String;
  recordUsers: array of String;
  strUserTime : array of  String;
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


Constructor TUsers.Create(Form: TForm; ScrollBox : TScrollbox; MySQLDatabase : TMySQLDatabase);
begin
  Form1 := Form;
  ScrollBoxUser := ScrollBox;
  MySQLDatabase1 := MySQLDatabase;
  ScrollBoxUser.AutoScroll := true;

end;


procedure TUsers.AddUserPanel(Date : String);
var i,j,topLabel,topPanel,n,k : integer;
saveUserName,strTime : String;
begin




   MySQLQueryMeasur := TMySQLQuery.Create(Application);
   MySQLQueryMeasur.Database := MySQLDatabase1;
   MySQLQueryMeasur.SQL.Text := 'SELECT UserName, ListMeasurementsTime, MeasurementsCity, '+
   'MeasurementsStreet, MeasurementsHouse, MeasurementsStatus FROM Listmeasurements '+
  ' JOIN ListUser ON'+
  ' UserID = listUser.idUser WHERE ListMeasurementsDate = '''+Date+''' AND '+
  ' MeasurementsVisible = 1 ORDER BY idUser ASC,ListMeasurementsTime ASC';
       MySQLQueryMeasur.Active := true;

      topLabel := 17;
      topPanel := 36;

       for i:=ScrollBoxUser.ComponentCount-1 downto 0 do
        begin
              ScrollBoxUser.Components[i].Free;
        end;

      LabelUser := TLabel.Create(ScrollBoxUser);
      LabelUser.Parent := ScrollBoxUser;

     with LabelUser do begin
     Left := 16;
     Top := topLabel;
     Width := 44;
     Height := 15;
     Caption :=  MySQLQueryMeasur.fieldbyName('Username').AsString;
     Font.Color := clWindowText;
     Font.Height := -13;
     Font.Name := 'SF UI Display';
     Font.Style := [];
     ParentFont := False;

     end;


       MySQLQueryMeasur.Last;
       Setlength(strUserTime,MySQLQueryMeasur.RecNo);
       MySQLQueryMeasur.First;






     i := 0;
 with MySQLQueryMeasur do
  begin

  SaveuserName := fieldbyname('UserName').asstring;
     while not MySQLQueryMeasur.Eof do
      begin


      strUserTime[i] := fieldbyname('UserName').AsString + ',' +
      fieldbyname('ListMeasurementsTime').AsString;
      i := i + 1;





       if SaveUserName <> fieldbyname('UserName').AsString then
            begin
            topLabel := topPanel;
             LabelUser := TLabel.Create(ScrollBoxUser);
             LabelUser.Parent := ScrollBoxUser;

              with LabelUser do begin
              Left := 16;
              Top := topLabel;
              Width := 44;
              Height := 15;
              Caption :=  MySQLQueryMeasur.fieldbyName('Username').AsString;
              Font.Color := clWindowText;
              Font.Height := -13;
              Font.Name := 'SF UI Display';
              Font.Style := [];
              ParentFont := False;

              end;
              SaveUserName := fieldbyname('UserName').AsString;
              topPanel := topLabel + 20;
            end;

            // PANEL
        PanelUser := TPanel.Create(ScrollBoxUser);
        PanelUser.Parent := ScrollBoxUser;

          with PanelUser do begin
          Left := 16;
          Top := topPanel;
          Width := 440;
          Height := 33;
          Color := clSkyBlue;
          ParentBackground := False;
          TabOrder := 0;
          end;

        topPanel := topPanel + 40;

        LabelMeasur := TLabel.Create(PanelUser);
        LabelMeasur.Parent := PanelUser;

          with LabelMeasur do begin
          Left := 16;
          Top := 10;
          Width := 410;
          Height := 13;
          AutoSize := false;
          strTime := FormatDateTime('hh:mm',
          strtodatetime(MySQLQueryMeasur.FieldByName('ListMeasurementsTime').AsString));
          Caption := strtime + ' | ???.?????: '+
          MySQLQueryMeasur.FieldByName('MeasurementsCity').AsString
          + ' | ??: ' + MySQLQueryMeasur.FieldByName('MeasurementsStreet').AsString +
          ' | ??? : '+MySQLQueryMeasur.FieldByName('MeasurementsHouse').AsString;
          Font.Color := clWindowText;
          Font.Height := -13;
          Font.Name := 'SF UI Display';
          Font.Style := [];
          end;
          // PANEL


      MySQLQueryMeasur.Next;
      end;





  end;




 end;

 function TUsers.CheckDateTime(StrUserTime : array of String;SelectedUser,SelectedTime:String):Boolean;
 var arrUser,arrTime :array of  string; s:String; i :integer;
 begin

 SetLength(arrUser,Length(StrUserTime));
 SetLength(arrTime,Length(StrUserTime));
 for i := 0 to Length(StrUserTime)- 1 do
  begin

    s :=StrUserTime[i]; //???????? ??????
    arrUser[i] :=Copy(s, 1, Pos(',' ,s)-1); //??  ???????????
    arrTime[i] :=Copy(s, Pos(',' ,s)+1, Length(s)); //????? ???????????

    if (arrUser[i] = SelectedUser) and (arrTime[i] = SelectedTime+':00')  then
    begin
       CheckDateTime := false;
       exit
    end else CheckDateTime := true;


  end;

 end;

destructor TUsers.Destroy;
begin

end;


end.
