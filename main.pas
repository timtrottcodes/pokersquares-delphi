unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Menus, XPMenu, ExtCtrls, Tomcard2, caaPkStd,
  ComCtrls, Buttons, MidnightUnit, PDJSound,
  ImgList, TransCanvas, TransShape, MidnightPicClip;

type
  THighScore = record
    Name: string;
    Quote: string;
    Score: integer;
  end;
  THiScoreArray = array[1..10] of THighScore;

type
  TfmMain = class(TForm)
    XPMenu1: TXPMenu;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    Help1: TMenuItem;
    NewGame1: TMenuItem;
    SelectGame1: TMenuItem;
    Close1: TMenuItem;
    Undo1: TMenuItem;
    Redo1: TMenuItem;
    About1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Configure1: TMenuItem;
    DeckofCards: TListBox;
    ShuffledDeck: TListBox;
    UsedCards: TListBox;
    View1: TMenuItem;
    HiScores1: TMenuItem;
    Redraw1: TMenuItem;
    imgFrmBack: TImage;
    imgTile: TImage;
    TransScore: TTransShape;
    lblR1: TLabel;
    lblR2: TLabel;
    lblR3: TLabel;
    lblR4: TLabel;
    lblR5: TLabel;
    lblR1T: TLabel;
    lblR2T: TLabel;
    lblR3T: TLabel;
    lblR4T: TLabel;
    lblR5T: TLabel;
    lblR1Score: TLabel;
    lblR2Score: TLabel;
    lblR3Score: TLabel;
    lblR4Score: TLabel;
    lblR5Score: TLabel;
    lblC1: TLabel;
    lblC2: TLabel;
    lblC3: TLabel;
    lblC4: TLabel;
    lblC5: TLabel;
    lblC1T: TLabel;
    lblC2T: TLabel;
    lblC3T: TLabel;
    lblC4T: TLabel;
    lblC5T: TLabel;
    lblC1Score: TLabel;
    lblC2Score: TLabel;
    lblC3Score: TLabel;
    lblC4Score: TLabel;
    lblC5Score: TLabel;
    lblTotal: TLabel;
    lblTot: TLabel;
    lblHi: TLabel;
    lblHiScore: TLabel;
    lblHiName: TLabel;
    lblBonusTime: TLabel;
    lblTime: TLabel;
    Timer1: TTimer;
    PDJSound1: TPDJSound;
    lblR6: TLabel;
    lblR6T: TLabel;
    lblR6Score: TLabel;
    line1: TShape;
    ImagesDice: TImageList;
    Die1: TImage;
    Die2: TImage;
    Die3: TImage;
    Die4: TImage;
    Die5: TImage;
    btn_Roll: TBitBtn;
    TransDie: TTransShape;
    lblC6: TLabel;
    lblC6T: TLabel;
    lblC6Score: TLabel;
    lblC7: TLabel;
    lblC7T: TLabel;
    lblC7Score: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    ProgressBar1: TProgressBar;
    TransPyramid: TTransShape;
    lblKeeps: TLabel;
    Rules1: TMenuItem;
    PokerSquares1: TMenuItem;
    Yahtzee1: TMenuItem;
    Pyramid1: TMenuItem;
    Image1: TImage;
    Cursorcard: TImage;
    PicClip1: TPicClip;
    PicClip2: TPicClip;


    procedure PlaySound(filename: string);
    procedure HideEverything;
    procedure RedrawCards;

    procedure ResetCards;
    procedure ShuffleDeck;
    procedure DealCards(Number: integer);
    function  DealACard: integer;

    procedure EvaluateCards;
    procedure PrepareCards(C1, C2, C3, C4, C5: TCards);

    procedure AddTotalScores;
    procedure ProcessHighScore;
    function topGetPos(Score: integer): integer;

    procedure PokerSquares_Create;
    procedure PokerSquares_ShowDeck;
    procedure PokerSquares_UpdateDeck;
    procedure PokerSquares_DeckMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PokerSquares_DeckMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PokerSquares_DeckMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PokerSquares_CalculateHand;
    procedure PokerSquares_ShowScore(hand_text, hand_score: TLabel; HiName: string);
    procedure PokerSquares_InitLabels;

    procedure Yahtzee_InitLabels;
    function  Yahtzee_isCollision(iDie1, iDie2: TImage): boolean;
    procedure Yahtzee_ResetDice;
    procedure Yahtzee_CheckAllScores;
    function  Yahtzee_IsYahtzee: boolean;
    procedure Yahtzee_MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Yahtzee_lblClick(Sender: TObject);
    procedure btn_RollClick(Sender: TObject);


    procedure Pyramid_Create;
    procedure Pyramid_CardClick(Sender: TObject);
    procedure Pyramid_CheckVisibility;
    function Pyramid_IsCardAt(x,y: integer): boolean;
    function Pyramid_AnyCardsLeft: boolean;

    procedure FormCreate(Sender: TObject);
    procedure Configure1Click(Sender: TObject);
    procedure NewGame1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Scores1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure SelectGame1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Pyramid_DealCard(Sender: TObject);
    procedure HiScores1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure LoadScores;
    procedure SaveScores;
    procedure PokerSquares1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
  public
    LabelNumsArray: array[0..13] of TLabel;
    LabelsArray: array[0..13] of TLabel;
    GameType: integer;
    CardBackStyle: integer;

    CardDeck: array[1..53] of TCards;
    DiscardPile: array[1..3] of TCards;
    Placeholder: array[1..25] of TCards;


    Yahtzee_CheckBoxArray: array[0..4] of TCheckBox;
    Yahtzee_ImageArray: array[0..4] of TImage;
    Yahtzee_DiceArray: array[0..4] of byte;
    Yahtzee_AddedBonus: boolean;
    Yahtzee_RollNumber: integer;
    Yahtzee_Count: integer;
    Yahtzee_OneRoll: integer;

    PokerSquares_CardsPlaced: integer;
    PokerSquares_isDragging: boolean;
    PokerSquares_HoverCard: integer;
    PokerSquares_DraggingCard: TCards;
    PokerSquares_DraggingCardOldPos: TPoint;
    PokerSquares_BonusTime: integer;

    Pyramid_CardClicked: integer;
    Pyramid: array[0..25] of TPoint;
    Pyramid_Index: array[0..25] of integer;
    Pyramid_DeltCards: array[1..31] of integer;
    Pyramid_DeltCount: integer;

    HighScores: array[0..5] of THiScoreArray;
    GameTitleArray: array[0..5] of string;
    BaseDir: string;
  end;



type
  TCard = record
    Rank: TcaaRank;
    Suit: TcaaSuit;
  end;
  TCardArray = array[0..4] of TCard;

var
  Hand: TcaaPokerHand;
  Deck: TcaaPokerDeck;
  PlaceemBackground: timage;

  Cards: TCardArray;
  fmMain: TfmMain;
  CHEATER: boolean;

  formbackground: string;
  cardbackground: integer;
  SOUND_BLIP: string;
  SOUND_HIT: string;
  SOUND_CLICK: string;
  SOUND_WIN: string;
  SOUND_DICE: string;
  SOUND_SHUFFLE: string;
  r1, r2, r3, r4, r5: boolean;
  GameInProgress, Rolling: boolean;
  BitMasque: TBitmap;                 {transparency bitmap for custom cursor}

const GAMETYPE_PLACEEM = 0;
      GAMETYPE_POKERSQUARES = 1;
      GAMETYPE_PYRAMID = 2;
      GAMETYPE_SPIDER = 3;
      GAMETYPE_YAHTZEE = 4;
      _APP_REG_KEY = 'Software\Lonewolf\PokerSquares';

implementation

uses config, select, hiscore, fmEnterTop10, How2, about;

{$R *.DFM}

procedure TfmMain.LoadScores;
var i,j: integer;
begin
  { Load stats from registry into config record.
    If error or none there, then initialize defaults. 
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(_APP_REG_KEY, False) then
    begin
      for i := 0 to 5 do
      begin
        for j := 1 to 10 do
        begin
          HighScores[i][j].Name := Reg.ReadString(GameTitleArray[i] + 'N' + IntToStr(j));
          z := Reg.ReadString(GameTitleArray[i] + 'S' + IntToStr(j));
          if z <> '' then HighScores[i][j].Score := StrToInt(z);
          HighScores[i][j].Quote := Reg.ReadString(GameTitleArray[i] + 'Q' + IntToStr(j));
        end;
        Reg.CloseKey;
      end;
    end
    else
    begin }
      for i := 0 to 5 do
      begin
        for j := 1 to 10 do
        begin
          HighScores[i][j].Name := 'Lonewolf';
          HighScores[i][j].Score := 1+(10-j);
          HighScores[i][j].Quote := GameTitleArray[i];
        end;
      end;

 {   end;

  finally
   FreeAndNil(Reg);
  end;    }
end;

procedure TfmMain.SaveScores;
var
  i,j: integer;
begin
  { Save stats from config record to Registry.
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(_APP_REG_KEY, True) then
      begin
        for i := 0 to 5 do
        begin
          for j := 1 to 10 do
          begin
            Reg.WriteString(GameTitleArray[i] + 'N' + IntToStr(j),HighScores[i][j].Name);
            Reg.WriteString(GameTitleArray[i] + 'S' + IntToStr(j),IntToStr(HighScores[i][j].Score));
            Reg.WriteString(GameTitleArray[i] + 'Q' + IntToStr(j),HighScores[i][j].Quote);
          end;
        end;
        Reg.CloseKey;
      end;
  finally
    FreeAndNil(Reg);
  end;  }
end;

