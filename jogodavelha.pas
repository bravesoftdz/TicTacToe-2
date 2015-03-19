unit jogodavelha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, RzSpnEdt, StdCtrls, ExtCtrls, RzCommon, RzBHints, 
  RzPanel, RzBorder, JDLed, WinXP, AdvCircularProgress, RzBckgnd,
  AdvShapeButton, AdvGlowButton, AdvOfficeSelectors;

type
  TForm1 = class(TForm)
    rp1: TRzRapidFireButton;
    rp4: TRzRapidFireButton;
    rp2: TRzRapidFireButton;
    rp7: TRzRapidFireButton;
    rp5: TRzRapidFireButton;
    rp8: TRzRapidFireButton;
    rp3: TRzRapidFireButton;
    rp6: TRzRapidFireButton;
    rp9: TRzRapidFireButton;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzLEDDisplay1: TRzLEDDisplay;
    JDLed1: TJDLed;
    Timer1: TTimer;
    JDLed2: TJDLed;
    WinXP1: TWinXP;
    RzBackground1: TRzBackground;
    AdvShapeButton1: TAdvShapeButton;
    AdvShapeButton2: TAdvShapeButton;
    AdvShapeButton3: TAdvShapeButton;
    AdvShapeButton4: TAdvShapeButton;
    AdvOfficeColorSelector1: TAdvOfficeColorSelector;
    AdvOfficeColorSelector2: TAdvOfficeColorSelector;
    AdvOfficeColorSelector3: TAdvOfficeColorSelector;
    AdvOfficeColorSelector4: TAdvOfficeColorSelector;
    AdvOfficeColorSelector5: TAdvOfficeColorSelector;
    procedure rp5Click(Sender: TObject);
    procedure rp1Click(Sender: TObject);
    procedure rp2Click(Sender: TObject);
    procedure rp3Click(Sender: TObject);
    procedure rp4Click(Sender: TObject);
    procedure rp6Click(Sender: TObject);
    procedure rp7Click(Sender: TObject);
    procedure rp8Click(Sender: TObject);
    procedure rp9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvOfficeColorSelector1Click(Sender: TObject);
    procedure rp1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rp2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rp4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rp6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rp7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rp8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rp9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rp3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private

  public
    { Public declarations }

       end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.rp5Click(Sender: TObject);


begin
if
RadioGroup1.ItemIndex=0 then

 begin
  rp5.Caption:='X';
  RadioGroup1.ItemIndex:=1
 end
  else
begin
rp5.Caption:='O';
RadioGroup1.ItemIndex:=0
end;
rp5.Enabled:=false;
if
(rp4.Caption='X')and(rp5.Caption='X')and(rp6.Caption='X') then  begin
showmessage(edit1.text +' Ganhou');
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
 end
else if
(rp7.Caption='X')and(rp5.Caption='X')and(rp3.Caption='X') then begin
showmessage(edit1.text +' Ganhou');
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1); end
else if
(rp5.Caption='X')and(rp2.Caption='X')and(rp8.Caption='X') then begin
showmessage(edit1.text +' Ganhou');
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1); end
else if
(rp1.Caption='X')and(rp5.Caption='X')and(rp9.Caption='X') then begin
showmessage(edit1.text +' Ganhou');RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1); end
else if
(rp1.Caption='O')and(rp5.Caption='O')and(rp9.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1); end
else if
(rp4.Caption='O')and(rp5.Caption='O')and(rp6.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1); end
else if
(rp1.Caption='O')and(rp4.Caption='O')and(rp7.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1); end
else if
(rp7.Caption='O')and(rp5.Caption='O')and(rp3.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1); end
else if
(rp5.Caption='O')and(rp2.Caption='O')and(rp8.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1); end

end;
procedure TForm1.rp1Click(Sender: TObject);

var I:integer;
begin
if
RadioGroup1.ItemIndex=0 then

 begin
  rp1.Caption:='X';
  RadioGroup1.ItemIndex:=1
 end
  else
begin
rp1.Caption:='O';
RadioGroup1.ItemIndex:=0

end;
rp1.Enabled:=false;
if
(rp1.Caption='X')and(rp2.Caption='X')and(rp3.Caption='X') then begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
RadioGroup1.ItemIndex:=0;
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false
else if
(rp1.Caption='X')and(rp4.Caption='X')and(rp7.Caption='X') then
begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);end;
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false;
;end

