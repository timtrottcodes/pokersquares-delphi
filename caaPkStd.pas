unit caaPkStd;

interface

uses Classes;

{ for 32 bit only - store enumerated types as 32 bit items - improves speed }
{$MinEnumSize 4} { change to MinEnumSize 2 in 16 bit systems }

const
  caaCardStringLength = 64;

type
{ [ TcaaPokerCard and Supporting types ] ************************************* }

  { TcaaCardString }
  TcaaCardString = string[caaCardStringLength];
  // TcaaCardString = string;
  
  { TcaaSuit
    Keeps track of card suit.
  }
  TcaaSuit = ( caaClubs, caaDiamonds, caaHearts, caaSpades );

  { TcaaRank
    Keeps track of the card rank.
    There are thirteen different cards (ranks) in each suit.
    The ace may be counted as the highest or the lowest card depending on the
      type of hand and the rules of the game.
  }
  TcaaRank = ( caaAceLow, caaTwo, caaThree, caaFour, caaFive,
               caaSix, caaSeven, caaEight, caaNine, caaTen,
               caaJack, caaQueen, caaKing, caaAceHigh );

  { TcaaPokerCard
    A poker card has the following attributes:
    Name:
      ie. King of Diamonds, Ten of Spades
      Primarily useful for testing the validity of the library.
      Possibly useful for console games.
    Suit:
      A card may be of one of four suits - Hearts, Diamonds Clubs or Spades.
      Used in Poker to determine if a hand is a Flush.
    Rank:
      A card may have one of several ranks, normally from Deuce to Ace
      In certain poker games, the Ace may be valued low or high, making it a
        special case - a card with two different potential ranks.
      Used to determine types of hands (Full House, Straight etc.) in Poker.
    IsDown:
      Used to determine if card should be displayed face up or face down.
      If true, card is displayed face down (card back is displayed.
    IsHeld:
      Used in draw poker to decide if card will be replaced on the draw.
      If true, card is to be held.
  }

  TcaaPokerCard = class(TObject)
    private
      FName : TcaaCardString;
      FSuit : TcaaSuit;
      FRank : TcaaRank;
      FIsDown : boolean;
      FIsHeld : boolean;
    public
      constructor Create;
      property Name : TcaaCardString read FName write FName;
      property Suit : TcaaSuit read FSuit write FSuit;
      property Rank : TcaaRank read FRank write FRank;
      property IsDown : boolean read FIsDown write FIsDown;
      property IsHeld : boolean read FIsHeld write FIsHeld;
  end; { TcaaPokerCard }

{ [ TcaaPCardList - Base Type for caaPokerHand and caaPokerDeck ] ************ }
  { TcaaPCardList
     Defines a list of poker playing cards. Used to define hands and decks of
       cards. }
  TcaaPCardList = class(TObject)
  private
    FCards: TList;
    function GetCard(Index: Integer): TcaaPokerCard;
    { procedure PutCard(Index: Integer; PCard: TcaaPokerCard); }
    function GetCount: Integer;
  public
    constructor Create;
    destructor Destroy; override;
    function AddCard(PCard: TcaaPokerCard): Integer;
    function Equals(CardList: TcaaPCardList): boolean;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: TcaaPokerCard read GetCard; default;
  end;


{ [ TcaaPokerDeck and Supporting Items ] ************************************* }
const
  caaStdDeckSize = 52;

  { positions for cards in an standard ordered deck }
  caaClubAce   = 0;
  caaClubTwo   = 1;
  caaClubThree = 2;
  caaClubFour  = 3;
  caaClubFive  = 4;
  caaClubSix   = 5;
  caaClubSeven = 6;
  caaClubEight = 7;
  caaClubNine  = 8;
  caaClubTen   = 9;
  caaClubJack  = 10;
  caaClubQueen = 11;
  caaClubKing  = 12;

  caaDiamondAce   = 13;
  caaDiamondTwo   = 14;
  caaDiamondThree = 15;
  caaDiamondFour  = 16;
  caaDiamondFive  = 17;
  caaDiamondSix   = 18;
  caaDiamondSeven = 19;
  caaDiamondEight = 20;
  caaDiamondNine  = 21;
  caaDiamondTen   = 22;
  caaDiamondJack  = 23;
  caaDiamondQueen = 24;
  caaDiamondKing  = 25;

  caaHeartAce   = 26;
  caaHeartTwo   = 27;
  caaHeartThree = 28;
  caaHeartFour  = 29;
  caaHeartFive  = 30;
  caaHeartSix   = 31;
  caaHeartSeven = 32;
  caaHeartEight = 33;
  caaHeartNine  = 34;
  caaHeartTen   = 35;
  caaHeartJack  = 36;
  caaHeartQueen = 37;
  caaHeartKing  = 38;

  caaSpadeAce   = 39;
  caaSpadeTwo   = 40;
  caaSpadeThree = 41;
  caaSpadeFour  = 42;
  caaSpadeFive  = 43;
  caaSpadeSix   = 44;
  caaSpadeSeven = 45;
  caaSpadeEight = 46;
  caaSpadeNine  = 47;
  caaSpadeTen   = 48;
  caaSpadeJack  = 49;
  caaSpadeQueen = 50;
  caaSpadeKing  = 51;

type
  { TcaaPokerDeck
    Defines a poker deck. Allows creation of standard 52 card deck or deck with
      one or more jokers.
    A deck of cards is a list of cards with the following abilities:
    Shuffle:
      Randomly reorders the list of cards.
       }
  TcaaPokerDeck = class(TcaaPCardList)
  protected
    procedure BuildDeck;
  public
    constructor Create;
    procedure Shuffle;
  end;

{ [ TcaaPokerHand and Supporting Items ] ************************************* }
  { TcaaHandRating - this type is the core type of the rating system. It is
    implemented as a 32 bit Integer. Information about the hand is mapped as
    described below:

      |-------------------bits-------------------------|
       rank           card5  card4  card3  card2  card1
       332222222222   1111   1111   1100   0000   0000
       109876543210   9876   5432   1098   7654   3210

    The most significant 12 bits (20..31) the contain hand rank.

    The lowest 20 bits (0..19) are divided into five nibbles which contain
    the ordinal values of the cards. The order the cards are in are based on
    the rules for evaluating the hands of poker and are described below:

      1) Low Hand Evaluations:
         The cards will be sorted with the highest card in position card5
           (bits 16..19) and the lowest in position card1 (bits 00..03).
         When building a low rating the ace is treated as aceLow and the rank
           bits will be will not be set for noPairs, straights, flushes and
           straight flushes - they will be considered based only on the cards.
           This is in compliance with normal Las Vegas casino poker rules.

      2) High Hand Evaluations:
         For all straights, flushes and no pair hands, the cards will be sorted
           with the highest card in position card5 (bits 16..19) and the lowest
           in position card1 (bits 00...03).
         For one pair, the pair will occupy card5 (16..19) and card4 (12..15)
           with the rest of the cards following in high to low order.
         For two pair hands, the higher pair will be in card5 and card4, the
           other pair in card3 and card2 and the last card in card1.
         Three of a kind will have the trips in card5, card4 and card3 (08..19),
           the higher remaining other card in card2 (04..07) and the lower in
           card1 (00..03).
         A full house will have the trips in card 5, card4 and card3 (08..19)
           with the pair in card2 and card1 (00..07).
         A four of a kind will place the quads in card5, card4, card3 and card2
           in (04..19) with the non-matching card in card1 (00..03).

         When building a high rating, the ace will be recorded as aceHigh unless
           the hand evaluates to a five high straight/straight flush.
  }
  TcaaHandRating = LongInt;

