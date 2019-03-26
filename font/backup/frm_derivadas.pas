unit Frm_Derivadas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  Buttons, Grids;

type

  { TFrmDerivadas }

  TFrmDerivadas = class(TForm)
    Edit1: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    EdtFx2: TEdit;
    EdtFx1: TEdit;
    EdtFx: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LFx2: TLabel;
    LFx: TLabel;
    LX: TLabel;
    LE: TLabel;
    LFx1: TLabel;
    PageControl1: TPageControl;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
  private

  public

  end;

var
  FrmDerivadas: TFrmDerivadas;

implementation

{$R *.lfm}

end.

