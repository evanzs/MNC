unit Frm_Milenar;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  Buttons;

type

  { TFrmMilenar }

  TFrmMilenar = class(TForm)
    BtnInit: TButton;
    BtnImt: TButton;
    LCiclos: TLabel;
    LSoma: TLabel;
    LTempo: TLabel;
    StringGrid1: TStringGrid;
    procedure BtnInitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  FrmMilenar: TFrmMilenar;
  Interrompe:Boolean;

implementation

{$R *.lfm}

{ TFrmMilenar }

procedure TFrmMilenar.FormShow(Sender: TObject);
begin
ControlStyle:=ControlStyle+[csOpaque];DoubleBuffered:=True;
BtnImt.Enabled:=False;
Interrompe:=False;
with StringGrid1 do
begin
Cells[0,0]:='i';
Cells[1,0]:='j';
Cells[2,0]:='k';
Cells[3,0]:='l';
Cells[4,0]:='m';
Cells[5,0]:='n';
end;
end;

procedure TFrmMilenar.BtnInitClick(Sender: TObject);
var
i,j,k,l,m,n:Byte;TotalCiclos,Ciclos:Int64;Porcentagem:Real;
Soma:Integer;Tempo1,Tempo2:TTime;

begin
BtnInit.Enabled:=False;
BtnImt.Enabled:=True;
BtnImt.SetFocus;
with StringGrid1 do
begin
Cells[0,1]:='0';
Cells[1,1]:='0';
Cells[2,1]:='0';
Cells[3,1]:='0';
Cells[4,1]:='0';
Cells[5,1]:='0';
TotalCiclos:=281474976710656; //ou:=256*256*256*256*256*256ou:=Power(256,6);
Ciclos:=0;
Tempo1:=Now;
for i:=0 to 255 do
    for j:=0 to 255 do
        for k:=0 to 255 do
             for l:=0 to 255 do
                  for m:=0 to 255 do
                     for n:= 0 to 255 do
                     begin
                          Cells[0,1]:=IntToStr(i);
                          Cells[1,1]:=IntToStr(j);
                          Cells[2,1]:=IntToStr(k);
                          Cells[3,1]:=IntToStr(l);
                          Cells[4,1]:=IntToStr(m);
                          Cells[5,1]:=IntToStr(n);
                          Inc(Ciclos);
                          Porcentagem :=100*Ciclos/TotalCiclos;
                          Soma:=i+j+k+l+m+n;//O máximo será 255*6=1530
                          Tempo2:=Now;
                          LCiclos.Caption:='Ciclos = '+IntToStr(Ciclos)+'('+FloatToStrF(Porcentagem,ffNumber,3,8)+'%)';
                          LSoma.Caption:='Soma = '+IntToStr(Soma);
                          LTempo.Caption:='Tempo = '+FloatToStr(100000*(Tempo2-Tempo1))+' s';
                          Application.ProcessMessages;
                           if Interrompe then
                           begin
                              BtnInit.Enabled:=True;
                              BtnInit.SetFocus;
                              Interrompe:=False;
                              Exit;
                           end;
                     end;
end;
BtnInit.Enabled:=True;//Emmaisdemilanos,chegaránestalinha:-)
BtnImt.SetFocus;	//E,imediatamenteaseguir,chegaránestaend;
end;

end.

