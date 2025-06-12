unit How2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, StdCtrls, MidnightUnit, Tomcard2, TransCanvas,
  TransShape;

type
  TfmHow2 = class(TForm)
    imgTemp: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    imgTile: TImage;
    Cards1: TCards;
    Cards2: TCards;
    Cards3: TCards;
    Cards4: TCards;
    Cards5: TCards;
    TransShape1: TTransShape;
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
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Button1: TButton;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    imgTile2: TImage;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Cards6: TCards;
    Cards7: TCards;
    Cards8: TCards;
    Cards9: TCards;
    Cards10: TCards;
    TransShape2: TTransShape;
    Timer1: TTimer;
    TabSheet3: TTabSheet;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    TransShape3: TTransShape;
    Die1: TImage;
    Die2: TImage;
    Die3: TImage;
    Die4: TImage;
    Die5: TImage;
    Die6: TImage;
    Die7: TImage;
    Die8: TImage;
    Die9: TImage;
    Die10: TImage;
    Die11: TImage;
    Die12: TImage;
    Die13: TImage;
    Die14: TImage;
    Die15: TImage;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    imgTile3: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label15MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label16MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label17MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label18MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label19MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label20MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label21MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label22MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label23MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmHow2: TfmHow2;
  sticks: integer;

implementation

uses main;

{$R *.DFM}

procedure TfmHow2.FormActivate(Sender: TObject);
begin
  fmHow2.Caption := 'How to play ' + fmMain.GameTitleArray[fmMain.GameType];
  //PageControl1.PageIndex:=  fmMain.GameType;
  Label24.Caption := 'Royal Flush - Ace, king, queen, jack, ten, all in the same suit';
  Cards1.DeckValue := 10;
  Cards2.DeckValue := 11;
  Cards3.DeckValue := 12;
  Cards4.DeckValue := 13;
  Cards5.DeckValue := 1;
  sticks := 0;
  Timer1.Enabled := true;
end;

procedure TfmHow2.FormCreate(Sender: TObject);
begin
  imgTile.Align := alClient;
  imgTemp.Picture.LoadFromFile(fmMain.BaseDir + 'media\background\stucco.jpg');
  TileImage(imgTemp, imgTile);
  TileImage(imgTemp, imgTile2);
  TileImage(imgTemp, imgTile3);
  Timer1.Enabled := true;

  fmMain.ImagesDice.GetBitmap(5, Die1.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(5, Die2.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(5, Die3.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(5, Die4.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(5, Die5.Picture.Bitmap);

  fmMain.ImagesDice.GetBitmap(4, Die6.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(4, Die7.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(2, Die8.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(2, Die9.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(2, Die10.Picture.Bitmap);

  fmMain.ImagesDice.GetBitmap(1, Die11.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(2, Die12.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(3, Die13.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(4, Die14.Picture.Bitmap);
  fmMain.ImagesDice.GetBitmap(3, Die15.Picture.Bitmap);

end;

procedure TfmHow2.Button1Click(Sender: TObject);
begin
  fmHow2.Close;
end;

procedure TfmHow2.Label15MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Cards1.DeckValue := 10;
  Cards2.DeckValue := 11;
  Cards3.DeckValue := 12;
  Cards4.DeckValue := 13;
  Cards5.DeckValue := 1;
  Label24.Caption := 'Royal Flush - Ace, king, queen, jack, ten, all in the same suit';
end;

procedure TfmHow2.Label16MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Cards1.DeckValue := 3;
  Cards2.DeckValue := 4;
  Cards3.DeckValue := 5;
  Cards4.DeckValue := 6;
  Cards5.DeckValue := 7;
  Label24.Caption := 'Straight Flush - Five cards of the same suit in sequence';
end;

procedure TfmHow2.Label17MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Cards1.DeckValue := 6;
  Cards2.DeckValue := 19;
  Cards3.DeckValue := 32;
  Cards4.DeckValue := 45;
  Cards5.DeckValue := 37;
  Label24.Caption := 'Four Kind - Four cards of the same rank';
end;

procedure TfmHow2.Label18MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Cards1.DeckValue := 8;
  Cards2.DeckValue := 21;
  Cards3.DeckValue := 4;
  Cards4.DeckValue := 17;
  Cards5.DeckValue := 30;
  Label24.Caption := 'Full House - Three cards of one rank and two cards of another';
end;

procedure TfmHow2.Label19MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Cards1.DeckValue := 2;
  Cards2.DeckValue := 4;
  Cards3.DeckValue := 8;
  Cards4.DeckValue := 10;
  Cards5.DeckValue := 12;
  Label24.Caption := 'Flush - Five cards of the same suit, any value';
end;

procedure TfmHow2.Label20MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Cards1.DeckValue := 2;
  Cards2.DeckValue := 16;
  Cards3.DeckValue := 30;
  Cards4.DeckValue := 44;
  Cards5.DeckValue := 6;
  Label24.Caption := 'Straight - Five cards of mixed suits in sequence';
end;

procedure TfmHow2.Label21MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Cards1.DeckValue := 12;
  Cards2.DeckValue := 25;
  Cards3.DeckValue := 38;
  Cards4.DeckValue := 48;
  Cards5.DeckValue := 27;
  Label24.Caption := 'Three Kind - Three cards of the same rank plus two other';
end;

procedure TfmHow2.Label22MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Cards1.DeckValue := 10;
  Cards2.DeckValue := 23;
  Cards3.DeckValue := 11;
  Cards4.DeckValue := 24;
  Cards5.DeckValue := 48;
  Label24.Caption := 'Two Pair - A hand with two pairs, each different ranks';
end;

procedure TfmHow2.Label23MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Cards1.DeckValue := 13;
  Cards2.DeckValue := 26;
  Cards3.DeckValue := 41;
  Cards4.DeckValue := 20;
  Cards5.DeckValue := 35;
  Label24.Caption := 'One Pair - A pair is two cards of equal rank';
end;

procedure TfmHow2.Timer1Timer(Sender: TObject);
begin
  if sticks = 0 then
  begin
    Cards6.Visible := TRUE;
    Cards7.Visible := TRUE;
    Cards8.Visible := TRUE;
    Cards9.Visible := TRUE;
    Cards10.Visible := TRUE;
    Cards6.State := ctFront;
    Cards7.State := ctFront;
    Cards8.State := ctFront;
    Cards9.State := ctBack;
    Cards10.State := ctBack;
    Cards6.Transparent := FALSE;
    Cards7.Transparent := FALSE;
    Cards8.Transparent := FALSE;
    Cards9.Transparent := FALSE;
    Cards10.Transparent := FALSE;
  end;
  if sticks = 1 then
  begin
    cards6.Transparent := true;
  end;
  if sticks = 2 then
  begin
    cards7.Transparent := true;
  end;
  if sticks = 3 then
  begin
    cards6.Visible := false;
    cards7.Visible := false;
    Cards9.State := ctfront;
  end;
  if sticks = 5 then
  begin
    cards8.Transparent := true;
  end;
  if sticks = 6 then
  begin
    cards9.Transparent := true;
  end;
  if sticks = 7 then
  begin
    cards8.Visible := false;
    cards9.Visible := false;
    Cards10.State := ctfront;
  end;
  if sticks >= 10 then
  begin
    sticks := -1;
  end;

  inc(sticks);
end;

procedure TfmHow2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := false;
end;

end.
