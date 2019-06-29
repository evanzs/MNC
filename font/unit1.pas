unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  ExtCtrls, Buttons,ShellApi,
  //novos forms criados e estanciados
  Frm_Milenar,frm_confia,Frm_Series,Frm_Interpretador,
  frm_derivadas,frm_lineares, frm_raizes,frm_integraisN;

type

  { TFrmPrincipal }

  TFrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgFundoClick(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private

  public

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.lfm}

{ TFrmPrincipal }

procedure TFrmPrincipal.BtnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin

end;

procedure TFrmPrincipal.imgFundoClick(Sender: TObject);
begin

end;

procedure TFrmPrincipal.MenuItem10Click(Sender: TObject);
begin
  FrmInterpretador.ShowModal;
end;

procedure TFrmPrincipal.MenuItem11Click(Sender: TObject);
begin
   frmIntegrais.ShowModal;
end;

procedure TFrmPrincipal.MenuItem12Click(Sender: TObject);
begin
  frmLineares.ShowModal;
end;

procedure TFrmPrincipal.MenuItem13Click(Sender: TObject);
begin

end;

procedure TFrmPrincipal.MenuItem1Click(Sender: TObject);
begin

end;

procedure TFrmPrincipal.MenuItem2Click(Sender: TObject);
begin
  FrmDerivadas.ShowModal;
end;

procedure TFrmPrincipal.MenuItem3Click(Sender: TObject);
begin
  FrmRaizes.ShowModal;
end;

procedure TFrmPrincipal.MenuItem4Click(Sender: TObject);
begin
  ShellExecute(Self.Handle,'open',PChar('calc.exe'),nil,nil,1);
end;

procedure TFrmPrincipal.MenuItem5Click(Sender: TObject);
begin

end;

procedure TFrmPrincipal.MenuItem6Click(Sender: TObject);
begin
  FrmMilenar.ShowModal;
end;

procedure TFrmPrincipal.MenuItem7Click(Sender: TObject);
begin
  Application.Terminate;

end;

procedure TFrmPrincipal.MenuItem8Click(Sender: TObject);
begin
  FrmConfia.ShowModal;
end;

procedure TFrmPrincipal.MenuItem9Click(Sender: TObject);
begin
  FrmSeries.ShowModal;
end;

end.

