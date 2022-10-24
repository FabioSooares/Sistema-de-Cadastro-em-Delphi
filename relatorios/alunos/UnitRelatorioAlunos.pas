unit UnitRelatorioAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_alunos = class(TForm)
    RelatorioAlunos: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    TImageLogo: TImage;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_alunos: Tfrm_alunos;

implementation

{$R *.dfm}

uses UnitDM;

end.