const
  { Masks used to set/test the rank of various hands }
  caaNoPair        =   $0;
  caaOnePair       =   $100000;
  caaTwoPair       =   $200000;
  caaThreeOfAKind  =   $400000;
  caaStraight      =   $800000;
  caaFlush         =  $1000000;
  caaFullHouse     =  $2000000;
  caaFourOfAKind   =  $4000000;
  caaStraightFlush =  $8000000;
  caaRoyalFlush    = $10000000;

type
  { TcaaPokerHand
    Defines a poker hand
    Allows creation of poker hands of five cards or larger
    Allows setting of high and low hand ratings
    Allows cards to be copied from the deck }
  TcaaPokerHand = class(TcaaPCardList)
  private
    FLoRating : TcaaHandRating;
    FHiRating : TcaaHandRating;
    FLoName   : TcaaCardString;
    FHiName   : TcaaCardString;
  public
    constructor Create(NumCards: Integer);
    procedure SetHighValues;
    procedure SetLowValues;
    procedure CopyCardFromDeck( FromCard, ToCard: Integer;
                                const Deck: TcaaPokerDeck);
    property LoRating : TcaaHandRating read FLoRating write FLoRating;
    property HiRating : TcaaHandRating read FHiRating write FHiRating;
    property LoName   : TcaaCardString read FLoName write FLoName;
    property HiName   : TcaaCardString read FHiName write FHiName;
  end;

implementation

uses Dialogs, SysUtils;

{ TcaaPokerCard }

constructor TcaaPokerCard.Create;
begin
  inherited Create;
  SetLength(FName,caaCardStringLength);
end;

{ [ TcaaPCardList Methods ] ************************************************** }

function TcaaPCardList.AddCard(PCard: TcaaPokerCard): Integer;
begin
  Result := FCards.Add(PCard);
end;

constructor TcaaPCardList.Create;
begin
  inherited Create;
  FCards := TList.Create;
end;

destructor TcaaPCardList.Destroy;
var
  CardCount: Integer;
begin
  for CardCount := Count - 1 downto 0 do Items[CardCount].Free;
  FCards.Free;
  inherited Destroy;
end;

function TcaaPCardList.Equals(CardList: TcaaPCardList): boolean;
var
  CardPos: Integer;
begin
  Result := False;
  if FCards.Count <> CardList.Count then Exit;
  for CardPos := 0 to CardList.Count - 1 do
    if FCards[CardPos] <> CardList[CardPos] then Exit;
  Result := True;
end;

function TcaaPCardList.GetCard(Index: Integer): TcaaPokerCard;
begin
  Result := FCards[Index];
end;

function TcaaPCardList.GetCount: Integer;
begin
  Result := FCards.Count;
end;

(*
procedure TcaaPCardList.PutCard(Index: Integer; PCard: TcaaPokerCard);
begin
  FCards[Index] := PCard;
end;
*)

{ [ TcaaPokerDeck Methods ] ************************************************** }

constructor TcaaPokerDeck.Create;
begin
  inherited Create;
  BuildDeck;
end;

procedure TcaaPokerDeck.BuildDeck;
var
  CardPos: Integer;
  CardName: TcaaCardString;
begin
  for CardPos := 0 to caaStdDeckSize - 1 do
  begin
    AddCard(TcaaPokerCard.Create);
    { the suit changes every 13 cards.  integer division returns 0 for
      values of 0..12, 1 for 13..25 etc. Note: the resulting value must be
      cast as TcaaSuit }
    Items[CardPos].FSuit := TcaaSuit((CardPos) div 13);

    { rank changes every card and starts over after every 13 cards. the mod
      operator is used to accomplish this. The rank of aces is set to AceLow.
      Note: the resulting value must be cast as TcaaRank }
    Items[CardPos].FRank := TcaaRank((CardPos) mod 13);

    { build card names based on then rank of the card ... }
    case Items[CardPos].FRank of
       caaAceLow  : CardName  := 'Ace';
       caaTwo     : CardName  := 'Two';
       caaThree   : CardName  := 'Three';
       caaFour    : CardName  := 'Four';
       caaFive    : CardName  := 'Five';
       caaSix     : CardName  := 'Six';
       caaSeven   : CardName  := 'Seven';
       caaEight   : CardName  := 'Eight';
       caaNine    : CardName  := 'Nine';
       caaTen     : CardName  := 'Ten';
       caaJack    : CardName  := 'Jack';
       caaQueen   : CardName  := 'Queen';
       caaKing    : CardName  := 'King';
    else
       ShowMessage('Rank Error in card ' + IntToStr(CardPos));
    end; { case }

    { ... followed by the suit of the card }
    case Items[CardPos].FSuit of
        caaClubs    : Items[CardPos].Name := CardName + ' of Clubs';
        caaDiamonds : Items[CardPos].Name := CardName + ' of Diamonds';
        caaHearts   : Items[CardPos].Name := CardName + ' of Hearts';
        caaSpades   : Items[CardPos].Name := CardName + ' of Spades';
    else
        ShowMessage('Suit error in card ' + IntToStr(CardPos));
    end; { case }

    Items[CardPos].FIsDown := False;
    Items[CardPos].FIsHeld := False;
  end; { for CardCount }
