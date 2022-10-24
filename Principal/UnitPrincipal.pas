unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tfrm_principal = class(TForm)
    MainMenu1: TMainMenu;
    C1: TMenuItem;
    Responsveis1: TMenuItem;
    Alunos1: TMenuItem;
    TImageLogo: TImage;
    Panel1: TPanel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Responsveis1Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses UnitCadResponsaveis, UnitAlunos, UnitDM, UnitRelatorioAlunos;

procedure Tfrm_principal.Alunos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadAlunos, frmCadAlunos);
  frmCadAlunos.showModal;
end;

procedure Tfrm_principal.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadAlunos, frmCadAlunos);
  frmCadAlunos.showModal;
end;

procedure Tfrm_principal.Button2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_cad_responsaveis, frm_cad_responsaveis);
  frm_Cad_Responsaveis.showModal;
end;

procedure Tfrm_principal.Button3Click(Sender: TObject);
begin
  frm_alunos.RelatorioAlunos.preview();
end;

procedure Tfrm_principal.Responsveis1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_cad_responsaveis, frm_cad_responsaveis);
  frm_Cad_Responsaveis.showModal;
end;

end.
