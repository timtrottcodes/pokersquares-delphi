program PokerSquares;

uses
  Forms,
  main in 'main.pas' {fmMain},
  config in 'config.pas' {fmConfig},
  select in 'select.pas' {fmGameType},
  hiscore in 'hiscore.pas' {fmHiScore},
  fmEnterTop10 in 'fmEnterTop10.pas' {fmTop10},
  How2 in 'How2.pas' {fmHow2},
  about in 'about.pas' {fmAbout};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'PokerSquares';
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmConfig, fmConfig);
  Application.CreateForm(TfmGameType, fmGameType);
  Application.CreateForm(TfmHiScore, fmHiScore);
  Application.CreateForm(TfmTop10, fmTop10);
  Application.CreateForm(TfmHow2, fmHow2);
  Application.CreateForm(TfmAbout, fmAbout);
  Application.Run;
end.
