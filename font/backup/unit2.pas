unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Grids, Buttons;

type

  { TFrmDerivada }

  TFrmDerivada = class(TForm)
    BtnCalc: TBitBtn;
    BtnClear: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    EdtFunc: TEdit;
    EdtE: TEdit;
    EdtX: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MResultado: TMemo;
    procedure BtnCalcClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure DrawGrid1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Label4Click(Sender: TObject);
  private

  public

  end;

var
  FrmDerivada: TFrmDerivada;

implementation

{$R *.lfm}

{ TFrmDerivada }

procedure TFrmDerivada.BtnClearClick(Sender: TObject);
begin
// Limpando os campos
   EdtX.Clear;    // limpando o valor de x
   EdtFunc.Clear; // limpando o campo da função
   EdtE.Clear;    // limpando o campo do E

end;

procedure TFrmDerivada.BtnCalcClick(Sender: TObject);
begin

end;

procedure TFrmDerivada.DrawGrid1Click(Sender: TObject);
begin

end;

procedure TFrmDerivada.Edit1Change(Sender: TObject);
begin

end;

procedure TFrmDerivada.FormCreate(Sender: TObject);
begin

end;

procedure TFrmDerivada.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

  if ((EdtFunc.Text<>'') AND(EdtX.Text <>'')AND (EdtE.Text <> '')) then
  begin
       BtnCalc.Enabled:= True;
  end
  else
  begin
        BtnCalc.Enabled:= False;
  end;


end;

procedure TFrmDerivada.Label4Click(Sender: TObject);
begin

end;

end.

