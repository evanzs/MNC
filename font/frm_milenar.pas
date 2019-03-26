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
  private

  public

  end;

var
  FrmMilenar: TFrmMilenar;

implementation

{$R *.lfm}

end.