end;

procedure TcaaPokerDeck.Shuffle;
var
  ShuffleCount, CardPos, CardPos2 : Integer;
  TempCard : TcaaPokerCard;
begin
  Randomize;
  { shuffle the cards }
  for ShuffleCount := 1 to 4 do
    for cardPos := 0 to Count-1 do
    begin
      CardPos2 := Random(Count);
      TempCard := FCards[CardPos];
      FCards[CardPos] := FCards[CardPos2];
      FCards[CardPos2] := TempCard;
    end;
end;

{ [ TcaaPokerHand Methods and Support Routines ] ***************************** }

type
  { We don't want to manipulate the cards in the actual hand as this causes
    side effects which are undesireable and hard to catch. }
  { TcaaECard (evaluation cards - mimics fields of TcaaPokerCard) }
  TcaaEvaluationCard = record
    // Name : TcaaCardString;   { removed v2.0 }
    Suit : TcaaSuit;
    Rank : TcaaRank;
    //IsDown : boolean;
    //IsHeld : boolean;
  end;
  { TcaaEHand
    Evaluation Hand Array: this is the data type that will actually be
    evaluated by SetHighValues and SetLowValues. }
  TcaaEvaluationHand = array[1..5] of TcaaEvaluationCard;

constructor TcaaPokerHand.Create(NumCards: Integer);
var
  CardPos: Integer;
begin
  inherited Create;
  SetLength(FLoName,caaCardStringLength);
  SetLength(FHiName,caaCardStringLength);
  if NumCards < 5 then NumCards := 5;
  for CardPos := 0 to NumCards - 1 do
    AddCard(TcaaPokerCard.Create);
end;

procedure TcaaPokerHand.CopyCardFromDeck( FromCard, ToCard: Integer;
                                          const Deck: TcaaPokerDeck);
begin
  Items[ToCard].Name := Deck.Items[FromCard].Name;
  Items[ToCard].Suit := Deck.Items[FromCard].Suit;
  Items[ToCard].Rank := Deck.Items[FromCard].Rank;
  Items[ToCard].IsDown := Deck.Items[FromCard].IsDown;
  Items[ToCard].IsHeld := Deck.Items[FromCard].IsHeld;
end;

{ Support Routines
  Hand Type Evaluation Functions - private to this module
  The Card List should be in Sorted order.
  Before calling any of these functions be sure to cal SortCardsLowToHigh }

{ procedure SwapCards
  swaps two cards in hand }
procedure SwapCards( var Hand: TcaaEvaluationHand;
                     card1, card2 : Integer);
var
  tempCard : TcaaEvaluationCard;
begin
  tempCard := Hand[card1];
  Hand[card1] := Hand[card2];
  Hand[card2] := tempCard;
end;

{ SortCardsLowToHigh
  Used to sort the cards prior to evaluation by the poker engine
  Sorts the standard five card poker hand into the order expected by the
    evaluation routines - when done, Hand[1] contains lowest card.
  v2.0 - have replaced the sort routine with an unrolled sort }
(*
procedure SortCardsLowToHigh(var Hand: TcaaEvaluationHand);
var
   leftCardPos, rightCardPos : Integer;
   tempCard: TcaaEvaluationCard;
begin
  for leftCardPos := 2 to 5 do
    for rightCardPos := 5 downto leftCardPos do
      if Hand[rightCardPos-1].Rank > Hand[rightCardPos].Rank then
      begin
        tempCard := Hand[rightCardPos-1];
        Hand[rightCardPos-1] := Hand[rightCardPos];
        Hand[rightCardPos] := tempCard;
      end;
end;
*)

procedure SortCardsLowToHigh(var Hand: TcaaEvaluationHand);
var
  CardMoved: boolean;
  SwapCard: TcaaEvaluationCard;
begin
  { pass 1 - 4 comparisons }
  CardMoved := False;
  if Hand[1].Rank > Hand[2].Rank then
  begin
    SwapCard := Hand[1];
    Hand[1] := Hand[2];
    Hand[2] := SwapCard;
    CardMoved := True;
  end;
  if Hand[2].Rank > Hand[3].Rank then
  begin
    SwapCard := Hand[2];
    Hand[2] := Hand[3];
    Hand[3] := SwapCard;
    CardMoved := True;
  end;
  if Hand[3].Rank > Hand[4].Rank then
  begin
    SwapCard := Hand[3];
    Hand[3] := Hand[4];
    Hand[4] := SwapCard;
    CardMoved := True;
  end;
  if Hand[4].Rank > Hand[5].Rank then
  begin
    SwapCard := Hand[4];
    Hand[4] := Hand[5];
    Hand[5] := SwapCard;
    CardMoved := True;
  end;
  if not CardMoved then Exit;

  { pass 2 - 3 comparisons }
  CardMoved := False;
  if Hand[1].Rank > Hand[2].Rank then
  begin
    SwapCard := Hand[1];
    Hand[1] := Hand[2];
    Hand[2] := SwapCard;
    CardMoved := True;
  end;
  if Hand[2].Rank > Hand[3].Rank then
  begin
    SwapCard := Hand[2];
    Hand[2] := Hand[3];
    Hand[3] := SwapCard;
    CardMoved := True;
  end;
  if Hand[3].Rank > Hand[4].Rank then
  begin
    SwapCard := Hand[3];
    Hand[3] := Hand[4];
    Hand[4] := SwapCard;
    CardMoved := True;
  end;
  if not CardMoved then Exit;

  { pass 3 - two comparisons }
  if Hand[1].Rank > Hand[2].Rank then
  begin
    SwapCard := Hand[1];
    Hand[1] := Hand[2];
    Hand[2] := SwapCard;
  end;
  if Hand[2].Rank > Hand[3].Rank then
  begin
    SwapCard := Hand[2];
    Hand[2] := Hand[3];
    Hand[3] := SwapCard;
  end;

  { pass 4 - just one left }
  if Hand[1].Rank > Hand[2].Rank then
  begin
    SwapCard := Hand[1];
    Hand[1] := Hand[2];
    Hand[2] := SwapCard;
  end;
end;


{ Hand Type Evaluation Functions - private to this module
  Most routines expect the hand should be in sorted order - low to high.}

{ IsFlush
  Returns: true if hand is a flush }