else if
(rp1.Caption='X')and(rp5.Caption='X')and(rp9.Caption='X') then begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1)
;for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false;  end
else if
(rp1.Caption='O')and(rp5.Caption='O')and(rp9.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false;  end
else
if
(rp1.Caption='O')and(rp2.Caption='O')and(rp3.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false; end
else if
(rp5.Caption='O')and(rp2.Caption='O')and(rp8.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp1.Caption='O')and(rp4.Caption='O')and(rp7.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end



end;
procedure TForm1.rp2Click(Sender: TObject);
var I:integer;
begin
if
RadioGroup1.ItemIndex=0 then
begin

rp2.Caption:='X';
RadioGroup1.ItemIndex:=1;
end
else
 begin
 rp2.Caption:='O';
RadioGroup1.ItemIndex:=0
end;

rp2.Enabled:=false;
if
(rp1.Caption='X')and(rp2.Caption='X')and(rp3.Caption='X') then  begin
showmessage(edit1.text +' Ganhou') ;
Timer1.Enabled:=False;RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp5.Caption='X')and(rp2.Caption='X')and(rp8.Caption='X') then  begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else
if
(rp1.Caption='O')and(rp2.Caption='O')and(rp3.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp5.Caption='O')and(rp2.Caption='O')and(rp8.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false;
       end
else if
(rp5.Caption='O')and(rp2.Caption='O')and(rp8.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end

end;

procedure TForm1.rp3Click(Sender: TObject);
var I:integer;
begin
if
RadioGroup1.ItemIndex=0 then
begin

rp3.Caption:='X';
RadioGroup1.ItemIndex:=1;
end
else
 begin
 rp3.Caption:='O';
RadioGroup1.ItemIndex:=0
end;
rp3.Enabled:=false;
if

(rp1.Caption='X')and(rp2.Caption='X')and(rp3.Caption='X') then  begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp7.Caption='X')and(rp5.Caption='X')and(rp3.Caption='X') then begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end

else if
(rp3.Caption='X')and(rp6.Caption='X')and(rp9.Caption='X') then  begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp3.Caption='O')and(rp6.Caption='O')and(rp9.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else
if
(rp1.Caption='O')and(rp2.Caption='O')and(rp3.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp5.Caption='O')and(rp2.Caption='O')and(rp8.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp7.Caption='O')and(rp5.Caption='O')and(rp3.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
end;


procedure TForm1.rp4Click(Sender: TObject);
var I:integer;
begin
if
RadioGroup1.ItemIndex=0 then
begin

rp4.Caption:='X';
RadioGroup1.ItemIndex:=1;
end
else
 begin
 rp4.Caption:='O';
RadioGroup1.ItemIndex:=0
end;
rp4.Enabled:=false;
if
(rp4.Caption='X')and(rp5.Caption='X')and(rp6.Caption='X') then begin
showmessage(edit1.text +' Ganhou') ;
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp1.Caption='X')and(rp4.Caption='X')and(rp7.Caption='X') then begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1); end
else if
(rp4.Caption='O')and(rp5.Caption='O')and(rp6.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp1.Caption='O')and(rp4.Caption='O')and(rp7.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp1.Caption='O')and(rp4.Caption='O')and(rp7.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end

end;
procedure TForm1.rp6Click(Sender: TObject);
var I:integer;

begin
if
RadioGroup1.ItemIndex=0 then
begin

rp6.Caption:='X';
RadioGroup1.ItemIndex:=1;
end
else
 begin
 rp6.Caption:='O';
RadioGroup1.ItemIndex:=0
end;
rp6.Enabled:=false;
 if
(rp4.Caption='X')and(rp5.Caption='X')and(rp6.Caption='X') then begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end

else if
(rp3.Caption='X')and(rp6.Caption='X')and(rp9.Caption='X') then begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end else if
(rp3.Caption='O')and(rp6.Caption='O')and(rp9.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp4.Caption='O')and(rp5.Caption='O')and(rp6.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp1.Caption='O')and(rp4.Caption='O')and(rp7.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end;

    end;
procedure TForm1.rp7Click(Sender: TObject);
var I:integer;
begin
if
RadioGroup1.ItemIndex=0 then
begin

rp7.Caption:='X';
RadioGroup1.ItemIndex:=1;
end
else
 begin
 rp7.Caption:='O';
RadioGroup1.ItemIndex:=0
end; rp7.Enabled:=false
;if
(rp7.Caption='X')and(rp8.Caption='X')and(rp9.Caption='X') then begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp7.Caption='X')and(rp5.Caption='X')and(rp3.Caption='X') then  begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end

else if
(rp1.Caption='X')and(rp4.Caption='X')and(rp7.Caption='X') then begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp7.Caption='O')and(rp8.Caption='O')and(rp9.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp7.Caption='O')and(rp5.Caption='O')and(rp3.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end

else if
(rp1.Caption='O')and(rp4.Caption='O')and(rp7.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end

end;

procedure TForm1.rp8Click(Sender: TObject);
var I:integer;
begin
if
RadioGroup1.ItemIndex=0 then
begin

rp8.Caption:='X';
RadioGroup1.ItemIndex:=1;
end
else
 begin
 rp8.Caption:='O';
RadioGroup1.ItemIndex:=0
end; rp8.Enabled:=false;
if
(rp7.Caption='X')and(rp8.Caption='X')and(rp9.Caption='X') then
 begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
 else if
(rp5.Caption='X')and(rp2.Caption='X')and(rp8.Caption='X') then
 begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp7.Caption='O')and(rp8.Caption='O')and(rp9.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp5.Caption='O')and(rp2.Caption='O')and(rp8.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
end;

procedure TForm1.rp9Click(Sender: TObject);
var I:integer;
begin
if
RadioGroup1.ItemIndex=0 then
begin

rp9.Caption:='X';
RadioGroup1.ItemIndex:=1;
end
else
 begin
 rp9.Caption:='O';
RadioGroup1.ItemIndex:=0
end;rp9.Enabled:=false;
if
(rp7.Caption='X')and(rp8.Caption='X')and(rp9.Caption='X') then
 begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end

else if
(rp3.Caption='X')and(rp6.Caption='X')and(rp9.Caption='X') then
 begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp1.Caption='X')and(rp5.Caption='X')and(rp9.Caption='X') then
 begin
showmessage(edit1.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel1.Caption:=IntToStr(StrToInt(RzPanel1.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp7.Caption='O')and(rp8.Caption='O')and(rp9.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end

else if
(rp3.Caption='O')and(rp6.Caption='O')and(rp9.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end
else if
(rp1.Caption='O')and(rp5.Caption='O')and(rp9.Caption='O') then
begin
showmessage(edit2.text +' Ganhou');
Timer1.Enabled:=False;
RzPanel2.Caption:=IntToStr(StrToInt(RzPanel2.Caption)+1);
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then

      TRzRapidFireButton(Components[I]).Enabled:=false end;

  end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var I:integer;
begin
RadioGroup1.ItemIndex:=0;
for I := 0 to ComponentCount -1 do
    if Components[I] is TRzRapidFireButton then begin
      TRzRapidFireButton(Components[I]).caption := '';
      TRzRapidFireButton(Components[I]).Enabled:=true;
    end;
    JDLed1.Digit:=0;
    JDLed2.Digit:=0;
    Timer1.Enabled:=true;
    RzLEDDisplay1.Caption:=((edit1.text)+(':'+RzPanel1.Caption)+' X '+(edit2.text)+(':'+rzpanel2.caption));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
AdvOfficeColorSelector1.SelectedColor:=clRed;
AdvOfficeColorSelector3.SelectedColor:=clRed;
AdvOfficeColorSelector5.SelectedColor:=clBtnFace;

RzLEDDisplay1.Caption:='Programa feito por WESLEY e ajudante IGOR!;10 reais ';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var x,y:integer;
begin
x:=JDLed1.Digit;
y:=jdled2.digit;
if JDLed1.Digit=9 then
begin
 JDLed2.digit:=Y+1;
JDLed1.Digit:=0;
end
else
 JDLed1.Digit:=(x+1);
end;

procedure TForm1.AdvOfficeColorSelector1Click(Sender: TObject);
begin
RzLEDDisplay1.SegOffColor:=AdvOfficeColorSelector1.SelectedColor;
end;

procedure TForm1.rp1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
RzLEDDisplay1.SegOnColor:=AdvOfficeColorSelector1.SelectedColor;
RzBackground1.GradientColorStart:=AdvOfficeColorSelector2.SelectedColor;
RzBackground1.GradientColorStop:=AdvOfficeColorSelector4.SelectedColor;
JDLed1.Colour:=AdvOfficeColorSelector3.SelectedColor;
JDLed2.Colour:=AdvOfficeColorSelector3.SelectedColor;
RzPanel1.Color:=AdvOfficeColorSelector5.SelectedColor;
RzPanel2.Color:=AdvOfficeColorSelector5.SelectedColor;
end;

procedure TForm1.rp2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
RzLEDDisplay1.SegOnColor:=AdvOfficeColorSelector1.SelectedColor;
RzBackground1.GradientColorStart:=AdvOfficeColorSelector2.SelectedColor;
JDLed1.Colour:=AdvOfficeColorSelector3.SelectedColor;
JDLed2.Colour:=AdvOfficeColorSelector3.SelectedColor;
RzBackground1.GradientColorStop:=AdvOfficeColorSelector4.SelectedColor;
RzPanel1.Color:=AdvOfficeColorSelector5.SelectedColor;
RzPanel2.Color:=AdvOfficeColorSelector5.SelectedColor;
end;

procedure TForm1.rp4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
RzLEDDisplay1.SegOnColor:=AdvOfficeColorSelector1.SelectedColor;
RzBackground1.GradientColorStart:=AdvOfficeColorSelector2.SelectedColor;
JDLed1.Colour:=AdvOfficeColorSelector3.SelectedColor;
JDLed2.Colour:=AdvOfficeColorSelector3.SelectedColor;
RzBackground1.GradientColorStop:=AdvOfficeColorSelector4.SelectedColor;
RzPanel1.Color:=AdvOfficeColorSelector5.SelectedColor;
RzPanel2.Color:=AdvOfficeColorSelector5.SelectedColor;
end;

procedure TForm1.rp6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
RzLEDDisplay1.SegOnColor:=AdvOfficeColorSelector1.SelectedColor;
RzBackground1.GradientColorStart:=AdvOfficeColorSelector2.SelectedColor;
JDLed1.Colour:=AdvOfficeColorSelector3.SelectedColor;
JDLed2.Colour:=AdvOfficeColorSelector3.SelectedColor;
RzBackground1.GradientColorStop:=AdvOfficeColorSelector4.SelectedColor;
RzPanel1.Color:=AdvOfficeColorSelector5.SelectedColor;
RzPanel2.Color:=AdvOfficeColorSelector5.SelectedColor;
end;

procedure TForm1.rp7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
RzLEDDisplay1.SegOnColor:=AdvOfficeColorSelector1.SelectedColor;
RzBackground1.GradientColorStart:=AdvOfficeColorSelector2.SelectedColor;
JDLed1.Colour:=AdvOfficeColorSelector3.SelectedColor;
JDLed2.Colour:=AdvOfficeColorSelector3.SelectedColor;
RzBackground1.GradientColorStop:=AdvOfficeColorSelector4.SelectedColor;
RzPanel1.Color:=AdvOfficeColorSelector5.SelectedColor;
RzPanel2.Color:=AdvOfficeColorSelector5.SelectedColor;
end;

procedure TForm1.rp8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
RzLEDDisplay1.SegOnColor:=AdvOfficeColorSelector1.SelectedColor;
RzBackground1.GradientColorStart:=AdvOfficeColorSelector2.SelectedColor;
JDLed1.Colour:=AdvOfficeColorSelector3.SelectedColor;
JDLed2.Colour:=AdvOfficeColorSelector3.SelectedColor;
RzBackground1.GradientColorStop:=AdvOfficeColorSelector4.SelectedColor;
RzPanel1.Color:=AdvOfficeColorSelector5.SelectedColor;
RzPanel2.Color:=AdvOfficeColorSelector5.SelectedColor;
end;

procedure TForm1.rp9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
RzLEDDisplay1.SegOnColor:=AdvOfficeColorSelector1.SelectedColor;
RzBackground1.GradientColorStart:=AdvOfficeColorSelector2.SelectedColor;
JDLed1.Colour:=AdvOfficeColorSelector3.SelectedColor;
JDLed2.Colour:=AdvOfficeColorSelector3.SelectedColor;
RzBackground1.GradientColorStop:=AdvOfficeColorSelector4.SelectedColor;
RzPanel1.Color:=AdvOfficeColorSelector5.SelectedColor;
RzPanel2.Color:=AdvOfficeColorSelector5.SelectedColor;
end;

procedure TForm1.rp3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
RzBackground1.GradientColorStart:=AdvOfficeColorSelector2.SelectedColor;
RzBackground1.GradientColorStop:=AdvOfficeColorSelector4.SelectedColor;
RzPanel1.Color:=AdvOfficeColorSelector5.SelectedColor;
RzPanel2.Color:=AdvOfficeColorSelector5.SelectedColor;
end;

end.
