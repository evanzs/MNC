unit fmDerivadasR;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  ComCtrls, Grids;

type

  { TFrmDerivadaR }

  TFrmDerivadaR = class(TForm)
    BtnCalc: TBitBtn;
    BtnClear: TBitBtn;
    EdtFunc: TEdit;
    EdtN: TEdit;
    EdtE: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    UpDown1: TUpDown;
  private

  public

  end;

var
  FrmDerivadaR: TFrmDerivadaR;

implementation

{$R *.lfm}

end.

