unit frm_interpola;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  Spin, Grids, TAGraph;

type

  { TfrmInterpolacao }

  TfrmInterpolacao = class(TForm)
    Chart1: TChart;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure GroupBox3Click(Sender: TObject);
  private

  public

  end;

var
  frmInterpolacao: TfrmInterpolacao;

implementation

{$R *.lfm}

{ TfrmInterpolacao }

procedure TfrmInterpolacao.FormCreate(Sender: TObject);
begin

end;

procedure TfrmInterpolacao.GroupBox3Click(Sender: TObject);
begin

end;

end.