function IsFlush(const Hand: TcaaEvaluationHand): boolean;
begin
  Result := False;
  if (Hand[1].Suit = Hand[2].Suit) and
     (Hand[1].Suit = Hand[3].Suit) and
     (Hand[1].Suit = Hand[4].Suit) and
     (Hand[1].Suit = Hand[5].Suit) then Result := True;
end;

{ IsStraight
  Expects: hand to be in sorted order - low to high by rank.
  Returns: true if hand is a straight
  Notes: Rank of Hand[5] should be 1 greater than Hand[4] etc. Ace High is
         special case. }
function IsStraight(const Hand: TcaaEvaluationHand): boolean;
var
  card1, card2, card3, card4, card5: Integer;
begin
  Result := False;
  card1 := ord(Hand[1].Rank);
  card2 := ord(Hand[2].Rank);
  card3 := ord(Hand[3].Rank);
  card4 := ord(Hand[4].Rank);
  card5 := ord(Hand[5].Rank);
  { optimization? }
  if (card5 <> ord(caaKing)) and ((card5 - card1) <> 4) then Exit;

  if ((card5 - card4) = 1) then
    if ((card4 - card3) = 1) then
      if ((card3 - card2) = 1) then
        { first four cards were sequential. if the last two are, we have
          a straight. }
        if ((card2 - card1) = 1) then
        begin
          Result := true;
          Exit;
        end
        else
        { first four cards were sequential. check for ace high straight }
        if (card2 = ord(caaTen)) and
           (card1 = ord(caaAceLow)) then
        begin
          Result := true;
          Exit;
        end;
end;

{ IsFullHouse
  Expects: hand to be in sorted order - low to high by rank
           hand will look like XXXyy or yyXXX
  Returns: true if hand is a full house }
function IsFullHouse(const Hand: TcaaEvaluationHand): boolean;
begin
  Result := False;
  { if first three cards have same rank (compare first and third cards) and
    last two have same rank (compare fourth and fifth cards) }
  if (Hand[1].Rank = Hand[3].Rank) and
     (Hand[4].Rank = Hand[5].Rank) then
  begin
    Result := true;
    Exit;
  end; { if }

  { or if first two have same rank (compare first and second cards) and
    last three have same rank (compare third and fifth cards) }
  if (Hand[1].Rank = Hand[2].Rank) and
     (Hand[3].Rank = Hand[5].Rank) then Result := true;
end;

{ IsFourOfAKind
  Expects: hand to be in sorted order - low to high by rank
           Hand will look like XXXXy or yXXXX
  Returns: true if hand is Four of a Kind }
function IsFourOfAKind(const Hand: TcaaEvaluationHand): boolean;
begin
  Result := False;
  { if first four cards have same rank (compare first and fourth)
    or last four cards have same rank (compare second and fifth) }
  if (Hand[1].Rank = Hand[4].Rank) or
     (Hand[2].Rank = Hand[5].Rank) then Result := true;
end;

{ IsThreeOfAKind
  Expects: Hand to be in sorted order - low to high by rank
           If it is Three of a Kind it will look like XXXyz or yXXXz or yzXXX
  Returns: true if hand is Three of a Kind }
function isThreeOfAKind(const Hand: TcaaEvaluationHand): Boolean;
begin
  Result := False;
  { if first three cards have same rank (compare first and third)
    or middle three cards (compare second and fourth)
    or last three (compare third and fifth) }
  if (Hand[1].Rank = Hand[3].Rank) or
     (Hand[2].Rank = Hand[4].Rank) or
     (Hand[3].Rank = Hand[5].Rank) then Result := True;
end;

{ IsTwoPairs
  Expects: Hand to be in sorted order - low to high by rank
           If it is Two Pairs it will look like XXYYz, XXzYY, zXXYY
  Returns: true if hand is Two Pairs }
function IsTwoPairs(const Hand: TcaaEvaluationHand): boolean;
begin
  Result := False;
  { if first cards have same rank... }
  if (Hand[1].Rank = Hand[2].Rank) then
     { ...and middle two or last two match }
     if (Hand[3].Rank = Hand[4].Rank) or
        (Hand[4].Rank = Hand[5].Rank) then
     begin
       Result := True;
       exit;
     end;

   { or if middle two match and last two match also }
   if (Hand[2].Rank = Hand[3].Rank) and
      (Hand[4].Rank = Hand[5].Rank) Then Result := True;
end;

{ IsOnePair
  Expects: Hand to be in sorted order - low to high by rank
           If it is One Pair it will look like XXabc, aXXbc, abXXc or abcXX
  Returns: true if hand is One Pair }
function IsOnePair(const Hand: TcaaEvaluationHand): boolean;
begin
  Result := False;
  if (Hand[1].Rank = Hand[2].Rank) or
     (Hand[2].Rank = Hand[3].Rank) or
     (Hand[3].Rank = Hand[4].Rank) or
     (Hand[4].Rank = Hand[5].Rank) then Result := True;
end;


{ helper functions for Set Low and High Value routines ----------------------- }

{ function CardsRating
  returns the rating for a cards in the hand.  This rating consists only of the
  the card informatin - stored in the lower five nibbles of the low and high
  hand ratings }
function CardsRating(const Hand: TcaaEvaluationHand): TcaaHandRating;
var
  cd1, cd2, cd3, cd4, cd5 : TcaaHandRating;
begin
   cd1 := Ord( Hand[1].Rank ) + 1;
   cd2 := Ord( Hand[2].Rank ) + 1;
   cd3 := Ord( Hand[3].Rank ) + 1;
   cd4 := Ord( Hand[4].Rank ) + 1;
   cd5 := Ord( Hand[5].Rank ) + 1;
   Result := cd1 + (cd2 SHL 4) + (cd3 SHL 8) + (cd4 SHL 12) +(cd5 SHL 16);
end;

{ procedure MakeAcesLow
  Makes all Aces in Evaluation Hand AceLow }
procedure MakeAcesLow(var Hand: TcaaEvaluationHand);
var
  cardPos : Integer;
begin
  for cardPos := 1 to 5 Do
     if Hand[cardPos].Rank = caaAceHigh then
       Hand[cardPos].Rank := caaAceLow;
end;

{ procedure TcaaPokerHand.MakeAcesHigh
  Makes all Aces in Evaluation Hand AceHigh }
