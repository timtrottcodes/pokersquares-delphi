unit fmEnterTop10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TfmTop10 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblRank: TLabel;
    Label6: TLabel;
    lblScore: TLabel;
    edtName: TEdit;
    edtQuote: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTop10: TfmTop10;

implementation

{$R *.DFM}

end.
