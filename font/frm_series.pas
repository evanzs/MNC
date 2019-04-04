unit Frm_Series;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,Math;

type

  { TFrmSeries }

  TFrmSeries = class(TForm)
    BtnCalc: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    LFx: TLabel;
    LX: TLabel;
    LN: TLabel;
    Memo1: TMemo;
    RBE: TRadioButton;
    RBSen: TRadioButton;
    RBCOS: TRadioButton;
    RBLn: TRadioButton;
    procedure BtnCalcClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private

  public

  end;

var
  FrmSeries: TFrmSeries;
  x,y,z:Real;
  n:Integer;

implementation

{$R *.lfm}

{ TFrmSeries }

                      {Fatorial   recursivo}
function Fatorial(k:Integer):Real;
begin
  if k=0 then
     Result:=1
  else
      Result:=k*Fatorial(k-1);
end;

//-----------------CALCULA EXPONENCIAL -------------------------//
function CalculaExp(x:Real;n:Integer):Real;
var
   k:Integer;
begin
  Result:=0;
  for k:=0to n-1 do	//n termos->0 até n-1
   Result:=Result+Power(x,k)/Fatorial(k);
end;
//-------------------------------- -----------------------------//



//---------------------CALCULA SENO-----------------------------//
function CalculaSen(x:Real;n:Integer):Real;
var
   k:Integer;
begin
  Result:=0;
  for k:=0 to n-1 do
      Result:=Result+Power(-1,k)*Power(x,2*k+1)/Fatorial(2*k+1);
end;
//-------------------------------- -----------------------------//



//----------------------CALCULA COS-----------------------------//
function CalculaCos(x:Real;n:Integer):Real;
var
   k:Integer;
begin
  Result:=0;
  for k := 0 to n-1 do
    Result:=Result+Power(-1,k)*Power(x,2*k)/Fatorial(2*k);
end;
//-------------------------------- -----------------------------//



//------------------------CALCULA LN----------------------------//
function CalculaLn(x:Real;n:Integer):Real;
var
  k:Integer;
begin
  Result:=0;
  for k := 0 to n-1 do
    Result:=Result+Power((x-1)/(x+1),2*k+1)/(2*k+1);
    Result:=2*Result;
end;
//-------------------------------- -----------------------------//



procedure TFrmSeries.Edit1Change(Sender: TObject);
begin

end;

procedure TFrmSeries.BtnCalcClick(Sender: TObject);
begin
  Memo1.Clear;	//Limpar o Memo
  try
    x:=StrToFloat(Edit1.Text)	            //-converter texto em número Real
    except	                            //Se houver erro
    ShowMessage('Valor inválido para X');      //-informar
    Edit1.SetFocus;	                    //-colocar o foco no campo edição
    Exit;	//-interromper
  end;
  try
    n:=StrToInt(Edit2.Text);	//-converter texto em número Inteiro
  except
    ShowMessage('Valor invalido para N');
    Edit1.SetFocus;
    Exit;
  end;

                       {SE FOR E^x}
  if RBE.Checked then
  begin
      y :=CalculaExp(x,n);	//Calcular e^x com série
      z :=Exp(x);	//Calcular e^x do compilador
      Memo1.Lines.Add('Valor de e^x para X= '+FloatToStr(x)+ ' com série de ' +IntToStr(n)+' termos ');
      Memo1.Lines.Add('cálculo com a série: '+FloatToStr(y));
      Memo1.Lines.Add('cálculodo compilador: '+FloatToStr(z));
  end;
  //-------------------------------- -----------------------------//
                                     {SE FOR SENO}

  if  RBSen.Checked then
  begin
    y:=CalculaSen(x,n);
    z:=Sin(x);
    Memo1.Lines.Add('Valor de sen(x) para X= '+FloatToStr(x)+' com série de '+IntToStr(n)+' termos ');
    Memo1.Lines.Add('cálculo com a série: '+FloatToStr(y));
    Memo1.Lines.Add('cálculo do compilador: '+FloatToStr(z));
  end;
   //-------------------------------- -----------------------------//


                                      {SE FOR COS}
  if RBCOS.Checked then
  begin
    y:=CalculaCos(x,n);
    z:=Cos(x);
    Memo1.Lines.Add('Valor de cos(x) para X= '+FloatToStr(x)+' com série de '+IntToStr(n)+' termos ');
    Memo1.Lines.Add('cálculo coma série: '+FloatToStr(y));
    Memo1.Lines.Add('cálculo do compilador: '+FloatToStr(z));
  end;

   //-------------------------------- -----------------------------//
                                      {SE FOR LN}
  if RBLn.Checked then
  begin
    y:=CalculaLn(x,n);
    z:=lnxp1(x);
    Memo1.Lines.Add('Valor de ln(x) para X= '+FloatToStr(x)+' com série de '+IntToStr(n)+' termos ');
    Memo1.Lines.Add('cálculo com a série: '+FloatToStr(y));
    Memo1.Lines.Add('cálculo do compilador: '+FloatToStr(z));
  end;
  //-------------------------------- -----------------------------//
end;

end.
end;

end.