procedure MakeAcesHigh(var Hand: TcaaEvaluationHand);
var
  cardPos : Integer;
begin
  for cardPos := 1 to 5 Do
     if Hand[cardPos].Rank = caaAceLow then
       Hand[cardPos].Rank := caaAceHigh;
end;

{ card ordering helper functions --------------------------------------------- }

{ procedure TcaaPokerHand.SetCardOrderFourKind;
  Sets hand in proper order for Four of a Kind Hands - OXXXX
  Hand will be in order XXXXO or OXXXX to start}
procedure SetCardOrderFourKind(var Hand: TcaaEvaluationHand);
begin
  { if the first and second cards have the same rank then foursome is first.
    we want it to be last and we must swap the first and fifth cards. }
  if (Hand[1].Rank = Hand[2].Rank) then SwapCards(Hand,1,5);
end;

{ procedure SetCardOrderFullHouse;
  Sets hand in proper order for a Full House - OOXXX is what we want
  Hand will come in as XXXOO or OOXXX }
procedure SetCardOrderFullHouse(var Hand: TcaaEvaluationHand);
begin
  { if the first and third cards have the same rank, the trips are
    first and we must swap the first two cards with the last }
  if (Hand[3].Rank = Hand[1].Rank) then
  begin
    { switch first two with last two }
    SwapCards(Hand,1,4);
    SwapCards(Hand,2,5);
  end; { if FCards... }
end;

{ procedure SetCardOrderThreeKind;
  Sets hand in proper order for a Three of a Kind - ABXXX is what we want
  Hand will come in as XXXAB, AXXXB or ABXXX }
procedure SetCardOrderThreeKind(var Hand: TcaaEvaluationHand);
begin
  { if the first and third cards are the same rank the trips are first
    and we must swap the first two cards with the last two }
  if (Hand[1].Rank = Hand[3].Rank) then
  begin
    SwapCards(Hand,1,4);
    SwapCards(Hand,2,5);
    Exit;
  end;
  { if the second and fourth cards are the same rank, the trips are in
    the middle - swap the second and fifth cards }
  if (Hand[2].Rank = Hand[4].Rank) then SwapCards(Hand,2,5);
end;

{ procedure SetCardOrderTwoPair;
  Sets hand in proper order for a Two Pair - AOOXX is what we want
  Hand will come in as OOXXA, OOAXX or AOOXX }
procedure SetCardOrderTwoPair(var Hand: TcaaEvaluationHand);
begin
  { possible card orders are: 11223, 11322 or 31122 - last case is what we
    want. Check first case: is the odd card in FCards[5]...}
  if (Hand[4].Rank <> Hand[5].Rank) then
  begin                   { 11223 }
    SwapCards(Hand,3,5);  { 11322 }
    SwapCards(Hand,1,3);  { 31122 }
    Exit;
  end;
  { ...or is it in the middle - as in 11233 }
  if (Hand[1].Rank = Hand[2].Rank) and
     (Hand[4].Rank = Hand[5].Rank) then SwapCards(Hand,1,3);  { 21133 }
end;

{ procedure SetCardOrderOnePair(var Hand: TcaaEvaluationHand);
  Could come in as ABCXX, ABXXC, AXXBC or XXABC - first is what we want }
procedure SetCardOrderOnePair(var Hand: TcaaEvaluationHand);
var
  SwapCard: TcaaEvaluationCard;
