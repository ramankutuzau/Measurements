procedure TForm2.load_zameri_grafik(scroll : tscrollbox; popup : tpopupmenu;date : string);
var i,top_panel,top_label : integer;
panel_ : tpanel;
label_ : tlabel;
save_fio : string;
label_2 : tlabel;
text_ : string;
begin
    try

        mysql.close;
        mysql.sql.text := 'SELECT user.fio,spisok_zamerod.* FROM `spisok_zamerod` '+
          ' JOIN user on spisok_zamerod.id_ispolnitel = user.id_user '+
          ' WHERE spisok_zamerod.data_zamer = '''+date+''' '+
          ' ORDER BY spisok_zamerod.id_ispolnitel asc, CONVERT(spisok_zamerod.vrema_zamer,TIME) asc ';
        mysql.open;

        for i:=scroll.ComponentCount-1 downto 0 do
        begin
              scroll.Components[i].Free;
        end;

        i := 0;

        top_label := 3;
        top_panel := 25;

        label_ := tlabel.Create(scroll);
        label_.parent :=  scroll;

        label_.Left := 32;
        label_.Top := top_label;
        label_.Width := 105;
        label_.parentfont := false;
        label_.Height := 16;
        label_.caption := '----> '+mysql.fieldbyname('fio').asstring;

        with mysql do
        begin

          save_fio := fieldbyname('fio').asstring;
           while not eof do
           begin

             if save_fio <> fieldbyname('fio').asstring then
             begin
               top_label := top_panel;

               label_ := tlabel.Create(scroll);
               label_.parent :=  scroll;

               label_.Left := 32;
               label_.parentfont := false;
               label_.Top := top_label;
               label_.Width := 105;
               label_.Height := 16;
               label_.caption := '----> '+ fieldbyname('fio').asstring;

               save_fio :=  fieldbyname('fio').asstring;

               top_panel := top_label + 20;
             end;

             panel_ := tpanel.Create(scroll);
             panel_.parent :=  scroll;
             panel_.left := 6;
             panel_.top := top_panel;
             panel_.height := 32;
             panel_.width := 422;
             panel_.tag := fieldbyname('id_spisok_zamerod').asinteger;
             panel_.caption := fieldbyname('id_client').asstring;
             panel_.ondblclick := panel_click_zamer;
             panel_.cursor := crHandPoint;
             panel_.ParentColor := False;
             panel_.ParentBackground := False;

             panel_.popupmenu := popup;

             if(fieldbyname('status').asstring = 'Замер назначен')  then
             begin
                 panel_.Color := $00CDCDCD;
             end;

             if(fieldbyname('status').asstring = 'Договор подписан')  then
             begin
                 panel_.Color := $003EFF3E;
             end;

             if(fieldbyname('status').asstring = 'Оформлена рассрочка')  then
             begin
               panel_.Color := $00808040;
             end;

             if(fieldbyname('status').asstring = 'Придет на офис')  then begin
               panel_.Color := $004080FF;
             end;

             if(fieldbyname('status').asstring = 'Отказ до замера')  then begin
               panel_.Color := clRed;
             end;

             if(fieldbyname('status').asstring = 'Отказ после замера')  then begin
               panel_.Color := $0000009F;
             end;

             if(fieldbyname('status').asstring = 'Подумает')  then begin
               panel_.Color := $008080FF;
             end;

             if(fieldbyname('status').asstring = 'Подписан на офисе')  then begin
                 panel_.Color := $00FFFF80;
               end;

             panel_.font.color := panel_.Color;

             top_panel := top_panel + 40;

             label_2 := tlabel.Create(panel_);
             label_2.parent :=  panel_;
             label_2.parentfont := false;
             label_2.Left := 8;
             label_2.tag := fieldbyname('id_spisok_zamerod').asinteger;
             label_2.font.color := clblack;
             label_2.Top := 8;
             label_2.Width := 410;
             label_2.ondblclick := label_dbl_click_zamer;

             text_ := '';
             if fieldbyname('nas_pynkt').asstring <> '' then
              text_ := fieldbyname('nas_pynkt').asstring;

             if fieldbyname('ylica').asstring <> '' then
              text_ := text_ + ' ул.:' + fieldbyname('ylica').asstring;

             if fieldbyname('dom').asstring <> '' then
             text_ := text_ + ' дом:' + fieldbyname('dom').asstring;

             if fieldbyname('kvartira').asstring <> '' then
             text_ := text_ + ' кв:' + fieldbyname('kvartira').asstring;


             label_2.caption := fieldbyname('vrema_zamer').asstring + ' | ' +text_+ ' | ' + fieldbyname('status').asstring  ;

             inc(i);
             next;
           end;
        end;

    except on E : Exception do begin
              ShowMessage ('Мы получили ошибку выгрузки замеров - '+ E.Message);
          end;
    end;
end;