unit frm_interpretador;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  ExtCtrls, Grids;

type

  { TFrmInterpretador }

  TFrmInterpretador = class(TForm)
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    StringGrid1: TStringGrid;
    Timer1: TTimer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private

  public

  end;

var
  FrmInterpretador: TFrmInterpretador;

implementation

{$R *.lfm}

{ TFrmInterpretador }

procedure TFrmInterpretador.SpeedButton1Click(Sender: TObject);
begin

end;

procedure TFrmInterpretador.SpeedButton3Click(Sender: TObject);
begin

end;

end.