procedure TfmMain.FormCreate(Sender: TObject);
var i,j: integer;
begin
  BaseDir := ExtractFilePath(Application.Exename);
  Randomize;

  GameTitleArray[0] := 'Poker Squares';
  GameTitleArray[1] := 'Pyramid';
  GameTitleArray[2] := 'Spider';
  GameTitleArray[3] := 'Yahtzee';
  GameTitleArray[4] := 'NewGame1';
  GameTitleArray[5] := 'NewGame2';

  BitMasque := TBitmap.create;
  with BitMasque, canvas do begin
    width := 32;
    height := 32;
    draw( 0, 0, Cursorcard.picture.bitmap );
    {$IFDEF VER90}
    brush.color := Cursorcard.picture.bitmap.transparentcolor;
    BitMasque.monochrome := true;
    {$ENDIF}
    {$IFDEF VER100}
		BitMasque.mask( clBlack );		//add 05/06 for D3
    {$ENDIF}
  end;


  fmMain.Width:=800;
  fmMain.Height := 612;

  //config settings
  formbackground := BaseDir + 'media\background\bluemarble.jpg';
  CardBackStyle := 3;

  SOUND_BLIP := BaseDir + 'media\sounds\blip2.wav';
  SOUND_HIT := BaseDir +  'media\sounds\hit3.wav';
  SOUND_CLICK := BaseDir +  'media\sounds\click1.wav';
  SOUND_WIN := BaseDir + 'media\sounds\winlevel.wav';
  SOUND_SHUFFLE := BaseDir + 'media\sounds\shuffle.wav';
  SOUND_DICE := BaseDir + 'media\sounds\dice.wav';

  imgTile.Align := alClient;
  imgFrmBack.Picture.LoadFromFile(formbackground);
  TileImage(imgFrmBack, imgTile);

  if lowercase(ParamStr(1)) = 'cheats' then CHEATER := TRUE;

  Hand := TcaaPokerHand.Create(5); { standard five-card hand }
  Deck := TcaaPokerDeck.Create;

  for i := 1 to 53 do
  begin
    CardDeck[i] := TCards.Create(self);
    CardDeck[i].Parent := fmMain;
    CardDeck[i].State := ctFront;
    CardDeck[i].CardBackStyle := CardBackStyle;
    CardDeck[i].DeckValue := i;
    CardDeck[i].Enabled := TRUE;
    CardDeck[i].Visible := FALSE;
    CardDeck[i].Top := -100;
    CardDeck[i].Left := -100;
    CardDeck[i].Tag := 0;
    CardDeck[i].Hint := IntToStr(i);
  end;
  for i := 1 to 25 do
  begin
    PlaceHolder[i] := TCards.Create(self);
    PlaceHolder[i].Parent := fmMain;
    PlaceHolder[i].State := ctBack;

    if CHEATER then
      PlaceHolder[i].State := ctFront;

    PlaceHolder[i].CardBackStyle := CardBackStyle;
    PlaceHolder[i].Value := 1;
    PlaceHolder[i].Enabled := TRUE;
    PlaceHolder[i].Visible := FALSE;
    PlaceHolder[i].Top := -100;
    PlaceHolder[i].Left := -100;
    PlaceHolder[i].Tag := -1;
  end;
  for i := 1 to 3 do
  begin
    DiscardPile[i] := TCards.Create(self);
    DiscardPile[i].Parent := fmMain;
    DiscardPile[i].State := ctBack;
    DiscardPile[i].CardBackStyle := CardBackStyle;
    DiscardPile[i].Value := 1;
    DiscardPile[i].Enabled := TRUE;
    DiscardPile[i].Visible := FALSE;
    DiscardPile[i].Top := -100;
    DiscardPile[i].Left := -100;
    DiscardPile[i].Tag := -1;
  end;

  for i := 0 to 4 do
    begin
      Yahtzee_ImageArray[i] := TImage(FindComponent('Die' + IntToStr(i+1)));
      Yahtzee_CheckBoxArray[i] := TCheckBox(FindComponent('CheckBox' + IntToStr(i+1)));
    end;

  LabelsArray[0] := lblR1;
  LabelNumsArray[0] := lblR1Score;
  LabelsArray[1] := lblR2;
  LabelNumsArray[1] := lblR2Score;
  LabelsArray[2] := lblR3;
  LabelNumsArray[2] := lblR3Score;
  LabelsArray[3] := lblR4;
  LabelNumsArray[3] := lblR4Score;
  LabelsArray[4] := lblR5;
  LabelNumsArray[4] := lblR5Score;
  LabelsArray[5] := lblR6;
  LabelNumsArray[5] := lblR6Score;
  LabelsArray[6] := lblC1;
  LabelNumsArray[6] := lblC1Score;
  LabelsArray[7] := lblC2;
  LabelNumsArray[7] := lblC2Score;
  LabelsArray[8] := lblC3;
  LabelNumsArray[8] := lblC3Score;
  LabelsArray[9] := lblC4;
  LabelNumsArray[9] := lblC4Score;
  LabelsArray[10] := lblC5;
  LabelNumsArray[10] := lblC5Score;
  LabelsArray[11] := lblC6;
  LabelNumsArray[11] := lblC6Score;
  LabelsArray[12] := lblBonusTime;
  LabelNumsArray[12] := lblTime;
  LabelsArray[13] := lblC7;
  LabelNumsArray[13] := lblC7Score;

  LoadScores;
  GameType := -1;


end;

procedure TfmMain.RedrawCards;
var i: integer;
begin
  for i := 1 to 52 do
  begin
    CardDeck[i].CardBackStyle := CardBackStyle;
  end;
  for i := 1 to 25 do
  begin
    PlaceHolder[i].CardBackStyle := CardBackStyle;
  end;
  for i := 1 to 3 do
  begin
    DiscardPile[i].CardBackStyle := CardBackStyle;
  end;
end;

procedure TfmMain.HideEverything;
var i: integer;
begin
  for i := 1 to 52 do
  begin
    CardDeck[i].Visible := FALSE;
    CardDeck[i].Top := -100;
    CardDeck[i].Left := -100;
  end;
  for i := 1 to 25 do
  begin
    PlaceHolder[i].Visible := FALSE;
    PlaceHolder[i].Top := -100;
    PlaceHolder[i].Left := -100;
  end;
  for i := 1 to 3 do
  begin
    DiscardPile[i].Visible := FALSE;
    DiscardPile[i].Top := -100;
    DiscardPile[i].Left := -100;
  end;

  TransDie.Visible := FALSE;
  TransScore.Visible := FALSE;
  TransPyramid.Visible := FALSE;
  Line1.Visible := FALSE;

  lblKeeps.Visible := FALSE;

  btn_Roll.Visible := FALSE;

  Die1.Visible := FALSE;
  Die1.Top := -100;
  Die1.Left := -100;
  Die2.Visible := FALSE;
  Die2.Top := -100;
  Die2.Left := -100;
  Die3.Visible := FALSE;
  Die3.Top := -100;
  Die3.Left := -100;
  Die4.Visible := FALSE;
  Die4.Top := -100;
  Die4.Left := -100;
  Die5.Visible := FALSE;
  Die5.Top := -100;
  Die5.Left := -100;

  lblR1.Visible := FALSE;
  lblR2.Visible := FALSE;
  lblR3.Visible := FALSE;
  lblR4.Visible := FALSE;
  lblR5.Visible := FALSE;
  lblR6.Visible := FALSE;
  lblR1T.Visible := FALSE;
  lblR2T.Visible := FALSE;
  lblR3T.Visible := FALSE;
  lblR4T.Visible := FALSE;
  lblR5T.Visible := FALSE;
  lblR6T.Visible := FALSE;
  lblR1Score.Visible := FALSE;
  lblR2Score.Visible := FALSE;
  lblR3Score.Visible := FALSE;
  lblR4Score.Visible := FALSE;
  lblR5Score.Visible := FALSE;
  lblR6Score.Visible := FALSE;
  lblC1.Visible := FALSE;
  lblC2.Visible := FALSE;
  lblC3.Visible := FALSE;
  lblC4.Visible := FALSE;
  lblC5.Visible := FALSE;
  lblC6.Visible := FALSE;
  lblC7.Visible := FALSE;
  lblC1T.Visible := FALSE;
  lblC2T.Visible := FALSE;
  lblC3T.Visible := FALSE;
  lblC4T.Visible := FALSE;
  lblC5T.Visible := FALSE;
  lblC6T.Visible := FALSE;
  lblC7T.Visible := FALSE;
  lblC1Score.Visible := FALSE;
  lblC2Score.Visible := FALSE;
  lblC3Score.Visible := FALSE;
  lblC4Score.Visible := FALSE;
  lblC5Score.Visible := FALSE;
  lblC6Score.Visible := FALSE;
  lblC7Score.Visible := FALSE;
  lblBonusTime.Visible := FALSE;
  lblTime.Visible := FALSE;
  lblTotal.Visible := FALSE;
  lblTot.Visible := FALSE;
  lblHi.Visible := FALSE;
  lblHiScore.Visible := FALSE;
  lblHiName.Visible := FALSE;

  for i := 0 to 13 do
  begin
    LabelsArray[i].Font.Color := clWhite;
    LabelsArray[i].Font.Style := [];
    LabelNumsArray[i].Font.Color := clWhite;
  end;
end;







procedure TfmMain.ResetCards;
var i: integer;
begin
  for i := 1 to 52 do
  begin
    CardDeck[i].State := ctFront;
    CardDeck[i].Transparent := FALSE;
    CardDeck[i].CardBackStyle := CardBackStyle;
    CardDeck[i].Enabled := TRUE;
    CardDeck[i].Visible := FALSE;
    CardDeck[i].Top := -100;
    CardDeck[i].Left := -100;
    CardDeck[i].Tag := 0;
    CardDeck[i].OnMouseDown := nil;
    CardDeck[i].OnMouseUp := nil;
    CardDeck[i].OnMouseMove := nil;
    CardDeck[i].OnClick := nil;
  end;
  for i := 1 to 25 do
  begin
    PlaceHolder[i].State := ctBack;
    PlaceHolder[i].CardBackStyle := CardBackStyle;
    PlaceHolder[i].Value := 1;
    PlaceHolder[i].Enabled := TRUE;
    PlaceHolder[i].Visible := FALSE;
    PlaceHolder[i].Top := -100;
    PlaceHolder[i].Left := -100;
    PlaceHolder[i].Tag := -1;
    PlaceHolder[i].OnMouseDown := nil;
    PlaceHolder[i].OnMouseUp := nil;
    PlaceHolder[i].OnMouseMove := nil;
    PlaceHolder[i].OnClick := nil;
  end;
  for i := 1 to 3 do
  begin
    DiscardPile[i].State := ctBack;
    DiscardPile[i].CardBackStyle := CardBackStyle;
    DiscardPile[i].Value := 1;
    DiscardPile[i].Enabled := TRUE;
    DiscardPile[i].Visible := FALSE;
    DiscardPile[i].Top := -100;
    DiscardPile[i].Left := -100;
    DiscardPile[i].Tag := -1;
    DiscardPile[i].OnMouseDown := nil;
    DiscardPile[i].OnMouseUp := nil;
    DiscardPile[i].OnMouseMove := nil;
    DiscardPile[i].OnClick := nil;
  end;

  Cards[0].Rank := caaTwo;
  Cards[1].Rank := caaThree;
  Cards[2].Rank := caaFive;
  Cards[3].Rank := caaEight;
  Cards[4].Rank := caaKing;
  Cards[0].Suit := caaSpades;
  Cards[1].Suit := caaClubs;
  Cards[2].Suit := caaDiamonds;
  Cards[3].Suit := caaSpades;
  Cards[4].Suit := caaHearts;
end;



procedure TfmMain.ShuffleDeck;
var i,r: integer;
begin
  PlaySound(SOUND_SHUFFLE);
  while ShuffledDeck.Items.Count > 0 do
  begin
    DeckOfCards.Items.Add(ShuffledDeck.Items.Strings[0]);
    ShuffledDeck.Items.Delete(0);
  end;
  while UsedCards.Items.Count > 0 do
  begin
    DeckOfCards.Items.Add(UsedCards.Items.Strings[0]);
    UsedCards.Items.Delete(0);
  end;
  Randomize;
  while DeckOfCards.Items.Count > 0 do
  begin
    r := Random(DeckOfCards.Items.Count);
    ShuffledDeck.Items.Add(DeckOfCards.Items.Strings[r]);
    DeckOfCards.Items.Delete(r);
  end;
end;

procedure TfmMain.DealCards(Number: integer);
var i,r: integer;
begin
  for i := 0 to Number - 1 do
  begin
    r := Random(ShuffledDeck.Items.Count);

    UsedCards.Items.Add(ShuffledDeck.Items.Strings[r]);
    ShuffledDeck.Items.Delete(r);
  end;
end;

function TfmMain.DealACard: integer;
var r: integer;
    res: integer;
begin
  r := Random(ShuffledDeck.Items.Count);
  UsedCards.Items.Add(ShuffledDeck.Items.Strings[r]);
  res := StrToInt(ShuffledDeck.Items.Strings[r]);
  ShuffledDeck.Items.Delete(r);
  result := res;
end;


procedure TfmMain.Configure1Click(Sender: TObject);
begin
  fmConfig.ShowModal;
end;

