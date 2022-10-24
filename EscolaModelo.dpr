program EscolaModelo;

uses
  Vcl.Forms,
  UnitPrincipal in 'Principal\UnitPrincipal.pas' {frm_principal},
  UnitCadResponsaveis in 'Responsaveis\UnitCadResponsaveis.pas' {frm_cad_responsaveis},
  UnitDM in 'dm\UnitDM.pas' {dm: TDataModule},
  UnitAlunos in 'Alunos\UnitAlunos.pas' {frmCadAlunos},
  UnitRelatorioAlunos in 'relatorios\alunos\UnitRelatorioAlunos.pas' {frm_alunos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrm_alunos, frm_alunos);
  Application.Run;
end.
