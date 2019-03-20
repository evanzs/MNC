unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  ExtCtrls,ShellApi,Unit2;

type

  { TFrmPrincipal }

  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgFundoClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
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

procedure TFrmPrincipal.MenuItem2Click(Sender: TObject);
begin
  FrmDerivada.ShowModal;
end;

procedure TFrmPrincipal.MenuItem4Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.MenuItem7Click(Sender: TObject);
begin
  ShellExecute(Self.Handle,'open',PChar('calc.exe'),nil,nil,1);
end;

end.

