object fmTop10: TfmTop10
  Left = 192
  Top = 107
  BorderStyle = bsSingle
  Caption = 'High Score !!!'
  ClientHeight = 235
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 108
    Width = 41
    Height = 16
    AutoSize = False
    Caption = 'Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 140
    Width = 41
    Height = 16
    AutoSize = False
    Caption = 'Quote:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 116
    Top = 16
    Width = 192
    Height = 29
    Caption = 'Congratulations!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 58
    Top = 48
    Width = 308
    Height = 29
    Caption = 'You'#39've entered the top ten!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 352
    Top = 108
    Width = 33
    Height = 16
    AutoSize = False
    Caption = 'Rank:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblRank: TLabel
    Left = 392
    Top = 102
    Width = 25
    Height = 29
    AutoSize = False
    Caption = '10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 248
    Top = 108
    Width = 41
    Height = 16
    AutoSize = False
    Caption = 'Score:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblScore: TLabel
    Left = 296
    Top = 102
    Width = 49
    Height = 29
    AutoSize = False
    Caption = '300'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtName: TEdit
    Left = 56
    Top = 104
    Width = 177
    Height = 21
    Hint = 'Enter your name here'
    MaxLength = 15
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object edtQuote: TEdit
    Left = 56
    Top = 136
    Width = 361
    Height = 21
    Hint = 'Enter your cool quote here'
    MaxLength = 43
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 104
    Top = 186
    Width = 89
    Height = 33
    Caption = 'Ok'
    TabOrder = 2
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 232
    Top = 186
    Width = 89
    Height = 33
    TabOrder = 3
    Kind = bkCancel
  end
end