begin
  { pair in slots 1 & 2 as in 11234 }
  { this is the only case in which doing the swaps internally
    is faster than calling the swap cards function }
  if (Hand[1].Rank = Hand[2].Rank) then
  begin
    //SwapCards(Hand,1,3);    { 21134 }
    SwapCard := Hand[1];
    Hand[1] := Hand[3];
    Hand[3] := SwapCard;
    //SwapCards(Hand,2,4);    { 23114 }
    SwapCard := Hand[2];
    Hand[2] := Hand[4];
    Hand[4] := SwapCard;
    //SwapCards(Hand,3,5);    { 23411 }
    SwapCard := Hand[3];
    Hand[3] := Hand[5];
    Hand[5] := SwapCard;
  end
  { if pair in slots 2 & 3 ( can't be aces ) }
  else if (Hand[2].Rank = Hand[3].Rank) then
  { current order            12234 }
  begin
    SwapCards(Hand,2,4);   { 13224 }
    SwapCards(Hand,3,5);   { 13422 }
  end
  { if pair in slots 3 & 4, swap 3 & 5 }
  else if (Hand[3].Rank = Hand[4].Rank) then
  begin
    { current order          12334 }
    SwapCards(Hand,3,5);   { 12433 }
  end;
end;

{ TcaaPokerHand.SetHighValues
    Determines the type of hand from No Pair up through Royal Flush
    Places the cards in the proper poker order (for a high hand), if this is
      different from the normal sorted order
    Sets High hand ratings and names. }
procedure TcaaPokerHand.SetHighValues;
var
  Hand: TcaaEvaluationHand;
  c1, c2, c3, c4, c5: Integer;  { card loop counters }
  NumCards: Integer;            { number of cards in card list }
  HighRating: TcaaHandRating;   { stores highest rating found }
  { v 2.0 modifications }
  // HighName: TcaaCardString;  { stores name of highest five card combo }
  HighCardRank: Integer;
  HighCardName: TcaaCardString;
begin
  { we want to loop through all possible five card combos in the hand }
  { find out how many cards there are }
  NumCards := FCards.Count;
  { initialize high rating and name }
  // HighName := '';   { removed v2.0 }
  HighRating := 0;
  { loop through all possible five card combos in the hand }
  for c1 := 0 to NumCards - 5 do
    for c2 := c1 + 1 to NumCards - 4 do
      for c3 := c2 + 1 to NumCards - 3 do
        for c4 := c3 + 1 to NumCards - 2 do
          for c5 := c4 + 1 to NumCards - 1 do
          begin
            { Create temporary evaluation hand. Evaluating a poker hand requires
              sorting the cards and changing some of the values. Therefore we
              want to work on a totally different set of cards. Create hand
              array and fill it with cards from hand to be evaluated }
            // Hand[1].Name := Items[c1].FName;   { removed v2.0 }
            Hand[1].Suit := Items[c1].FSuit;
            Hand[1].Rank := Items[c1].FRank;
            //Hand[1].IsDown := Items[c1].FIsDown;
            //Hand[1].IsHeld := Items[c1].FIsHeld;

            // Hand[2].Name := Items[c2].FName;   { removed v2.0 }
            Hand[2].Suit := Items[c2].FSuit;
            Hand[2].Rank := Items[c2].FRank;
            //Hand[2].IsDown := Items[c2].FIsDown;
            //Hand[2].IsHeld := Items[c2].FIsHeld;

            // Hand[3].Name := Items[c3].FName;   { removed v2.0 }
            Hand[3].Suit := Items[c3].FSuit;
            Hand[3].Rank := Items[c3].FRank;
            //Hand[3].IsDown := Items[c3].FIsDown;
            //Hand[3].IsHeld := Items[c3].FIsHeld;

            // Hand[4].Name := Items[c4].FName;   { removed v2.0 }
            Hand[4].Suit := Items[c4].FSuit;
            Hand[4].Rank := Items[c4].FRank;
            //Hand[4].IsDown := Items[c4].FIsDown;
            //Hand[4].IsHeld := Items[c4].FIsHeld;

            // Hand[5].Name := Items[c5].FName;   { removed v2.0 }
            Hand[5].Suit := Items[c5].FSuit;
            Hand[5].Rank := Items[c5].FRank;
            //Hand[5].IsDown := Items[c5].FIsDown;
            //Hand[5].IsHeld := Items[c5].FIsHeld;

            { routines expect hands to be in sorted order, aces set to low }
            // MakeAcesLow(Hand);   { removed v2.0 }
            SortCardsLowToHigh(Hand);

            { Any hand with at least two cards of same rank }
            if isOnePair(Hand) then
            begin
              { at least a pair, are there three cards of same rank? }
              if isThreeOfAKind(Hand) then
              begin
                { ok, its three of a kind, is it Four of a Kind? }
                if isFourOfAKind(Hand) then
                begin
                  SetCardOrderFourKind(Hand);
                  { check for aces - set them high }
                  if (Hand[1].Rank = caaAceLow) or
                     (Hand[5].Rank = caaAceLow) then MakeAcesHigh(Hand);
                  FHiRating := CardsRating(Hand) or caaFourOfAKind;
                  // FHiName := HandNameFourKind(Hand);  { removed v2.0 }
                end
                { ok, its not four of a kind - how about a full house? }
                else if isFullHouse(Hand) then
                begin
                  SetCardOrderFullHouse(Hand);
                  { The pair makes no difference in the hand rating and multiple
                    aces are always counted as high cards }
                  MakeAcesHigh(Hand);
                  FHiRating := CardsRating(Hand) or caaFullHouse;
                  // FHiName := HandNameFullHouse(Hand);  { removed v2.0 }
                end
                else { no, just trips }
                begin
                  {The trips must be in last place 3, 4 and 5 }
                  SetCardOrderThreeKind(Hand);
                  { rate the hand - make the aces high if necessary }
                  if Hand[5].Rank = caaAceLow then MakeAcesHigh(Hand);
                  { is there a lone ace? change it and swap with card at 2 }
                  if Hand[1].Rank = caaAceLow then
                  begin
                    Hand[1].Rank := caaAceHigh;
                    SwapCards(Hand,1,2);
                  end; { if }
                  FHiRating := CardsRating(Hand) or caaThreeOfAKind;
                  // FHiName := HandNameThreeKind(Hand);   { removed v2.0 }
                end
              end { if isThreeOfAKind }
              { no trips, how about two pairs }
              else if isTwoPairs(Hand) then
              begin
                { Its Two Pairs
                  The pairs must be put in the last slots.
                  Paired aces are high but for low hands an odd ace is low }
                SetCardOrderTwoPair(Hand);
                { order is now ok, unless we have a pair of aces }
                if (Hand[2].Rank = caaAceLow) then
                begin
                  MakeAcesHigh(Hand);
                  SwapCards(Hand,2,4);
                  SwapCards(Hand,3,5);
                end;
                { First check for and change lone ace. the only place a lone ace
                  can be is in Hand[1]. All cards are already in proper order }
                if Hand[1].Rank = caaAceLow then
                   Hand[1].Rank := caaAceHigh;
                FHiRating := CardsRating(Hand) or caaTwoPair;
                // FHiName := HandNameTwoPair(Hand);   { removed v2.0 }
              end { if isTwoPairs }
              else
              begin { no, just a pair }
                { The pair must be in the last two slots (4 and 5).  If it is a
                  pair of aces, they must be made high }
                MakeAcesHigh(Hand);
                SortCardsLowToHigh(Hand);
                SetCardOrderOnePair(Hand);
                // FHiName := HandNameOnePair(Hand);   { removed v2.0 }
                FHiRating := CardsRating(Hand) or caaOnePair;
              end
            end { if isOnePair }

            { No two cards have same rank, check for Straights }
            else if isStraight(Hand) then
            begin
              { ok, it is a straight, is it also a flush? }
              if IsFlush(Hand) then
              begin
                { ok, its a Straight Flush, is it a Royal? }
                if (Hand[1].Rank = caaAceLow) and
                   (Hand[5].Rank = caaKing) then
                begin
                  { Yes, its a Royal:
                    Lowest card must be an ace. Set it ace high and re sort }
                  Hand[1].Rank := caaAceHigh;
                  SortCardsLowToHigh(Hand);
                  FHiRating := CardsRating(Hand) or caaRoyalFlush;
                  // FHiName := 'Royal Flush';   { removed v2.0 }
                end
                else { no, its not a royal, but it is a straight flush }
                begin
                  { Normal sorting order is correct for rating as high and low }
                  FHiRating := CardsRating(Hand) or caaStraightFlush;
                  // FHiName := RankString( Hand[5].Rank ) +
                  //            ' High Straight Flush';  { removed v2.0 }
                end
              end
              else { its not a straight flush, just a straight }
              begin
                { If its an ace high straight, we need to place the ace in the
                  high position and make it aceHigh. Note: in this case we must
                  test both the high and low card positions }
                if (Hand[5].Rank = caaKing) and
                   (Hand[1].Rank = caaAceLow) then
                begin
                  Hand[1].Rank := caaAceHigh;
                  SortCardsLowToHigh(Hand);
                end; { if (Hand...}
                FHiRating := CardsRating(Hand) or caaStraight;
                // FHiName := RankString( Hand[5].Rank ) +
                //            ' High Straight';      { removed v2.0 }
              end
            end

            { Flush - for the high rating, we make the ace high and resort }
            else if isFlush(Hand) then
            begin
              { set cards in proper order
                if its an ace high flush, we need to place the ace in the
                high position and make it aceHigh }
              if (Hand[1].Rank = caaAceLow) then
              begin
                Hand[1].Rank := caaAceHigh;
                SortCardsLowToHigh(Hand);
              end; { if (Hand... }
              FHiRating := CardsRating(Hand) or caaFlush;
              // FHiName := RankString( Hand[5].Rank )
              //            + ' High Flush';  { removed v2.0 }
            end { if isFlush }

            { Just a mess of unrelated cards:
              If we got this far, it can't be anything else.
              if there is an ace make it high and re-sort.
              Since cards are sorted it must be in Hand[1] }
            else
            begin
              if (Hand[1].Rank = caaAceLow) then
              begin
                Hand[1].Rank := caaAceHigh;
                SortCardsLowToHigh(Hand);
              end; { if (Hand... }
              // FHiName := RankString( Hand[5].Rank ) + ' ' +  { removed v2.0 }
              //            RankString( Hand[4].Rank ) + ' High';
              FHiRating := CardsRating(Hand) or caaNoPair;
            end;

            { make sure only the highest rating and name are saved =========== }
            if HighRating < FHiRating then
            begin
              HighRating := FHiRating;
              // HighName := FHiName;   { removed v2.0 }
            end
            else
            begin
              FHiRating := HighRating;
              // FHiName := HighName;   { removed v2.0 }
            end;

          end; { for c5 }

  { now set the high name for the hand. I have moved the hand naming routine   }
  {   out of the loop to increase speed. In .NET it is especially important to }
  {   minimize the creation of new strings.                                    }
  { we are interested in the four bits of FHiRating located at positions 16-19 }
  { 15 gives us a bit pattern of 1111. we shift this left 16 bits to create    }
  {   a mask to clear all bits except those located at positions 16-19.        }
  HighCardRank := (15 shl 16) and FHiRating;
  { move result to low order four bits and subtract 1 to make the value match  }
  {   the ordinal values of the card rank type. }
  HighCardRank := (HighCardRank shr 16) - 1;
  // SetLength(HighCardName, caaCardStringLength);
  case HighCardRank of
    ord(caaAceLow)  : HighCardName := 'Ace';
    ord(caaTwo)     : HighCardName := 'Two';
    ord(caaThree)   : HighCardName := 'Three';
    ord(caaFour)    : HighCardName := 'Four';
    ord(caaFive)    : HighCardName := 'Five';
    ord(caaSix)     : HighCardName := 'Six';
    ord(caaSeven)   : HighCardName := 'Seven';
    ord(caaEight)   : HighCardName := 'Eight';
    ord(caaNine)    : HighCardName := 'Nine';
    ord(caaTen)     : HighCardName := 'Ten';
    ord(caaJack)    : HighCardName := 'Jack';
    ord(caaQueen)   : HighCardName := 'Queen';
    ord(caaKing)    : HighCardName := 'King';
    ord(caaAceHigh) : HighCardName := 'Ace';
  else
    showMessage('Error in High Evaluation of Card Ranks: ' +
      IntToStr(HighCardRank) + ' ' + IntToStr(ord(caaAceHigh)))
  end;

  if FHiRating >= caaRoyalFlush then
  begin
    FHiName := 'iRoyal Flush';
  end
  else if FHiRating >= caaStraightFlush then
  begin
    FHiName := 'hStraight Flush';
  end
  else if FHiRating >= caaFourOfAKind then
  begin
      FHiName := 'eFour ' + HighCardName + 's';
  end
  else if FHiRating >= caaFullHouse then
  begin
      FHiName := 'dFull House ';// + HighCardName + 's Over';
  end
  else if FHiRating >= caaFlush then
  begin
    FHiName := 'g' + HighCardName + ' High Flush';
  end
  else if FHiRating >= caaStraight then
  begin
    FHiName := 'f' + HighCardName + ' High Straight';
  end
  else if FHiRating >= caaThreeOfAKind then
  begin
      FHiName := 'cThree ' + HighCardName + 's';
  end
  else if FHiRating >= caaTwoPair then
  begin
      FHiName := 'bTwo Pair';// + HighCardName + 's Over';
  end
  else if FHiRating >= caaOnePair then
  begin
      FHiName := 'aPair of ' + HighCardName + 's';
  end
  else
  begin
    FHiName := HighCardName + ' VOID!';
  end;

end;

{ TcaaPokerHand.SetLowValues
  Sets the low name and low value for the hand.
  ( based on typical casino rules )
  1) Straights, flushes and straight flushes do not count as such.
  2) Aces are always set to AceLow - even in pairs, trips etc.
     A pair of aces is lower than a pair of twos! }
procedure TcaaPokerHand.SetLowValues;
var
  Hand: TcaaEvaluationHand;
  c1, c2, c3, c4, c5: Integer;  { card loop counters }
  NumCards: Integer;            { number of cards in card list }
  LowRating: TcaaHandRating;    { stores highest rating found }

  { v 2.0 modifications }
  // LowName: TcaaCardString;  { stores name of lowest five card combo }
  HighCardRank: Integer;
  HighCardName: TcaaCardString;
begin
  { we want to loop through all possible five card combos in the hand }
  { find out how many cards there are }
  NumCards := FCards.Count;
  { initialize high rating and name }
  // LowName := '';    { removed v2.0 }
  LowRating := MaxLongInt;
  { loop through all possible five card combos in the hand }
  for c1 := 0 to NumCards - 5 do
    for c2 := c1 + 1 to NumCards - 4 do
      for c3 := c2 + 1 to NumCards - 3 do
        for c4 := c3 + 1 to NumCards - 2 do
          for c5 := c4 + 1 to NumCards - 1 do
          begin
            { Create temporary evaluation hand. Evaluating a poker hand requires
              sorting the cards and changing some of the values. Therefore we
              want to work on a totally different set of cards. Create hand
              array and fill it with cards from hand to be evaluated }
            // Hand[1].Name := Items[c1].FName;    { removed v2.0 }
            Hand[1].Suit := Items[c1].FSuit;
            Hand[1].Rank := Items[c1].FRank;
            //Hand[1].IsDown := Items[c1].FIsDown;
            //Hand[1].IsHeld := Items[c1].FIsHeld;

            // Hand[2].Name := Items[c2].FName;    { removed v2.0 }
            Hand[2].Suit := Items[c2].FSuit;
            Hand[2].Rank := Items[c2].FRank;
            //Hand[2].IsDown := Items[c2].FIsDown;
            //Hand[2].IsHeld := Items[c2].FIsHeld;

            // Hand[3].Name := Items[c3].FName;    { removed v2.0 }
            Hand[3].Suit := Items[c3].FSuit;
            Hand[3].Rank := Items[c3].FRank;
            //Hand[3].IsDown := Items[c3].FIsDown;
            //Hand[3].IsHeld := Items[c3].FIsHeld;

            // Hand[4].Name := Items[c4].FName;    { removed v2.0 }
            Hand[4].Suit := Items[c4].FSuit;
            Hand[4].Rank := Items[c4].FRank;
            //Hand[4].IsDown := Items[c4].FIsDown;
            //Hand[4].IsHeld := Items[c4].FIsHeld;

            // Hand[5].Name := Items[c5].FName;    { removed v2.0 }
            Hand[5].Suit := Items[c5].FSuit;
            Hand[5].Rank := Items[c5].FRank;
            //Hand[5].IsDown := Items[c5].FIsDown;
            //Hand[5].IsHeld := Items[c5].FIsHeld;

            { Note: We must check from highest hand down to lowest hand because
              the checking routines are not set up to eliminate hands of higher
              rank. ( A hand containing Two Pairs or a Full House also contains
              One Pair etc. )  }
            { routines expect hands to be in sorted order }
            MakeAcesLow(Hand);
            SortCardsLowToHigh(Hand);

            { One Pair }
            if isOnePair(Hand) then
            begin
              if isThreeOfAKind(Hand) then { Three of a Kind? }
              begin
                if isFourOfAKind(Hand) then   { Four of a Kind?  }
                begin
                  SetCardOrderFourKind(Hand);
                  FLoRating := CardsRating(Hand) or caaFourOfAKind;
                  // FLoName := HandNameFourKind(Hand);  { removed v2.0 }
                end
                else if isFullHouse(Hand) then { not 4, how about a full house }
                begin
                  SetCardOrderFullHouse(Hand);
                  FLoRating := CardsRating(Hand) or caaFullHouse;
                  // FLoName := HandNameFullHouse(Hand); { removed v2.0 }
                end
                else { just trips }
                begin
                  SetCardOrderThreeKind(Hand);
                  FLoRating := CardsRating(Hand) or caaThreeOfAKind;
                  // FLoName := HandNameThreeKind(Hand); { removed v2.0 }
                end
              end { no three cards match }
              else if isTwoPairs(Hand) then { two pairs }
              begin
                SetCardOrderTwoPair(Hand);
                FLoRating := CardsRating(Hand) or caaTwoPair;
                // FLoName := HandNameTwoPair(Hand);    { removed v2.0 }
              end
              else { just one pair }
              begin
                SetCardOrderOnePair(Hand);
                FLoRating := CardsRating(Hand) or caaOnePair;
                // FLoName := HandNameOnePair(Hand);    { removed v2.0 }
              end
            end { if isOnePair }

            { All no pair, straights, flushes, straight flushes and royals
              this is correct for all hands that do not contain cards of the
              same rank }
            else
            begin
              FLoRating := CardsRating(Hand) or caaNoPair;
              // FLoName := RankString( Hand[5].Rank ) + ' ' + { removed v2.0 }
              //            RankString( Hand[4].Rank ) + ' Low';
            end;

            { make sure only the lowest rating and name are saved }
            if LowRating > FLoRating then
            begin
              LowRating := FLoRating;
              // LowName := FLoName;  { removed v2.0 }
            end
            else
            begin
              FLoRating := LowRating;
              // FLoName := LowName;  { removed v2.0 }
            end;

          end; { for c5 }

  { now set the low name for the hand. I have moved the hand naming routine   }
  {   out of the loop to increase speed. In .NET it is especially important to }
  {   minimize the creation of new strings.                                    }
  { we are interested in the four bits of FHiRating located at positions 16-19 }
  { 15 gives us a bit pattern of 1111. we shift this left 16 bits to create    }
  {   a mask to clear all bits except those located at positions 16-19.        }
  HighCardRank := (15 shl 16) and FLoRating;
  { move result to low order four bits and subtract 1 to make the value match  }
  {   the ordinal values of the card rank type. }
  HighCardRank := (HighCardRank shr 16) - 1;
  case HighCardRank of
    ord(caaAceLow)  : HighCardName := 'Ace';
    ord(caaTwo)     : HighCardName := 'Two';
    ord(caaThree)   : HighCardName := 'Three';
    ord(caaFour)    : HighCardName := 'Four';
    ord(caaFive)    : HighCardName := 'Five';
    ord(caaSix)     : HighCardName := 'Six';
    ord(caaSeven)   : HighCardName := 'Seven';
    ord(caaEight)   : HighCardName := 'Eight';
    ord(caaNine)    : HighCardName := 'Nine';
    ord(caaTen)     : HighCardName := 'Ten';
    ord(caaJack)    : HighCardName := 'Jack';
    ord(caaQueen)   : HighCardName := 'Queen';
    ord(caaKing)    : HighCardName := 'King';
    ord(caaAceHigh) : HighCardName := 'Ace';
  else
    showMessage('Error in High Evaluation of Card Ranks: ' +
      IntToStr(HighCardRank) + ' ' + IntToStr(ord(caaAceHigh)))
  end;

  if FLoRating < caaOnePair then // no pair
  begin
    FLoName := HighCardName + ' Low';
  end
  else if FLoRating < caaTwoPair then // one pair
  begin
      FLoName := 'aPair of ' + HighCardName + 's';
  end
  else if FLoRating < caaThreeOfAKind then // two pairs
  begin
      FLoName := 'bTwo Pair, ' + HighCardName + 's Over';
  end
  else if FLoRating < caaFullHouse then // three of a kind
  begin
      FLoName := 'cThree ' + HighCardName + 's';
  end
  else if FLoRating < caaFourOfAKind then // Full House
  begin
      FLoName := 'dFull House, ' + HighCardName + 's Over';
  end
  else // must be four of a kind
  begin
      FLoName := 'eFour ' + HighCardName + 's';
  end;

end;


end.
