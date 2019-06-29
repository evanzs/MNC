program MNC;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1,fmDerivadasR, Frm_Milenar, frm_confia, Frm_Series,
  frm_interpretador, Frm_Derivadas, frm_raizes, frm_lineares, lazcontrols,
  frm_interpola, tachartlazaruspkg, frm_integraisN;
  { you can add units after this }

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
Application.CreateForm(TFrmPrincipal, FrmPrincipal);
Application.CreateForm(TFrmConfia, FrmConfia);

Application.CreateForm(TFrmDerivadaR, FrmDerivadaR);
Application.CreateForm(TFrmDerivadas, FrmDerivadas);
Application.CreateForm(TfrmIntegrais, frmIntegrais);
Application.CreateForm(TfrmInterpolacao, frmInterpolacao);
Application.CreateForm(TFrmInterpretador, FrmInterpretador);
Application.CreateForm(TfrmLineares, frmLineares);
Application.CreateForm(TFrmMilenar, FrmMilenar);
Application.CreateForm(TFrmRaizes, FrmRaizes);
Application.CreateForm(TFrmSeries, FrmSeries);
  Application.Run;
end.

