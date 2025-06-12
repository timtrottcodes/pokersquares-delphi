unit hiscore;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TfmHiScore = class(TForm)
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    lblName1: TLabel;
    lblName2: TLabel;
    lblName3: TLabel;
    lblName4: TLabel;
    lblName5: TLabel;
    lblName6: TLabel;
    lblName7: TLabel;
    lblName8: TLabel;
    lblName9: TLabel;
    lblName10: TLabel;
    lblScore1: TLabel;
    lblScore2: TLabel;
    lblScore3: TLabel;
    lblScore4: TLabel;
    lblScore5: TLabel;
    lblScore6: TLabel;
    lblScore7: TLabel;
    lblScore8: TLabel;
    lblScore9: TLabel;
    lblScore10: TLabel;
    lblQuote1: TLabel;
    lblQuote2: TLabel;
    lblQuote3: TLabel;
    lblQuote4: TLabel;
    lblQuote5: TLabel;
    lblQuote6: TLabel;
    lblQuote7: TLabel;
    lblQuote8: TLabel;
    lblQuote9: TLabel;
    lblQuote10: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure topClear;
  private
    { Private declarations }
  public
    LN: array[ 1..10 ] of TLabel;
    LS: array[ 1..10 ] of TLabel;
    LQ: array[ 1..10 ] of TLabel;
  end;

var
  fmHiScore: TfmHiScore;

implementation

uses main;

{$R *.DFM}

procedure TfmHiScore.FormCreate(Sender: TObject);
var
  I: integer;
begin

  for I:=1 to 10 do
  begin
    LN[I] := TLabel(FindComponent('lblName'+IntToStr(I)));
    LS[I] := TLabel(FindComponent('lblScore'+IntToStr(I)));
    LQ[I] := TLabel(FindComponent('lblQuote'+IntToStr(I)));
  end;
end;



procedure TfmHiScore.FormActivate(Sender: TObject);
var
  I: integer;
begin
  fmHiScore.Caption := fmMain.GameTitleArray[fmMain.GameType] + ' High Scores';

  for I:=1 to 10 do begin
    LN[I].Caption := fmMain.HighScores[fmMain.GameType][I].Name;
    LS[I].Caption := IntToStr(fmMain.HighScores[fmMain.GameType][I].Score);
    LQ[I].Caption := fmMain.HighScores[fmMain.GameType][I].Quote;
  end;
end;

procedure TfmHiScore.topClear;
var
  I: integer;
begin
  (* Clear top-ten list 
  for I:=1 to TOP_LISTLEN do with yawnTopTen[I] do begin
    Name := '';
    Quote := '';
    Score := 0;
    RandSeed := 0;  
  end;        *)
end;

procedure TfmHiScore.BitBtn2Click(Sender: TObject);
var
  R: integer;
begin
 (* R := Application.MessageBox(
    'Are you sure you want to clear the top ten list?',
    'Please confirm',
    MB_ICONQUESTION or MB_YESNO );
  if( R = IDYES ) then
    topClear;
  FormActivate( Self );  *)

end;

end.
