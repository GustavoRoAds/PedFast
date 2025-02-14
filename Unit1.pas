unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons, vcl.Loading, Vcl.session, Vcl.Imaging.pngimage;

type
  TFrmLogin = class(TForm)
    Fundo: TPanel;
    Image1: TImage;
    pLogin: TPanel;
    Ploginbackup: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image2: TImage;
    Panel1: TPanel;
    edtUsuario: TEdit;
    Panel2: TPanel;
    edtSenha: TEdit;
    Panel3: TPanel;
    btnAcessar: TSpeedButton;
    Panel4: TPanel;
    Panel6: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image3: TImage;
    Panel7: TPanel;
    Edit1: TEdit;
    Panel8: TPanel;
    Edit2: TEdit;
    Panel9: TPanel;
    SpeedButton1: TSpeedButton;
    Panel10: TPanel;
    procedure btnAcessarClick(Sender: TObject);
  private
    procedure TerminateLogin(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses UnitPrincipal;

procedure TFrmLogin.TerminateLogin(Sender: TObject);
begin
    TLoading.Hide;

    if sender is TThread then
    if assigned(tthread(sender).FatalException) then
    begin
      ShowMessage(exception(tthread(sender).FatalException).Message);
      exit;
    end;





    //dados de acesso
    TSession.ID_USUARIO := 1;
    TSession.EMAIL := 'Gustavo@gmail.com.br';
    TSession.NOME := 'Gustavo' ;

    IF NOT  Assigned(FrmPrincipal) then
          application.createform(TFrmPrincipal, FrmPrincipal);

        FrmPrincipal.Show;


end;


procedure TFrmLogin.btnAcessarClick(Sender: TObject);

begin
      tloading.show(self);


      tloading.ExecuteThread(procedure
      begin

       //criar requisição para o servidor
      sleep(1000);

      end, terminatelogin);


end;

end.