procedure TfmMain.NewGame1Click(Sender: TObject);
var procede: boolean;
    x,y: integer;
begin
  procede := true;

  if GameType = -1 then fmGameType.ShowModal;

  if GameInProgress then
    if MessageDlg('Creating a new game will abort game in progress.' + #10#13 + 'Continue?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  procede := false;

  if procede then
  begin
    HideEverything;
    if GameType = GAMETYPE_POKERSQUARES then
    begin
      PokerSquares_CardsPlaced := 25;
      ResetCards;
      ShuffleDeck;
      DealCards(25);
      Pokersquares_Create;
      PokerSquares_ShowDeck;
      PokerSquares_UpdateDeck;
      PokerSquares_InitLabels;
      lblTime.Caption := IntToStr(PokerSquares_BonusTime);
      r1 := false;
      r2 := false;
      r3 := false;
      r4 := false;
      r5 := false;
      GameInProgress := TRUE;
      lblTot.Caption := '60';
      PokerSquares_BonusTime := 60;
      Timer1.Enabled := true;
      TransScore.Visible := TRUE;
      Line1.Visible := TRUE;
    end;
    if GameType = GAMETYPE_YAHTZEE then
    begin
      Timer1.Enabled := FALSE;
      Yahtzee_InitLabels;
      Yahtzee_ResetDice;
      GameInProgress := TRUE;
      TransDie.Visible := TRUE;
      TransScore.Visible := TRUE;
      Line1.Visible := TRUE;
      btn_Roll.Visible := TRUE;
    end;
    if GameType = GAMETYPE_PYRAMID then
    begin
      Timer1.Enabled := FALSE;
      ResetCards;
      ShuffleDeck;
      //DealCards(52);
      Pyramid_Create;
      GameInProgress := TRUE;
      TransPyramid.Visible := TRUE;
      Pyramid_CardClicked := -1;
    end;
    if GameType = GAMETYPE_PLACEEM then
    begin
      PlaceemBackground := timage.Create(fmMain);
      PlaceemBackground.Top := 0;
      PlaceemBackground.Left := 0;
      PlaceemBackground.Width := 529;
      PlaceemBackground.Top := 441;
      PlaceemBackground.Visible := true;
      PlaceemBackground.BringToFront;

      for y := 1 to 10 do
        for x := 1 to 10 do
        begin
          PlaceemBackground.Canvas.Rectangle(32*x, 32*y, 32*x*2, 32*y*2);
          //PlaceemBackground.Canvas.Draw(32*x, 32*y, Cursorcard.Picture.Bitmap);
        end;
    end;
  end;

  fmMain.Caption := 'l o n e w o l f  -  ' + GameTitleArray[GameType];
end;

procedure TfmMain.PokerSquares_InitLabels;
begin
    lblR1.Visible := TRUE;
    lblR2.Visible := TRUE;
    lblR3.Visible := TRUE;
    lblR4.Visible := TRUE;
    lblR5.Visible := TRUE;
    lblR6.Visible := FALSE;
    lblR1T.Visible := TRUE;
    lblR2T.Visible := TRUE;
    lblR3T.Visible := TRUE;
    lblR4T.Visible := TRUE;
    lblR5T.Visible := TRUE;
    lblR6T.Visible := FALSE;
    lblR1Score.Visible := TRUE;
    lblR2Score.Visible := TRUE;
    lblR3Score.Visible := TRUE;
    lblR4Score.Visible := TRUE;
    lblR5Score.Visible := TRUE;
    lblR6Score.Visible := TRUE;
    lblC1.Visible := TRUE;
    lblC2.Visible := TRUE;
    lblC3.Visible := TRUE;
    lblC4.Visible := TRUE;
    lblC5.Visible := TRUE;
    lblC6.Visible := FALSE;
    lblC7.Visible := FALSE;
    lblC1T.Visible := TRUE;
    lblC2T.Visible := TRUE;
    lblC3T.Visible := TRUE;
    lblC4T.Visible := TRUE;
    lblC5T.Visible := TRUE;
    lblC6T.Visible := FALSE;
    lblC7T.Visible := FALSE;
    lblC1Score.Visible := TRUE;
    lblC2Score.Visible := TRUE;
    lblC3Score.Visible := TRUE;
    lblC4Score.Visible := TRUE;
    lblC5Score.Visible := TRUE;
    lblC6Score.Visible := FALSE;
    lblC7Score.Visible := FALSE;
    lblBonusTime.Visible := TRUE;
    lblTime.Visible := TRUE;
    lblTotal.Visible := TRUE;
    lblTot.Visible := TRUE;
    lblHi.Visible := TRUE;
    lblHiScore.Visible := TRUE;
    lblHiName.Visible := TRUE;

    lblR1.Caption := 'Row 1:';
    lblR2.Caption := 'Row 2:';
    lblR3.Caption := 'Row 3:';
    lblR4.Caption := 'Row 4:';
    lblR5.Caption := 'Row 5:';
    lblR6.Caption := 'Row 6:';
    lblR1T.Caption := '';
    lblR2T.Caption := '';
    lblR3T.Caption := '';
    lblR4T.Caption := '';
    lblR5T.Caption := '';
    lblR6T.Caption := '';
    lblR1Score.Caption := '0';
    lblR2Score.Caption := '0';
    lblR3Score.Caption := '0';
    lblR4Score.Caption := '0';
    lblR5Score.Caption := '0';
    lblR6Score.Caption := '0';
    lblC1.Caption := 'Col 1:';
    lblC2.Caption := 'Col 2:';
    lblC3.Caption := 'Col 3:';
    lblC4.Caption := 'Col 4:';
    lblC5.Caption := 'Col 5:';
    lblC6.Caption := 'Col 6:';
    lblC1T.Caption := '';
    lblC2T.Caption := '';
    lblC3T.Caption := '';
    lblC4T.Caption := '';
    lblC5T.Caption := '';
    lblC6T.Caption := '';
    lblC1Score.Caption := '0';
    lblC2Score.Caption := '0';
    lblC3Score.Caption := '0';
    lblC4Score.Caption := '0';
    lblC5Score.Caption := '0';
    lblC6Score.Caption := '0';
    lblBonusTime.Caption := 'Bonus Time:';
    lblTotal.Caption := 'Your Score:';
    lblTot.Caption := '';
    lblHi.Caption := 'High Score:';
    lblHiScore.Caption := '';
    lblHiName.Caption := '';
end;
procedure TfmMain.PokerSquares_ShowDeck;
var i: integer;
begin
  for i := 0 to UsedCards.Items.Count - 1 do
  begin
    CardDeck[StrToInt(UsedCards.Items.Strings[i])].Top := 16;
    CardDeck[StrToInt(UsedCards.Items.Strings[i])].Left := 416 + (i*9);
    CardDeck[StrToInt(UsedCards.Items.Strings[i])].Visible := true;
    CardDeck[StrToInt(UsedCards.Items.Strings[i])].BringToFront;
    CardDeck[StrToInt(UsedCards.Items.Strings[i])].Tag := 1+i;
    CardDeck[StrToInt(UsedCards.Items.Strings[i])].State := ctBack;
    if CHEATER then CardDeck[StrToInt(UsedCards.Items.Strings[i])].State := ctFront;
    CardDeck[StrToInt(UsedCards.Items.Strings[i])].OnMouseDown := PokerSquares_DeckMouseDown;
    CardDeck[StrToInt(UsedCards.Items.Strings[i])].OnMouseUp := PokerSquares_DeckMouseUp;
    CardDeck[StrToInt(UsedCards.Items.Strings[i])].OnMouseMove := PokerSquares_DeckMouseMove;
  end;
end;

procedure TfmMain.PokerSquares_UpdateDeck;
var i: integer;
begin
  for i := 1 to 52 do
  begin
    if CardDeck[i].Tag = PokerSquares_CardsPlaced then
      CardDeck[i].State := ctFront;
  end;
end;

procedure TfmMain.FormDestroy(Sender: TObject);
var i: integer;
begin
  Hand.Free;
  Deck.Free;
  PlaceemBackground.Free;

  for i := 1 to 53 do
    CardDeck[i].Free;
  for i := 1 to 3 do
    DiscardPile[i].Free;
  for i := 1 to 25 do
   Placeholder[i].Free;

   SaveScores;
end;

procedure TfmMain.PokerSquares_Create;
var i: integer;
begin
  for i := 1 to 25 do
  begin
    PlaceHolder[i].Visible := true;
    //PlaceHolder[i].Deckvalue := 1+((i-1)*2);
  end;

  PlaceHolder[1].Top := 16;
  PlaceHolder[2].Top := 16;
  PlaceHolder[3].Top := 16;
  PlaceHolder[4].Top := 16;
  PlaceHolder[5].Top := 16;
  PlaceHolder[6].Top := 120;
  PlaceHolder[7].Top := 120;
  PlaceHolder[8].Top := 120;
  PlaceHolder[9].Top := 120;
  PlaceHolder[10].Top := 120;
  PlaceHolder[11].Top := 224;
  PlaceHolder[12].Top := 224;
  PlaceHolder[13].Top := 224;
  PlaceHolder[14].Top := 224;
  PlaceHolder[15].Top := 224;
  PlaceHolder[16].Top := 328;
  PlaceHolder[17].Top := 328;
  PlaceHolder[18].Top := 328;
  PlaceHolder[19].Top := 328;
  PlaceHolder[20].Top := 328;
  PlaceHolder[21].Top := 432;
  PlaceHolder[22].Top := 432;
  PlaceHolder[23].Top := 432;
  PlaceHolder[24].Top := 432;
  PlaceHolder[25].Top := 432;
  PlaceHolder[1].Left := 16;
  PlaceHolder[2].Left := 96;
  PlaceHolder[3].Left := 176;
  PlaceHolder[4].Left := 256;
  PlaceHolder[5].Left := 336;
  PlaceHolder[6].Left :=   16;
  PlaceHolder[7].Left :=   96;
  PlaceHolder[8].Left :=   176;
  PlaceHolder[9].Left :=   256;
  PlaceHolder[10].Left :=  336;
  PlaceHolder[11].Left :=  16;
  PlaceHolder[12].Left :=  96;
  PlaceHolder[13].Left :=  176;
  PlaceHolder[14].Left :=  256;
  PlaceHolder[15].Left :=  336;
  PlaceHolder[16].Left :=  16;
  PlaceHolder[17].Left :=  96;
  PlaceHolder[18].Left :=  176;
  PlaceHolder[19].Left :=  256;
  PlaceHolder[20].Left :=  336;
  PlaceHolder[21].Left :=  16;
  PlaceHolder[22].Left :=  96;
  PlaceHolder[23].Left :=  176;
  PlaceHolder[24].Left :=  256;
  PlaceHolder[25].Left :=  336;

end;


procedure TfmMain.PrepareCards(C1, C2, C3, C4, C5: TCards);
begin

  if C1.Value = 1 then Cards[0].Rank := caaAceLow;   //caaAceLow
  if C1.Value = 2 then Cards[0].Rank := caaTwo;
  if C1.Value = 3 then Cards[0].Rank := caaThree;
  if C1.Value = 4 then Cards[0].Rank := caaFour;
  if C1.Value = 5 then Cards[0].Rank := caaFive;
  if C1.Value = 6 then Cards[0].Rank := caaSix;
  if C1.Value = 7 then Cards[0].Rank := caaSeven;
  if C1.Value = 8 then Cards[0].Rank := caaEight;
  if C1.Value = 9 then Cards[0].Rank := caaNine;
  if C1.Value = 10 then Cards[0].Rank := caaTen;
  if C1.Value = 11 then Cards[0].Rank := caaJack;
  if C1.Value = 12 then Cards[0].Rank := caaQueen;
  if C1.Value = 13 then Cards[0].Rank := caaKing;

  if C2.Value = 1 then Cards[1].Rank := caaAceLow;   //caaAceLow
  if C2.Value = 2 then Cards[1].Rank := caaTwo;
  if C2.Value = 3 then Cards[1].Rank := caaThree;
  if C2.Value = 4 then Cards[1].Rank := caaFour;
  if C2.Value = 5 then Cards[1].Rank := caaFive;
  if C2.Value = 6 then Cards[1].Rank := caaSix;
  if C2.Value = 7 then Cards[1].Rank := caaSeven;
  if C2.Value = 8 then Cards[1].Rank := caaEight;
  if C2.Value = 9 then Cards[1].Rank := caaNine;
  if C2.Value = 10 then Cards[1].Rank := caaTen;
  if C2.Value = 11 then Cards[1].Rank := caaJack;
  if C2.Value = 12 then Cards[1].Rank := caaQueen;
  if C2.Value = 13 then Cards[1].Rank := caaKing;

  if C3.Value = 1 then Cards[2].Rank := caaAceLow;   //caaAceLow
  if C3.Value = 2 then Cards[2].Rank := caaTwo;
  if C3.Value = 3 then Cards[2].Rank := caaThree;
  if C3.Value = 4 then Cards[2].Rank := caaFour;
  if C3.Value = 5 then Cards[2].Rank := caaFive;
  if C3.Value = 6 then Cards[2].Rank := caaSix;
  if C3.Value = 7 then Cards[2].Rank := caaSeven;
  if C3.Value = 8 then Cards[2].Rank := caaEight;
  if C3.Value = 9 then Cards[2].Rank := caaNine;
  if C3.Value = 10 then Cards[2].Rank := caaTen;
  if C3.Value = 11 then Cards[2].Rank := caaJack;
  if C3.Value = 12 then Cards[2].Rank := caaQueen;
  if C3.Value = 13 then Cards[2].Rank := caaKing;

  if C4.Value = 1 then Cards[3].Rank := caaAceLow;   //caaAceLow
  if C4.Value = 2 then Cards[3].Rank := caaTwo;
  if C4.Value = 3 then Cards[3].Rank := caaThree;
  if C4.Value = 4 then Cards[3].Rank := caaFour;
  if C4.Value = 5 then Cards[3].Rank := caaFive;
  if C4.Value = 6 then Cards[3].Rank := caaSix;
  if C4.Value = 7 then Cards[3].Rank := caaSeven;
  if C4.Value = 8 then Cards[3].Rank := caaEight;
  if C4.Value = 9 then Cards[3].Rank := caaNine;
  if C4.Value = 10 then Cards[3].Rank := caaTen;
  if C4.Value = 11 then Cards[3].Rank := caaJack;
  if C4.Value = 12 then Cards[3].Rank := caaQueen;
  if C4.Value = 13 then Cards[3].Rank := caaKing;

  if C5.Value = 1 then Cards[4].Rank := caaAceLow;   //caaAceLow
  if C5.Value = 2 then Cards[4].Rank := caaTwo;
  if C5.Value = 3 then Cards[4].Rank := caaThree;
  if C5.Value = 4 then Cards[4].Rank := caaFour;
  if C5.Value = 5 then Cards[4].Rank := caaFive;
  if C5.Value = 6 then Cards[4].Rank := caaSix;
  if C5.Value = 7 then Cards[4].Rank := caaSeven;
  if C5.Value = 8 then Cards[4].Rank := caaEight;
  if C5.Value = 9 then Cards[4].Rank := caaNine;
  if C5.Value = 10 then Cards[4].Rank := caaTen;
  if C5.Value = 11 then Cards[4].Rank := caaJack;
  if C5.Value = 12 then Cards[4].Rank := caaQueen;
  if C5.Value = 13 then Cards[4].Rank := caaKing;

  if C1.Suit = csClubs    then Cards[0].Suit := caaClubs;
  if C1.Suit = csDiamonds then Cards[0].Suit := caaDiamonds;
  if C1.Suit = csHearts   then Cards[0].Suit := caaHearts;
  if C1.Suit = csSpades   then Cards[0].Suit := caaSpades;

  if C2.Suit = csClubs    then Cards[1].Suit := caaClubs;
  if C2.Suit = csDiamonds then Cards[1].Suit := caaDiamonds;
  if C2.Suit = csHearts   then Cards[1].Suit := caaHearts;
  if C2.Suit = csSpades   then Cards[1].Suit := caaSpades;

  if C3.Suit = csClubs    then Cards[2].Suit := caaClubs;
  if C3.Suit = csDiamonds then Cards[2].Suit := caaDiamonds;
  if C3.Suit = csHearts   then Cards[2].Suit := caaHearts;
  if C3.Suit = csSpades   then Cards[2].Suit := caaSpades;

  if C4.Suit = csClubs    then Cards[3].Suit := caaClubs;
  if C4.Suit = csDiamonds then Cards[3].Suit := caaDiamonds;
  if C4.Suit = csHearts   then Cards[3].Suit := caaHearts;
  if C4.Suit = csSpades   then Cards[3].Suit := caaSpades;

  if C5.Suit = csClubs    then Cards[4].Suit := caaClubs;
  if C5.Suit = csDiamonds then Cards[4].Suit := caaDiamonds;
  if C5.Suit = csHearts   then Cards[4].Suit := caaHearts;
  if C5.Suit = csSpades   then Cards[4].Suit := caaSpades;
end;

procedure TfmMain.EvaluateCards;
var
  Card, DeckPos: integer;
begin
  //lbxHandDisplay.Clear;
  for Card := 0 to 4 do
  begin
    DeckPos := (Ord(Cards[Card].Suit) * 13) + (Ord(Cards[Card].Rank));
    { safe method of copying a card from a deck.
      Do not do this:
        Hand[1] := Deck[DeckPos]
      unless you are never going to modify the card, sort the hand etc.
        and don't mind a few memory leaks.
      Instead, use: }
    if DeckPos >= 52 then
    begin
      ShowMessage('An Error Took Place!' + #10#13 + 'DeckPos: ' + IntToStr(DeckPos) + #10#13 +
                  'Card: ' + IntToStr(card) + #10#13 +
                  //'Suit: ' + IntToStr(Cards[card].suit) + #10#13 +
                  //'Rank: ' + IntToStr(Cards[card].rank) + #10#13#10#13 +
                  'Ord(Suit): ' + IntToStr(Ord(Cards[Card].Suit)) + #10#13 +
                  'Ord(Rank): ' + IntToStr(Ord(Cards[Card].Rank)) + #10#13 +
                  'Ord(Suit)*13 + Ord(Rank): ' + IntToStr((Ord(Cards[Card].Suit) * 13) + (Ord(Cards[Card].Rank))) + #10#13);
      Application.Terminate ;
      end
    else
      Hand.CopyCardFromDeck(DeckPos,Card,Deck);
    //lbxHandDisplay.Items.Add(Hand.Items[Card].Name);
  end;
  Hand.SetHighValues;
  Hand.SetLowValues;
  //lbxHandDisplay.Items.Add(Hand.HiName);
  //lbxHandDisplay.Items.Add(Hand.LoName);
  //txtHighRating.Text := IntToStr(Hand.HiRating);
  //txtLowRating.Text := IntToStr(Hand.LoRating);

end;

procedure TfmMain.PokerSquares_DeckMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var MousePos: TPoint;
  a, b: integer;
  MyPos: TRect;
begin
  GetCursorPos(MousePos);

  if PokerSquares_isDragging then
  begin
    if ssLeft in Shift then
    begin
      (Sender as TCards).Top := MousePos.Y - fmMain.Top - 86;
      (Sender as TCards).Left := MousePos.X - fmMain.Left - 40;
      PokerSquares_HoverCard := -1;
      for a := 1 to 25 do
      begin
        MyPos.Left := PlaceHolder[a].Left;
        MyPos.Right := PlaceHolder[a].Left + PlaceHolder[a].Width;
        MyPos.Top := PlaceHolder[a].Top;
        MyPos.Bottom := PlaceHolder[a].Top + PlaceHolder[a].Height;

        if (MousePos.x > (MyPos.Left + fmMain.Left)+20) and (MousePos.x < (MyPos.Right + fmMain.Left)-20) and
          (MousePos.y-40 > (MyPos.Top + fmMain.Top)) and (MousePos.y < (MyPos.Bottom + fmMain.Top)) then
        begin
        //
          begin
          //for b := 0 to 24 do
            //if CardArray[b].Name = CardArray[a].Name then
            //begin
            //  Me := CardArray[a];
              (Sender as TCards).Top := PlaceHolder[a].Top;
              (Sender as TCards).Left := PlaceHolder[a].Left;
              PokerSquares_HoverCard := a;
            //end
          end;
        end;
      end;
    end;
  end;
end;

procedure TfmMain.PokerSquares_DeckMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Sender as TCards).Tag = PokerSquares_CardsPlaced then
  begin
    PokerSquares_isDragging := TRUE;
    PokerSquares_DraggingCard := (Sender as TCards);
    PokerSquares_DraggingCardOldPos.y := PokerSquares_DraggingCard.Top;
    PokerSquares_DraggingCardOldPos.x := PokerSquares_DraggingCard.Left;
    (Sender as TCards).BringToFront;
  end;
end;

procedure TfmMain.PokerSquares_DeckMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if GameType = GAMETYPE_POKERSQUARES then
  begin
    if PokerSquares_isDragging then
    begin
      PokerSquares_isDragging := FALSE;
      if PokerSquares_HoverCard > 0 then
      begin
        if PlaceHolder[PokerSquares_HoverCard].Tag = -1 then
        begin
          PlaceHolder[PokerSquares_HoverCard].Deckvalue := PokerSquares_DraggingCard.DeckValue;
          PlaceHolder[PokerSquares_HoverCard].Tag := 1;
          PlaceHolder[PokerSquares_HoverCard].State := ctFront;
          PokerSquares_DraggingCard.Top := -100;
          PokerSquares_DraggingCard.Left := -100;
          Dec(PokerSquares_CardsPlaced);
          PokerSquares_UpdateDeck;
          PokerSquares_CalculateHand;
          PlaySound(SOUND_CLICK);
        end
        else
        begin
          //Dragged ontop of card already set
          PokerSquares_DraggingCard.Top := PokerSquares_DraggingCardOldPos.y;
          PokerSquares_DraggingCard.Left := PokerSquares_DraggingCardOldPos.x;
          PlaySound(SOUND_HIT);
        end;
      end
      else
      begin
        //Dragged off play cards
        PokerSquares_DraggingCard.Top := PokerSquares_DraggingCardOldPos.y;
        PokerSquares_DraggingCard.Left := PokerSquares_DraggingCardOldPos.x;
        PlaySound(SOUND_HIT);
      end;
      PokerSquares_UpdateDeck;
    end;
  end;
end;

procedure TfmMain.PlaySound(filename: string);
begin
  if fmConfig.chk_SoundsOn.Checked then
  begin
    PDJSound1.Stop;
    PDJSound1.SoundFile := filename;
    PDJSound1.Play;
  end;
end;


procedure TfmMain.PokerSquares_ShowScore(hand_text, hand_score: TLabel; HiName: string);
var cha: string;
begin
  if pos('VOID!', HiName) <=0 then
  begin
    hand_text.Caption := Copy(HiName,2,Length(HiName));

    cha := copy(HiName,0,1);

    if cha = 'a' then hand_score.caption := '2';   //
    if cha = 'b' then hand_score.caption := '4';   //
    if cha = 'c' then hand_score.caption := '6';   //
    if cha = 'd' then hand_score.caption := '10';  //
    if cha = 'e' then hand_score.caption := '12';  //
    if cha = 'f' then hand_score.caption := '14';  //
    if cha = 'g' then hand_score.caption := '16';  //
    if cha = 'h' then hand_score.caption := '20';  //
    if cha = 'i' then hand_score.caption := '25';  //

  end
  else
  begin
    hand_text.Caption := 'No Score Hand';
    hand_score.Caption := '0';
  end;

end;

procedure TfmMain.PokerSquares_CalculateHand;
var Total: integer;
begin

  if (PlaceHolder[1].State = ctFront) and (PlaceHolder[2].State = ctFront) and (PlaceHolder[3].State = ctFront) and (PlaceHolder[4].State = ctFront) and (PlaceHolder[5].State = ctFront) then
  begin
    PrepareCards(Placeholder[1], Placeholder[2], Placeholder[3], Placeholder[4], Placeholder[5]);
    EvaluateCards;
    if lblR1T.Caption = '' then PlaySound(SOUND_BLIP);
    PokerSquares_ShowScore(lblR1T, lblR1Score, Hand.HiName);
    r1 := true;
  end;

  if (PlaceHolder[6].State = ctFront) and (PlaceHolder[7].State = ctFront) and (PlaceHolder[8].State = ctFront) and (PlaceHolder[9].State = ctFront) and (PlaceHolder[10].State = ctFront) then
  begin
    PrepareCards(Placeholder[6], Placeholder[7], Placeholder[8], Placeholder[9], Placeholder[10]);
    EvaluateCards;
    if lblR2T.Caption = '' then PlaySound(SOUND_BLIP);
    PokerSquares_ShowScore(lblR2T, lblR2Score, Hand.HiName);
    r2 := true;
  end;

  if (PlaceHolder[11].State = ctFront) and (PlaceHolder[12].State = ctFront) and (PlaceHolder[13].State = ctFront) and (PlaceHolder[14].State = ctFront) and (PlaceHolder[15].State = ctFront) then
  begin
    PrepareCards(Placeholder[11], Placeholder[12], Placeholder[13], Placeholder[14], Placeholder[15]);
    EvaluateCards;
    if lblR3T.Caption = '' then PlaySound(SOUND_BLIP);
    PokerSquares_ShowScore(lblR3T, lblR3Score, Hand.HiName);
    r3 := true;
  end;

  if (PlaceHolder[16].State = ctFront) and (PlaceHolder[17].State = ctFront) and (PlaceHolder[18].State = ctFront) and (PlaceHolder[19].State = ctFront) and (PlaceHolder[20].State = ctFront) then
  begin
    PrepareCards(Placeholder[16], Placeholder[17], Placeholder[18], Placeholder[19], Placeholder[20]);
    EvaluateCards;
    if lblR4T.Caption = '' then PlaySound(SOUND_BLIP);
    PokerSquares_ShowScore(lblR4T, lblR4Score, Hand.HiName);
    r4 := true;
  end;

  if (PlaceHolder[21].State = ctFront) and (PlaceHolder[22].State = ctFront) and (PlaceHolder[23].State = ctFront) and (PlaceHolder[24].State = ctFront) and (PlaceHolder[25].State = ctFront) then
  begin
    PrepareCards(Placeholder[21], Placeholder[22], Placeholder[23], Placeholder[24], Placeholder[25]);
    EvaluateCards;
    if lblR5T.Caption = '' then PlaySound(SOUND_BLIP);
    PokerSquares_ShowScore(lblR5T, lblR5Score, Hand.HiName);
    r5 := true;
  end;

  if (PlaceHolder[1].State = ctFront) and (PlaceHolder[6].State = ctFront) and (PlaceHolder[11].State = ctFront) and (PlaceHolder[16].State = ctFront) and (PlaceHolder[21].State = ctFront) then
  begin
    PrepareCards(Placeholder[1], Placeholder[6], Placeholder[11], Placeholder[16], Placeholder[21]);
    EvaluateCards;
    if lblC1T.Caption = '' then PlaySound(SOUND_BLIP);
    PokerSquares_ShowScore(lblC1T, lblC1Score, Hand.HiName);
  end;

  if (PlaceHolder[2].State = ctFront) and (PlaceHolder[7].State = ctFront) and (PlaceHolder[12].State = ctFront) and (PlaceHolder[17].State = ctFront) and (PlaceHolder[22].State = ctFront) then
  begin
    PrepareCards(Placeholder[2], Placeholder[7], Placeholder[12], Placeholder[17], Placeholder[22]);
    EvaluateCards;
    if lblC2T.Caption = '' then PlaySound(SOUND_BLIP);
    PokerSquares_ShowScore(lblC2T, lblC2Score, Hand.HiName);
  end;

  if (PlaceHolder[3].State = ctFront) and (PlaceHolder[8].State = ctFront) and (PlaceHolder[13].State = ctFront) and (PlaceHolder[18].State = ctFront) and (PlaceHolder[23].State = ctFront) then
  begin
    PrepareCards(Placeholder[3], Placeholder[8], Placeholder[13], Placeholder[18], Placeholder[23]);
    EvaluateCards;
    if lblC3T.Caption = '' then PlaySound(SOUND_BLIP);
    PokerSquares_ShowScore(lblC3T, lblC3Score, Hand.HiName);
  end;

  if (PlaceHolder[4].State = ctFront) and (PlaceHolder[9].State = ctFront) and (PlaceHolder[14].State = ctFront) and (PlaceHolder[19].State = ctFront) and (PlaceHolder[24].State = ctFront) then
  begin
    PrepareCards(Placeholder[4], Placeholder[9], Placeholder[14], Placeholder[19], Placeholder[24]);
    EvaluateCards;
    if lblC4T.Caption = '' then PlaySound(SOUND_BLIP);
    PokerSquares_ShowScore(lblC4T, lblC4Score, Hand.HiName);
  end;

  if (PlaceHolder[5].State = ctFront) and (PlaceHolder[10].State = ctFront) and (PlaceHolder[15].State = ctFront) and (PlaceHolder[20].State = ctFront) and (PlaceHolder[25].State = ctFront) then
  begin
    PrepareCards(Placeholder[5], Placeholder[10], Placeholder[15], Placeholder[20], Placeholder[25]);
    EvaluateCards;
    if lblC5T.Caption = '' then PlaySound(SOUND_BLIP);
    PokerSquares_ShowScore(lblC5T, lblC5Score, Hand.HiName);
  end;

  AddTotalScores;

  if r1 and r2 and r3 and r4 and r5 then
  begin
    Timer1.Enabled := FALSE;
    PlaySound(SOUND_WIN);
    GameInProgress := FALSE;
    ShowMessage('GAME_OVER');
    ProcessHighScore;
  end;
end;

procedure TfmMain.AddTotalScores;
var total: integer;
    iTag: integer;
begin
  if GameType = GAMETYPE_YAHTZEE then
  begin
//     Yahtzee_GameTotal := Yahtzee_LeftTotal + Yahtzee_RightTotal + Yahtzee_Bonus + StrToInt(lblC7Score.Caption);
   for iTag := 1 to 14 do
     if LabelNumsArray[iTag-1].Font.Color = clGray then total := total + StrToInt(LabelNumsArray[iTag-1].Caption)


  end
  else
  begin
    Total := StrToInt(lblTime.Caption);
    Total := Total + StrToInt(lblR1Score.Caption) + StrToInt(lblR2Score.Caption) + StrToInt(lblR3Score.Caption) + StrToInt(lblR4Score.Caption) + StrToInt(lblR5Score.Caption) + StrToInt(lblR6Score.Caption);
    Total := Total + StrToInt(lblC1Score.Caption) + StrToInt(lblC2Score.Caption) + StrToInt(lblC3Score.Caption) + StrToInt(lblC4Score.Caption) + StrToInt(lblC5Score.Caption) + StrToInt(lblC6Score.Caption) + StrToInt(lblC7Score.Caption);
  end;
  lblTot.Caption := IntToStr(Total);
end;

procedure TfmMain.Scores1Click(Sender: TObject);
begin
ShowMessage('PokerSquares Hand Scores:' + #10#13#10#13 +
            '  One Pair ' + #9#9 + '2' + #10#13 +
            '  Two Pair ' + #9#9 + '4' + #10#13 +
            '  Three of a Kind ' + #9 + '6' + #10#13 +
            '  Straight ' + #9#9 + '5' + #10#13 +
            '  Flush ' + #9#9#9 + '6' + #10#13 +
            '  Full House ' + #9#9 + '8' + #10#13 +
            '  Four of a Kind ' + #9#9 + '10' + #10#13 +
            '  Straight Flush ' + #9#9 + '15' + #10#13 +
            '  Royal Flush ' + #9#9 + '25' + #10#13);
end;

function TfmMain.Yahtzee_isCollision(iDie1, iDie2: TImage): boolean;
var myRect: TRect;
    myPoint, myPoint2: TPoint;
    collision: boolean;
    dx,dy: single;
    distance: single;
begin
  myPoint2.X := idie1.Left + 16;
  myPoint2.y := idie1.top + 16;

  myPoint.X := idie2.left + 16;
  mypoint.y := idie2.top + 16;

  if mypoint.x > mypoint2.x then
    dx := mypoint.x - mypoint2.x
  else
    dx := mypoint2.x - mypoint.x;

  if mypoint.y > mypoint2.y then
    dy := mypoint.y - mypoint2.y
  else
    dy := mypoint2.y - mypoint.y;

  distance := sqrt(abs(sqr(dy)) + abs(sqr(dx)));

  if distance < 100 then
    result := true
  else
    result := false;
end;




procedure TfmMain.btn_RollClick(Sender: TObject);
var r,y,z: integer;
begin
  if GameInProgress and not Rolling then
  begin
    Rolling := true;

    if Yahtzee_RollNumber = 0 then
      Yahtzee_AddedBonus := False;

    if Yahtzee_RollNumber = 3 then Exit;

    inc(Yahtzee_RollNumber);
    //lblRoll.Caption := IntToStr(Yahtzee_RollNumber);
    for r := 0 to 4 do
      if not Yahtzee_CheckBoxArray[r].Checked then Yahtzee_ImageArray[r].Visible := FALSE;

    PlaySound(SOUND_DICE);
    Delay(1300);

    for r := 0 to 4 do
      Yahtzee_ImageArray[r].Visible := TRUE;

    for r := 0 to 4 do
    begin
      if not Yahtzee_CheckBoxArray[r].Checked then
      begin
        y := Random(6);
        Yahtzee_ImageArray[r].Visible := TRUE;
        Yahtzee_ImageArray[r].Picture.Assign(nil);
        ImagesDice.GetBitmap(y, Yahtzee_ImageArray[r].Picture.Bitmap);
        Yahtzee_DiceArray[r] := y + 1;
        for z := 0 to 4 do
        begin
          Yahtzee_ImageArray[r].Left := 100+random(300);
          Yahtzee_ImageArray[r].Top := 100+random(300);
          if not r = z then
          begin
            while not Yahtzee_isCollision(Yahtzee_ImageArray[r], Yahtzee_ImageArray[z]) do
            begin
              Yahtzee_ImageArray[r].Left := 100+random(300);
              Yahtzee_ImageArray[r].Top := 100+random(300);
            end;
          end;
        end;
      end;
    end;
    Yahtzee_CheckAllScores;
    Rolling := false;
  end;
end;

procedure TfmMain.Timer1Timer(Sender: TObject);
var total: integer;
begin
  Dec(PokerSquares_BonusTime);

  if PokerSquares_BonusTime < 0 then
  begin
    PokerSquares_BonusTime := 0;
    Timer1.Enabled := FALSE;
  end;
  
  lblTime.Caption := IntToStr(PokerSquares_BonusTime);

  AddTotalScores;
end;

procedure TfmMain.Close1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfmMain.SelectGame1Click(Sender: TObject);
begin
  fmGameType.ShowModal;
  NewGame1Click(self);
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  HideEverything;
  //fmGameType.ShowModal;;
  NewGame1Click(self);
end;


procedure TfmMain.Yahtzee_InitLabels;
begin
    lblR1.Visible := TRUE;
    lblR2.Visible := TRUE;
    lblR3.Visible := TRUE;
    lblR4.Visible := TRUE;
    lblR5.Visible := TRUE;
    lblR6.Visible := TRUE;
    lblR1T.Visible := FALSE;
    lblR2T.Visible := FALSE;
    lblR3T.Visible := FALSE;
    lblR4T.Visible := FALSE;
    lblR5T.Visible := FALSE;
    lblR6T.Visible := FALSE;
    lblR1Score.Visible := TRUE;
    lblR2Score.Visible := TRUE;
    lblR3Score.Visible := TRUE;
    lblR4Score.Visible := TRUE;
    lblR5Score.Visible := TRUE;
    lblR6Score.Visible := TRUE;
    lblC1.Visible := TRUE;
    lblC2.Visible := TRUE;
    lblC3.Visible := TRUE;
    lblC4.Visible := TRUE;
    lblC5.Visible := TRUE;
    lblC6.Visible := TRUE;
    lblC7.Visible := TRUE;
    lblC1T.Visible := FALSE;
    lblC2T.Visible := FALSE;
    lblC3T.Visible := FALSE;
    lblC4T.Visible := FALSE;
    lblC5T.Visible := FALSE;
    lblC6T.Visible := FALSE;
    lblC7T.Visible := FALSE;
    lblC1Score.Visible := TRUE;
    lblC2Score.Visible := TRUE;
    lblC3Score.Visible := TRUE;
    lblC4Score.Visible := TRUE;
    lblC5Score.Visible := TRUE;
    lblC6Score.Visible := TRUE;
    lblC7Score.Visible := TRUE;
    lblBonusTime.Visible := TRUE;
    lblTime.Visible := TRUE;
    lblTotal.Visible := TRUE;
    lblTot.Visible := TRUE;
    lblHi.Visible := TRUE;
    lblHiScore.Visible := TRUE;
    lblHiName.Visible := TRUE;

    lblR1.Font.Style := [];
    lblR2.Font.Style := [];
    lblR3.Font.Style := [];
    lblR4.Font.Style := [];
    lblR5.Font.Style := [];
    lblR6.Font.Style := [];
    lblC1.Font.Style := [];
    lblC2.Font.Style := [];
    lblC3.Font.Style := [];
    lblC4.Font.Style := [];
    lblC5.Font.Style := [];
    lblC6.Font.Style := [];
    lblC7.Font.Style := [];
    lblC1T.Font.Style := [];
    lblC2T.Font.Style := [];
    lblC3T.Font.Style := [];
    lblC4T.Font.Style := [];
    lblC5T.Font.Style := [];
    lblC6T.Font.Style := [];
    lblC7T.Font.Style := [];
    lblBonusTime.Font.Style := [];
    lblKeeps.Visible := TRUE;

    lblBonusTime.Caption := 'Chance:';
    lblR1.Caption := 'One''s:';
    lblR2.Caption := 'Two''s:';
    lblR3.Caption := 'Three''s:';
    lblR4.Caption := 'Four''s:';
    lblR5.Caption := 'Five''s:';
    lblR6.Caption := 'Sixes:';
    lblR1T.Caption := '';
    lblR2T.Caption := '';
    lblR3T.Caption := '';
    lblR4T.Caption := '';
    lblR5T.Caption := '';
    lblR6T.Caption := '';
    lblTime.Caption := '0';
    lblR1Score.Caption := '0';
    lblR2Score.Caption := '0';
    lblR3Score.Caption := '0';
    lblR4Score.Caption := '0';
    lblR5Score.Caption := '0';
    lblR6Score.Caption := '0';
    lblC1.Caption := 'Three of a Kind:';
    lblC2.Caption := 'Four of a Kind:';
    lblC3.Caption := 'Full House:';
    lblC4.Caption := 'Small Straight:';
    lblC5.Caption := 'Large Straight:';
    lblC6.Caption := 'Yahtzee:';
    lblC7.Caption := 'Bonus Yahtzee:';
    lblC1T.Caption := '';
    lblC2T.Caption := '';
    lblC3T.Caption := '';
    lblC4T.Caption := '';
    lblC5T.Caption := '';
    lblC6T.Caption := '';
    lblC7T.Caption := '';
    lblC1Score.Caption := '0';
    lblC2Score.Caption := '0';
    lblC3Score.Caption := '0';
    lblC4Score.Caption := '0';
    lblC5Score.Caption := '0';
    lblC6Score.Caption := '0';
    lblC7Score.Caption := '0';

    lblTotal.Caption := 'Your Score:';
    lblTot.Caption := '';
    lblHi.Caption := 'High Score:';
    lblHiScore.Caption := '';
    lblHiName.Caption := '';

    lblBonusTime.Hint := '1';
    lblR1.Hint := '1';
    lblR2.Hint := '1';
    lblR3.Hint := '1';
    lblR4.Hint := '1';
    lblR5.Hint := '1';
    lblR6.Hint := '1';
    lblC1.Hint := '1';
    lblC2.Hint := '1';
    lblC3.Hint := '1';
    lblC4.Hint := '1';
    lblC5.Hint := '1';
    lblC6.Hint := '1';
    lblC7.Hint := '1';

end;

procedure TfmMain.Yahtzee_ResetDice;
var
  i: integer;
begin
  { Enable all dice and checkboxes and set the dice to 1. }
  for i := 0 to 4 do
    begin
      Yahtzee_ImageArray[i].Picture.Assign(nil);
      ImagesDice.GetBitmap(0, Yahtzee_ImageArray[i].Picture.Bitmap);
      Yahtzee_DiceArray[i] := 1;
      Yahtzee_ImageArray[i].Enabled := True;
      Yahtzee_ImageArray[i].Visible := True;
      Yahtzee_CheckBoxArray[i].Enabled := True;
      Yahtzee_CheckBoxArray[i].Checked := False;
    end;

  Yahtzee_RollNumber := 0;
  Yahtzee_Count := 0;
  Yahtzee_OneRoll := 0;
end;

procedure TfmMain.Yahtzee_MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (X >= 0) and (X <= (Sender as TImage).Width) and (Y >= 0) and (Y <= (Sender as TImage).Height) then
  begin
    if not Yahtzee_CheckBoxArray[(Sender as TImage).Tag-1].Checked then
    begin
      (Sender as TImage).Left := Yahtzee_CheckBoxArray[(Sender as TImage).Tag-1].Left;
      (Sender as TImage).Top := 98;
    end
    else
    begin
      (Sender as TImage).Left := 100+Random(100);
      (Sender as TImage).Top := 100+Random(100);
    end;
    Yahtzee_CheckBoxArray[(Sender as TImage).Tag-1].Checked := not(Yahtzee_CheckBoxArray[(Sender as TImage).Tag-1].Checked);
  end;
end;

procedure TfmMain.Yahtzee_CheckAllScores;
var
  i, j, tmp: integer;
  a, b, c, d, e, f: integer;
  bHaveTwo, bHaveThree: boolean;
begin
  { Left column numbers }
  for i := 0 to 5 do
    begin
      { Iterate thru the left column scores and add
        all numbers that match the dice shown. }
      tmp := 0;
      if LabelsArray[i].Hint = '1' then //Only check scores that are enabled
        for j := 0 to 4 do
          begin
            if Yahtzee_DiceArray[j] = (i + 1) then
              tmp := tmp + (i + 1);
            LabelNumsArray[i].Caption := IntToStr(tmp); //Update label with correct score value
          end;
    end;

  { 3 of a Kind }
  { Iterate thru the dice and check if we have at least 3 matching dice }
  if lblC1.Hint = '1' then //if enabled
    for i := 0 to 5 do
      begin
        tmp := 0;

        for j := 0 to 4 do
          if Yahtzee_DiceArray[j] = i + 1 then
            tmp := tmp + 1;

        if tmp >= 3 then
          begin
            { We have at least 3 matching dice, add up all the dice. }
            lblC1Score.Caption := IntToStr(Yahtzee_DiceArray[0] + Yahtzee_DiceArray[1] +
              Yahtzee_DiceArray[2] + Yahtzee_DiceArray[3] + Yahtzee_DiceArray[4]);
            Break;
          end
        else
          lblC1Score.Caption := '0';
      end;

  { 4 of a Kind }
  { Iterate thru the dice and check if we have at least 4 matching dice }
  if lblC2.Hint = '1' then //if enabled
    for i := 0 to 5 do
      begin
        tmp := 0;

        for j := 0 to 4 do
          if Yahtzee_DiceArray[j] = i + 1 then
            tmp := tmp + 1;

        if tmp >= 4 then
          begin
            { We have at least 4 matching dice, add up all the dice. }
            lblC2Score.Caption := IntToStr(Yahtzee_DiceArray[0] + Yahtzee_DiceArray[1] +
              Yahtzee_DiceArray[2] + Yahtzee_DiceArray[3] + Yahtzee_DiceArray[4]);
            Break;
          end
        else
          lblC2Score.Caption := '0';
      end;

  bHaveTwo := False;
  bHaveThree := False;
  { Full House }
  { Iterate thru the dice and see if there are 2 and 3 matching
    dice of different numbers. }
  if lblC3.Hint = '1' then //if enabled
    begin
      for i := 0 to 5 do
        begin
          tmp := 0;

          for j := 0 to 4 do
            if Yahtzee_DiceArray[j] = i + 1 then
              tmp := tmp + 1;

          if tmp = 2 then
            bHaveTwo := True;

          if tmp = 3 then
            bHaveThree := True;
        end;

      if bHaveTwo and bHaveThree then
        lblC3Score.Caption := '25'
      else
        lblC3Score.Caption := '0';
    end;

  { Small Straight }
  if lblC4.Hint = '1' then //if enabled
    begin
      a := 9; b := 9; c := 9; d := 9; e := 9; f := 9;
      lblC4Score.Caption := '0';

      { Iterate thru the dice and see if we have a small straight
        (1234, 2345, or 3456) }
      for i := 0 to 4 do
        begin
          if Yahtzee_DiceArray[i] = 1 then a := 0;
          if Yahtzee_DiceArray[i] = 2 then b := 1;
          if Yahtzee_DiceArray[i] = 3 then c := 2;
          if Yahtzee_DiceArray[i] = 4 then d := 3;
          if Yahtzee_DiceArray[i] = 5 then e := 4;
          if Yahtzee_DiceArray[i] = 6 then f := 5;
        end;

      if ((a = 0) and (b = 1) and (c = 2) and (d = 3)) or
         ((b = 1) and (c = 2) and (d = 3) and (e = 4)) or
         ((c = 2) and (d = 3) and (e = 4) and (f = 5)) then
        lblC4Score.Caption := '30';
    end;

  { Large Straight }
  if lblC5.Hint = '1' then //if enabled
    begin
      { Just set the Large Straight score to 40 and check to see if
        any 2 dice are the same or contains a 1 and 6.  If so, then
        set the score to 0. }
      lblC5Score.Caption := '40';
      for i := 0 to 4 do
        if lblC5Score.Caption <> '0' then
          for j := 0 to 4 do
            if i <> j then
              if (Yahtzee_DiceArray[i] = Yahtzee_DiceArray[j]) or
                 ((Yahtzee_DiceArray[i] = 1) and (Yahtzee_DiceArray[j] = 6)) then
                begin
                  lblC5Score.Caption := '0';
                  Break;
                end;
    end;

  { Yahtzee }
  { Check to see if all dice are the same number }
  if lblC6.Hint = '1' then //if enabled
    if Yahtzee_IsYahtzee then
      begin
        inc(Yahtzee_Count); //for statistics

        { Check for a One Roll Yahtzee for statistical purposes
          (a Yahtzee with all checkboxes enabled) }
        if not(Yahtzee_CheckBoxArray[0].Checked) and not(Yahtzee_CheckBoxArray[1].Checked) and
           not(Yahtzee_CheckBoxArray[2].Checked) and not(Yahtzee_CheckBoxArray[3].Checked) and
           not(Yahtzee_CheckBoxArray[4].Checked) then
           inc(Yahtzee_OneRoll);


        lblC6Score.Caption := '50';
      end
    else
      lblC6Score.Caption := '0';

  { Chance }
  { Just add up all the dice }
  if lblBonusTime.Hint = '1' then //if enabled
    lblTime.Caption := IntToStr(Yahtzee_DiceArray[0] + Yahtzee_DiceArray[1] + Yahtzee_DiceArray[2] +
      Yahtzee_DiceArray[3] + Yahtzee_DiceArray[4]);

  { Bonus Yahtzee }
  if lblC7.Hint = '1' then //if Bonus Yahtzee is enabled,
                                               //then that means a Yahtzee was
                                               //rolled before and the Yahtzee
                                               //score was already selected
    { Check to see if all dice are the same number }
    if Yahtzee_IsYahtzee then
      begin
        inc(Yahtzee_Count);
        { Check for a One Roll Yahtzee for statistical purposes
          (a Yahtzee with all checkboxes enabled) }
        if not(Yahtzee_CheckBoxArray[0].Checked) and not(Yahtzee_CheckBoxArray[1].Checked) and
           not(Yahtzee_CheckBoxArray[2].Checked) and not(Yahtzee_CheckBoxArray[3].Checked) and
           not(Yahtzee_CheckBoxArray[4].Checked) then
           inc(Yahtzee_OneRoll);

        { Left column numbers }
        { Just put in the total possible score for each number }
        for i := 0 to 5 do
          if LabelsArray[i].Hint = '1' then //if enabled
            LabelNumsArray[i].Caption := IntToStr((i + 1) * 5);

        { 3 of a Kind }
        { Add up all the dice }
        if lblC1.Hint = '1' then //if enabled
          lblC1.Caption := IntToStr(Yahtzee_DiceArray[0] * 5);

        { 4 of a Kind }
        { Add up all the dice }
        if lblC2.Hint = '1' then //if enabled
          lblC2.Caption := IntToStr(Yahtzee_DiceArray[0] * 5);

        { Full House }
        if lblC3.Hint = '1' then //if enabled
          lblC3.Caption := '25';

        { Small Straight }
        if lblC4.Hint = '1' then //if enabled
          lblC4.Caption := '30';

        { Large Straight }
        if lblC5.Hint = '1' then //if enabled
          lblC5.Caption := '40';

        { If we already got a Yahtzee and it was selected before,
          add another 100 points to the score. }
        if (lblC6.Hint = '0') and (lblC6Score.Caption = '50') and
          not(Yahtzee_AddedBonus) then
          begin
            if lblC6.Hint = '0' then
              if lblC6Score.Caption = '0' then
                lblC6Score.Caption := '100'
              else
                lblC6Score.Caption :=
                  IntToStr(StrToInt(lblC6Score.Caption) + 100);
            Yahtzee_AddedBonus := True;
          end;
      end;

      { If user rolled again after getting a Bonus Yahtzee (why?),
        then subtract 100 from the score.}
      if not (Yahtzee_IsYahtzee) and Yahtzee_AddedBonus and (Yahtzee_RollNumber in [2, 3]) then
        begin
          lblC7.Caption :=
            IntToStr(StrToInt(lblC7Score.Caption) - 100);
          Yahtzee_AddedBonus := False;
        end;
end;

function TfmMain.Yahtzee_IsYahtzee: boolean;
begin
  { Check to see if all dice are the same number }
  Result := (Yahtzee_DiceArray[0] = Yahtzee_DiceArray[1]) and (Yahtzee_DiceArray[0] = Yahtzee_DiceArray[2]) and
            (Yahtzee_DiceArray[0] = Yahtzee_DiceArray[3]) and (Yahtzee_DiceArray[0] = Yahtzee_DiceArray[4]);
end;

procedure TfmMain.Yahtzee_lblClick(Sender: TObject);
var
  iTag: integer;
  bEnabled: boolean;
begin
  if (GameType = GAMETYPE_YAHTZEE) and not Rolling then
  begin

    if Yahtzee_RollNumber = 0 then Exit;
    { The label tags store the index number of the label arrays. }
    { Remember that we initialized the arrays to the onscreen controls }
    { in FormCreate(). }
    iTag := (Sender as TLabel).Tag;

    { Check to see if the label is selectable.  We don't want to use the
      enabled property of the labels because it just looks ugly onscreen. }

    bEnabled := LabelsArray[iTag-1].Hint = '1';
  
    if bEnabled then
      begin
        { Store undo values to be used in the Undo menu option }
        //UndoIndex := iTag - 1;
        //UndoRollNumber := FRollNumber;
       // UndoLeftTotal := FLeftTotal;
       // UndoRightTotal := FRightTotal;
       // UndoBonus := FBonus;
       // UndoBonusYahtzee := StrToInt(LabelBonusYahtzeeValue.Caption);
       // MenuUndoLast.Enabled := True;

        { "Disable" the selected labels }
        LabelsArray[iTag-1].Hint := '0';
        LabelsArray[iTag-1].Font.Style := [fsStrikeOut];
        LabelsArray[iTag-1].Font.Color := clGray;

        LabelNumsArray[iTag-1].Font.Color := clGray;

        Yahtzee_CheckBoxArray[0].Checked := FALSE;
        Yahtzee_CheckBoxArray[1].Checked := FALSE;
        Yahtzee_CheckBoxArray[2].Checked := FALSE;
        Yahtzee_CheckBoxArray[3].Checked := FALSE;
        Yahtzee_CheckBoxArray[4].Checked := FALSE;

        { If user opted to place a 0 in Yahtzee, disable the labels. }
      if (LabelsArray[iTag-1] = lblC6) and
           (lblC6Score.Caption = '0') then
          begin
            lblC7.Hint := '0';
            lblC7.Font.Style := [fsStrikeOut];
            lblC7.Font.Color := clGray;
          end;
  
        { Reset roll # and progress bar }
        ProgressBar1.Position := ProgressBar1.Position + 1;
      Yahtzee_RollNumber := 0;
      AddTotalScores;
      //lblRoll.Caption := '0';
        { If selected category was the last one, then end the game. }
        if ProgressBar1.Position = 13 then
        begin
          Timer1.Enabled := FALSE;
          PlaySound(SOUND_WIN);
          GameInProgress := FALSE;
          ShowMessage('GAME_OVER');
          ProcessHighScore;
        end;
    end;
  end;
end;



procedure TfmMain.Pyramid_Create;
var i: integer;
    card: integer;

begin
  PlaceHolder[1].Left := 8;
  PlaceHolder[1].Top := 448;
  PlaceHolder[1].OnClick := Pyramid_DealCard;
  PlaceHolder[1].Visible := TRUE;

  PokerSquares_CardsPlaced := 97;

  for i := 1 to 52 do
  begin
    CardDeck[i].OnClick := Pyramid_CardClick;
    CardDeck[i].Hint := inttostr(i);
  end;

  for i := 1 to 31 do
    Pyramid_DeltCards[i] := -1;

  Pyramid_DeltCount := 0;

  Pyramid[1].Y := 336;
  Pyramid[2].Y := 336;
  Pyramid[3].Y := 336;
  Pyramid[4].Y := 336;
  Pyramid[5].Y := 336;
  Pyramid[6].Y := 336;
  Pyramid[1].X := 8;
  Pyramid[2].X := 96;
  Pyramid[3].X := 184;
  Pyramid[4].X := 272;
  Pyramid[5].X := 360;
  Pyramid[6].X := 448;
  Pyramid[7].Y := 272;

  Pyramid[8].Y := 272;
  Pyramid[9].Y := 272;
  Pyramid[10].Y := 272;
  Pyramid[11].Y := 272;
  Pyramid[7].X :=   56;
  Pyramid[8].X :=   144;
  Pyramid[9].X :=   232;
  Pyramid[10].X :=  320;
  Pyramid[11].X :=  408;

  Pyramid[12].Y := 208;
  Pyramid[13].Y := 208;
  Pyramid[14].Y := 208;
  Pyramid[15].Y := 208;
  Pyramid[12].X :=  96;
  Pyramid[13].X :=  184;
  Pyramid[14].X :=  272;
  Pyramid[15].X :=  360;

  Pyramid[16].Y := 144;
  Pyramid[17].Y := 144;
  Pyramid[18].Y := 144;
  Pyramid[16].X :=  144;
  Pyramid[17].X :=  232;
  Pyramid[18].X :=  320;

  Pyramid[19].Y := 80;
  Pyramid[20].Y := 80;
  Pyramid[19].X :=  184;
  Pyramid[20].X :=  272;

  Pyramid[21].Y := 16;
  Pyramid[21].X :=  232;

  for i := 21 downto 1 do
  begin
    card := DealACard;
    Pyramid_Index[i] := card;
    CardDeck[card].Visible := TRUE;
    CardDeck[card].Left := Pyramid[i].x;
    CardDeck[card].Top := Pyramid[i].y;
    CardDeck[card].BringToFront;
    CardDeck[card].Tag := 1;

    if i > 6 then CardDeck[card].State := ctBack else CardDeck[card].State := ctFront;
  end;
end;



procedure TfmMain.Pyramid_CardClick(Sender: TObject); var x,y: integer;
var total: integer;
var i: integer;
begin
  if (GameType = GAMETYPE_PYRAMID) and ((sender as tcards).state = ctFront) then
  begin

    if StrToInt((sender as timage).hint) = Pyramid_CardClicked then
    begin
      (sender as timage).Transparent := false;
      Pyramid_CardClicked := -1;
    end
    else
    begin
      if Pyramid_CardClicked = -1 then
      begin
        Pyramid_CardClicked := StrToInt((sender as tcards).Hint);
        (sender as tcards).Transparent := true;
      end
      else
      begin
        total := CardDeck[Pyramid_CardClicked].Value+(sender as tcards).value;
        //ShowMessage( IntToStr(CardDeck[Pyramid_CardClicked].Value) + ' + ' + IntToStr((sender as tcards).value) + ' = ' + IntToStr(total));

        if total = 13 then
        begin
          if (CardDeck[Pyramid_CardClicked].Top = 448) then
          begin
            Dec(Pyramid_DeltCount);
            CardDeck[Pyramid_DeltCards[Pyramid_DeltCount]].state := ctFront;
          end
          else
            if ((sender as tcards).Top = 448) then
            begin
              Dec(Pyramid_DeltCount);
              CardDeck[Pyramid_DeltCards[Pyramid_DeltCount]].state := ctFront;
            end;

          //CardDeck[Pyramid_DeltCount].state := ctFront;
          
          CardDeck[Pyramid_CardClicked].Left := 540 + random(150);
          CardDeck[Pyramid_CardClicked].Top := 20 + random(400);
          CardDeck[Pyramid_CardClicked].State := ctBack;
          CardDeck[Pyramid_CardClicked].Tag := 0;
          CardDeck[Pyramid_CardClicked].Hint := '0';

          (sender as tcards).Left := 540 + random(150);
          (sender as tcards).Top := 20 + random(350);
          (sender as tcards).State := ctBack;
        end;

        CardDeck[Pyramid_CardClicked].Transparent := false;
        Pyramid_CardClicked := -1;
        Pyramid_CheckVisibility;
        if not Pyramid_AnyCardsLeft then
        begin
          Timer1.Enabled := FALSE;
          PlaySound(SOUND_WIN);
          GameInProgress := FALSE;
          ShowMessage('GAME_OVER');
          ProcessHighScore;
        end;
      end;
    end;
  end;
end;

function TfmMain.Pyramid_AnyCardsLeft: boolean;
var res: boolean;
    i: integer;
begin
  res := false;
  for i := 1 to 52 do
  begin
    if Pyramid_IsCardAt(Pyramid[i].x,Pyramid[i].y) then
      res := true;
  end;
  result := res;
end;

function TfmMain.Pyramid_IsCardAt(x,y: integer): boolean;
var i: integer;
    found: boolean;
begin
  found := false;
  for i := 1 to 52 do
  begin
    if (x = CardDeck[i].left) and (y = CardDeck[i].top) then
      found := true;
  end;
  result := found;
end;


procedure TfmMain.Pyramid_CheckVisibility;
var i: integer;
begin
  if not Pyramid_IsCardAt(Pyramid[1].x,Pyramid[1].y) and not Pyramid_IsCardAt(Pyramid[2].x,Pyramid[2].y) then
  begin
    CardDeck[Pyramid_Index[7]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;
  if not Pyramid_IsCardAt(Pyramid[2].x,Pyramid[2].y) and not Pyramid_IsCardAt(Pyramid[3].x,Pyramid[3].y) then
  begin
    CardDeck[Pyramid_Index[8]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;
  if not Pyramid_IsCardAt(Pyramid[3].x,Pyramid[3].y) and not Pyramid_IsCardAt(Pyramid[4].x,Pyramid[4].y) then
  begin
    CardDeck[Pyramid_Index[9]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;
  if not Pyramid_IsCardAt(Pyramid[4].x,Pyramid[4].y) and not Pyramid_IsCardAt(Pyramid[5].x,Pyramid[5].y) then
  begin
    CardDeck[Pyramid_Index[10]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;
  if not Pyramid_IsCardAt(Pyramid[5].x,Pyramid[5].y) and not Pyramid_IsCardAt(Pyramid[6].x,Pyramid[6].y) then
  begin
    CardDeck[Pyramid_Index[11]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;

  if not Pyramid_IsCardAt(Pyramid[7].x,Pyramid[7].y) and not Pyramid_IsCardAt(Pyramid[8].x,Pyramid[8].y) then
  begin
    CardDeck[Pyramid_Index[12]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;
  if not Pyramid_IsCardAt(Pyramid[8].x,Pyramid[8].y) and not Pyramid_IsCardAt(Pyramid[9].x,Pyramid[9].y) then
  begin
    CardDeck[Pyramid_Index[13]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;
  if not Pyramid_IsCardAt(Pyramid[9].x,Pyramid[9].y) and not Pyramid_IsCardAt(Pyramid[10].x,Pyramid[10].y) then
  begin
    CardDeck[Pyramid_Index[14]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;
  if not Pyramid_IsCardAt(Pyramid[10].x,Pyramid[10].y) and not Pyramid_IsCardAt(Pyramid[11].x,Pyramid[11].y) then
  begin
    CardDeck[Pyramid_Index[15]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;

  if not Pyramid_IsCardAt(Pyramid[12].x,Pyramid[12].y) and not Pyramid_IsCardAt(Pyramid[13].x,Pyramid[13].y) then
  begin
    CardDeck[Pyramid_Index[16]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;
  if not Pyramid_IsCardAt(Pyramid[13].x,Pyramid[13].y) and not Pyramid_IsCardAt(Pyramid[14].x,Pyramid[14].y) then
  begin
    CardDeck[Pyramid_Index[17]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;
  if not Pyramid_IsCardAt(Pyramid[14].x,Pyramid[14].y) and not Pyramid_IsCardAt(Pyramid[15].x,Pyramid[15].y) then
  begin
    CardDeck[Pyramid_Index[18]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;

  if not Pyramid_IsCardAt(Pyramid[16].x,Pyramid[16].y) and not Pyramid_IsCardAt(Pyramid[17].x,Pyramid[17].y) then
  begin
    CardDeck[Pyramid_Index[19]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;
  if not Pyramid_IsCardAt(Pyramid[17].x,Pyramid[17].y) and not Pyramid_IsCardAt(Pyramid[18].x,Pyramid[18].y) then
  begin
    CardDeck[Pyramid_Index[20]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;

  if not Pyramid_IsCardAt(Pyramid[19].x,Pyramid[19].y) and not Pyramid_IsCardAt(Pyramid[20].x,Pyramid[20].y) then
  begin
    CardDeck[Pyramid_Index[21]].state := ctFront;
    dec(PokerSquares_CardsPlaced)
  end;

  for i := 1 to 52 do
  begin
    if (CardDeck[i].left>530) then
      CardDeck[i].state := ctBack;
  end;
end;

procedure TfmMain.Pyramid_DealCard(Sender: TObject);
var card: integer;
    i: integer;
begin
  if ShuffledDeck.Items.Count > 0 then
  begin
    inc(Pyramid_DeltCount);

    card := DealACard;

    CardDeck[card].Left := 96 + (10*Pyramid_DeltCount);
    CardDeck[card].Top := 448;
    CardDeck[card].Visible := TRUE;
    CardDeck[card].BringToFront;
    //CardDeck[card].Tag := 5;
    for i := 1 to 31 do
    begin
      if Pyramid_DeltCards[i] > -1 then
        CardDeck[Pyramid_DeltCards[i]].state := ctBack;
    end;
    CardDeck[card].state := ctFront;
    Pyramid_DeltCards[Pyramid_DeltCount] := card;

    if ShuffledDeck.Items.Count = 0 then PlaceHolder[1].Visible := false;
  end;
end;

procedure TfmMain.HiScores1Click(Sender: TObject);
begin
  fmHiScore.ShowModal;
end;


procedure TfmMain.ProcessHighScore;
var Score: integer;
    hspos,i: integer;
    name,quote: string;

begin
  Score := StrToInt(lblTot.Caption);
  hspos := topgetpos(score);

  if hspos < 10 then
    for i := 9 downto hspos-1 do
    begin
      HighScores[GameType][i+1].score := HighScores[GameType][i].score;
      HighScores[GameType][i+1].name := HighScores[GameType][i].name;
      HighScores[GameType][i+1].quote := HighScores[GameType][i].quote;
    end;

  fmTop10.edtName.Text := '';
  fmTop10.edtQuote.Text := '';
  fmTop10.lblScore.Caption := inttostr(score);
  fmTop10.lblRank.Caption := inttostr(hspos);

  fmTop10.ShowModal;

  name := fmTop10.edtName.Text;
  quote := fmTop10.edtQuote.Text;

  if hspos = 1 then
  begin
    HighScores[GameType][hspos].score := score;
    HighScores[GameType][hspos].name := name;
    HighScores[GameType][hspos].quote := quote;
  end
  else
  begin
    HighScores[GameType][hspos-1].score := score;
    HighScores[GameType][hspos-1].name := name;
    HighScores[GameType][hspos-1].quote := quote;
  end;
  fmHiScore.ShowModal;

end;

function TfmMain.topGetPos(Score: integer): integer;
var i: integer;
    sc: integer;
begin
  for i := 10 downto 1 do
  begin
    if HighScores[GameType][i].score < score then
    begin
      sc := i;
    end;
  end;
  result := sc;
end;

procedure TfmMain.Button1Click(Sender: TObject);
var Score: integer;
    hspos,i: integer;
begin
  Score := 5;
  hspos := topgetpos(score);

end;

procedure TfmMain.PokerSquares1Click(Sender: TObject);
begin
  if (sender as tmenuitem).Hint = '0' then fmHow2.PageControl1.ActivePage := fmHow2.TabSheet1;
  if (sender as tmenuitem).Hint = '1' then fmHow2.PageControl1.ActivePage := fmHow2.TabSheet2;
  if (sender as tmenuitem).Hint = '2' then fmHow2.PageControl1.ActivePage := fmHow2.TabSheet3;

  fmHow2.ShowModal;
end;

procedure TfmMain.About1Click(Sender: TObject);
begin
fmAbout.ShowModal;
end;

(*
procedure TfmMain.DrawCustomCursor( MyCard: TCards );
// instead of keeping a cursor for every card in the deck, we'll create on-the-fly cursors
// by combining sections of the 3 image components.  Delphi destroys the old cursor each time
// a new one is created
var MyCursor: TIconInfo;
begin
  // prepare custom cursor bitmap
  // copyrect( dest rect, source canvas, source rect )...rect( left, top, right, bottom )
  // numbers are arranged in 11 wide x 14 high grid
  // suits are arranged in 15 wide x 15 high grid

  {$IFDEF VER100}
	form1.cursorcard.Picture.bitmap.PixelFormat := pf8bit;  // needed for D3
  {$ENDIF}

  fmMain.Cursorcard.canvas.copyrect( Rect( 6, 2, 17, 16 ), fmMain.numbers.canvas, Rect( ( MyCard.value - 1 ) * 11,
      ord( MyCard.suitcolor ) * 14, ( MyCard.value - 1 ) * 11 + 11, ord( MyCard.suitcolor) * 14 + 14 ) );
  fmMain.Cursorcard.canvas.copyrect( Rect( 11, 15, 26, 30 ), fmMain.suits.canvas, Rect( ord( MyCard.suit ) * 15,
      0, ord( MyCard.suit ) * 15 + 15, 15 ) );

  // fill in an ICONINFO structure
  MyCursor.fIcon := false;      {true=icon, false=cursor}
  MyCursor.xHotspot := 15;
  MyCursor.yHotspot := 0;
  MyCursor.hbmMask := BitMasque.handle;    {transparency mask}
  MyCursor.hbmColor := fmMain.Cursorcard.Picture.bitmap.handle;    {image bitmap}

  // call API function to create cursor, add it to Delphi-maintained custom cursors
  Screen.Cursors[ 1 ] := CreateIconIndirect( MyCursor );

  // turn it on
  Screen.Cursor := 1;
end; *)
end.
