unit UnitCadResponsaveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage;

type
  Tfrm_cad_responsaveis = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    txt_nome: TDBEdit;
    Label4: TLabel;
    txt_rg: TDBEdit;
    Label5: TLabel;
    txt_cpf: TDBEdit;
    Label6: TLabel;
    txt_telefone: TDBEdit;
    txt_email: TDBEdit;
    Label7: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    txtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    RBEnsinoReligioso: TDBRadioGroup;
    TImageLogo: TImage;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure txtLocalizarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_responsaveis: Tfrm_cad_responsaveis;

implementation

{$R *.dfm}

uses UnitDM;

procedure Tfrm_cad_responsaveis.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) then
  begin
    dm.tbResponsaveisParentesco.value := 'M�e';
    txt_nome.SetFocus;
  end;
end;

procedure Tfrm_cad_responsaveis.txtLocalizarChange(Sender: TObject);
begin
  dm.tbResponsaveis.locate('Nome', txtLocalizar.Text,[loPartialKey]);
end;

end.
