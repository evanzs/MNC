program MNC;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, Unit2, fmDerivadasR, Frm_Milenar, frm_confia, Frm_Series,
  frm_interpretador, Frm_Derivadas
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmDerivada, FrmDerivada);
  Application.CreateForm(TFrmDerivadaR, FrmDerivadaR);
  Application.CreateForm(TFrmMilenar, FrmMilenar);
  Application.CreateForm(TFrmConfia, FrmConfia);
  Application.CreateForm(TFrmSeries, FrmSeries);
  Application.CreateForm(TFrmInterpretador, FrmInterpretador);
  Application.CreateForm(TFrmDerivadas, FrmDerivadas);
  Application.Run;
end.

