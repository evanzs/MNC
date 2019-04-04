unit frm_confia;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls;

type

  { TFrmConfia }

  TFrmConfia = class(TForm)
    BtnInit: TBitBtn;
    BtnImt: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure BtnImtClick(Sender: TObject);
    procedure BtnInitClick(Sender: TObject);
  private

  public

  end;

var
  FrmConfia: TFrmConfia;
  Pare:Boolean;

implementation

{$R *.lfm}

{ TFrmConfia }

procedure TFrmConfia.BtnInitClick(Sender: TObject);

    var
  i,k:Integer;Soma:Real;Produto:Extended;

begin
ControlStyle:=ControlStyle+[csOpaque];DoubleBuffered:=True;
Pare:=False;
k:=0;
Soma:=0;
for i:=1 to 10000 do
begin
k:=k+1;
Soma:=Soma+0.0001;
Produto:=k*0.0001;
Label2.Caption:='k = '+IntToStr(k);
Label3.Caption:='SomaC(kvezes) = '+FloatToStr(Soma);
Label4.Caption:='Produto k x  C= '+FloatToStr(Produto);
Label5.Caption:='Erro absoluto = '+FloatToStr(Abs(Produto-Soma));
Label6.Caption:='Erro relativo = '+FloatToStr(Abs((Produto-Soma)/(Produto)));
Sleep(1);
Application.ProcessMessages;

if Abs(Soma-1.0)<0.0000001 then
Break;
if Pare then
Break;

end;
end;

procedure TFrmConfia.BtnImtClick(Sender: TObject);
begin
  Pare := True;
end;

end.

