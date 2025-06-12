unit config;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Tomcard2, StdCtrls, MidnightUnit;

type
  TfmConfig = class(TForm)
    Cards1: TCards;
    Cards2: TCards;
    ListBox1: TListBox;
    Label1: TLabel;
    fmOK: TButton;
    fmCancel: TButton;
    ListBox2: TListBox;
    Label2: TLabel;
    chk_SoundsOn: TCheckBox;
    procedure ListBox1Click(Sender: TObject);
    function LogFiles( Const path: String; Const SRec: TSearchRec ): Boolean;
    procedure ListBox2Click(Sender: TObject);
    procedure fmCancelClick(Sender: TObject);
    procedure fmOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConfig: TfmConfig;
  Files: TMidnightFiles;
  BaseDir: string;
implementation

uses main;

{$R *.DFM}

procedure TfmConfig.ListBox1Click(Sender: TObject);
begin
  Cards1.CardBackStyle := 1 + ListBox1.ItemIndex;
end;

function TfmConfig.LogFiles( Const path: String; Const SRec: TSearchRec ): Boolean;
begin
  Listbox2.Items.Add(SRec.Name);
  Result := True;
end;

procedure TfmConfig.ListBox2Click(Sender: TObject);
begin
  fmMain.imgFrmBack.Picture.LoadFromFile(BaseDir+'\media\background\'+ ListBox2.Items.Strings[ListBox2.ItemIndex]);
  TileImage(fmMain.imgfrmback, fmMain.imgTile);
end;

procedure TfmConfig.fmCancelClick(Sender: TObject);
begin
  fmMain.imgFrmBack.Picture.LoadFromFile(formbackground);
  TileImage(fmMain.imgfrmback, fmMain.imgTile);
  fmConfig.Close;
end;

procedure TfmConfig.fmOKClick(Sender: TObject);
begin
  fmMain.imgFrmBack.Picture.LoadFromFile(BaseDir+'\media\background\'+ ListBox2.Items.Strings[ListBox2.ItemIndex]);
  TileImage(fmMain.imgfrmback, fmMain.imgTile);
  formbackground := BaseDir+'\media\background\'+ ListBox2.Items.Strings[ListBox2.ItemIndex];
  fmMain.CardBackStyle := 1 + ListBox1.ItemIndex;
  fmMain.RedrawCards;
  fmConfig.Close;
end;

procedure TfmConfig.FormShow(Sender: TObject);
begin
  BaseDir := ExtractFilePath(Application.Exename);
  Files.FindRecursive(BaseDir + '\media\background\', '*.jpg', LogFiles, FALSE);
  ListBox2.ItemIndex := ListBox2.Items.IndexOf(ExtractFileName(formbackground));
  ListBox1.ItemIndex := fmMain.CardBackStyle-1;
  Cards1.CardBackStyle := 1 + ListBox1.ItemIndex;
end;

end.
