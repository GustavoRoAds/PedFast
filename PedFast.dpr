program PedFast;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FrmLogin},
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  Vcl.Loading in 'Utils\Vcl.Loading.pas',
  Vcl.session in 'Utils\Vcl.session.pas',
  Vcl.Navigation in 'Utils\Vcl.Navigation.pas',
  UnitPedido in 'UnitPedido.pas' {frmPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
