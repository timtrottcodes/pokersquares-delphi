unit about;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, explbtn, jpeg, TransCanvas, TransShape, MidnightUnit;

type
  TfmAbout = class(TForm)
    TransShape1: TTransShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Image2: TImage;
    Label8: TLabel;
    ExplorerButton1: TExplorerButton;
    Label9: TLabel;
    procedure ExplorerButton1Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAbout: TfmAbout;
  Files: TMidnightFiles;
  
implementation

{$R *.DFM}

procedure TfmAbout.ExplorerButton1Click(Sender: TObject);
begin
 fmAbout.Close;
end;

procedure TfmAbout.Label8Click(Sender: TObject);
begin
Files.ExecuteFile('http://lonewolf-online.net','','',0);
end;

end.
