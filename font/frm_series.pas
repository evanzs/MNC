unit Frm_Series;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

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
  private

  public

  end;

var
  FrmSeries: TFrmSeries;

implementation

{$R *.lfm}

end.

