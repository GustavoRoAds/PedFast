unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXCtrls,
  Vcl.CategoryButtons, Vcl.StdCtrls, Vcl.session, Vcl.Navigation;

type
  TFrmPrincipal = class(TForm)
    sMenu: TSplitView;
    pLogo: TPanel;
    btnMenu: TSpeedButton;
    Image1: TImage;
    ImageList: TImageList;
    CategoryMenuButtons: TCategoryButtons;
    sSubMenu: TSplitView;
    CategorySubButtons: TCategoryButtons;
    Panel1: TPanel;
    Label1: TLabel;
    btnCloseSub: TSpeedButton;
    pTELA: TPanel;
    pNavBar: TPanel;
    pUsuario: TPanel;
    lblNome: TLabel;
    lblEmail: TLabel;
    Image2: TImage;
    Image3: TImage;
    pContainer: TPanel;
    procedure btnMenuClick(Sender: TObject);
    procedure btnCloseSubClick(Sender: TObject);
    procedure CategoryMenuButtonsCategories0Items2Click(Sender: TObject);
    procedure CategoryMenuButtonsCategories0Items5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CategoryMenuButtonsCategories0Items1Click(Sender: TObject);
  private
    procedure CloseSubMenu;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UnitPedido;

procedure TFrmPrincipal.btnCloseSubClick(Sender: TObject);
begin
    CloseSubMenu;
end;

procedure TFrmPrincipal.btnMenuClick(Sender: TObject);
begin
    smenu.opened :=  NOT SMENU.Opened;
end;


procedure TFrmPrincipal.CloseSubMenu;
begin
    if sSubMenu.Opened then

    begin
      sSubMenu.Opened :=  false;
      CategorySubButtons.SelectedItem :=  nil;
      sMenu.SetFocus;
    end;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
      lblnome.Caption := Tsession.NOME;
      lblemail.Caption := tsession.email;
end;

procedure TFrmPrincipal.CategoryMenuButtonsCategories0Items1Click(
  Sender: TObject);
begin
    CloseSubMenu;
    TNavigation.open(TfrmPedido,frmPedido, pContainer);

end;

procedure TFrmPrincipal.CategoryMenuButtonsCategories0Items2Click(
  Sender: TObject);
begin
    sSubMenu.Opened := true;
end;

procedure TFrmPrincipal.CategoryMenuButtonsCategories0Items5Click(
  Sender: TObject);
begin
    application.Terminate;
end;

end.
