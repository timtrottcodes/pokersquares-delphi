unit select;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfmGameType = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGameType: TfmGameType;

implementation

uses main;

{$R *.DFM}

procedure TfmGameType.Button2Click(Sender: TObject);
begin
  fmGameType.Close;
end;

procedure TfmGameType.Button1Click(Sender: TObject);
begin
  fmMain.GameType := ListBox1.ItemIndex;
  fmGameType.Close;
end;

procedure TfmGameType.FormCreate(Sender: TObject);
begin
  ListBox1.ItemIndex := 0;
end;

end.
