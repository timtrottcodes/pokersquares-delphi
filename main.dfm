object fmMain: TfmMain
  Left = 164
  Top = 107
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = 'l o n e w o l f'
  ClientHeight = 785
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgFrmBack: TImage
    Left = 552
    Top = 552
    Width = 105
    Height = 105
    AutoSize = True
    Visible = False
  end
  object imgTile: TImage
    Left = 664
    Top = 552
    Width = 105
    Height = 105
    AutoSize = True
  end
  object TransPyramid: TTransShape
    Left = 0
    Top = 0
    Width = 529
    Height = 441
    Angle = 0
    UseCalcEvent = False
    TransFade = tfUp
    TransType = ttNone
    TransPercent = 50
    TransMinCutoff = 0
    TransMaxCutoff = 100
    TransKeyColor = clBlack
    TransBiasPercent = 0
    ScreenBiasPercent = 0
    Inverse = False
    CanvasType = ctTransparent
    Brush.Color = clBlack
    Shape = stRectangle
    Visible = False
  end
  object TransDie: TTransShape
    Left = 552
    Top = 56
    Width = 241
    Height = 89
    Angle = 0
    UseCalcEvent = False
    TransFade = tfUp
    TransType = ttAlpha
    TransPercent = 50
    TransMinCutoff = 0
    TransMaxCutoff = 100
    TransKeyColor = clBlack
    TransBiasPercent = 0
    ScreenBiasPercent = 0
    Inverse = False
    CanvasType = ctTransparent
    Brush.Color = clBlack
    Shape = stRectangle
    Visible = False
  end
  object TransScore: TTransShape
    Left = 552
    Top = 172
    Width = 241
    Height = 393
    Angle = 0
    UseCalcEvent = False
    TransFade = tfLeft
    TransType = ttAlpha
    TransPercent = 40
    TransMinCutoff = 0
    TransMaxCutoff = 100
    TransKeyColor = clBlack
    TransBiasPercent = 0
    ScreenBiasPercent = 0
    Inverse = False
    CanvasType = ctTransparent
    Brush.Color = clBlack
    Pen.Style = psClear
    Shape = stRectangle
    Visible = False
  end
  object lblR1: TLabel
    Tag = 1
    Left = 568
    Top = 208
    Width = 40
    Height = 13
    Caption = 'Row 1:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblR2: TLabel
    Tag = 2
    Left = 568
    Top = 232
    Width = 40
    Height = 13
    Caption = 'Row 2:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblR3: TLabel
    Tag = 3
    Left = 568
    Top = 256
    Width = 40
    Height = 13
    Caption = 'Row 3:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblR4: TLabel
    Tag = 4
    Left = 568
    Top = 280
    Width = 40
    Height = 13
    Caption = 'Row 4:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblR5: TLabel
    Tag = 5
    Left = 568
    Top = 304
    Width = 40
    Height = 13
    Caption = 'Row 5:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblR1T: TLabel
    Left = 616
    Top = 208
    Width = 113
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR2T: TLabel
    Left = 616
    Top = 232
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR3T: TLabel
    Left = 616
    Top = 256
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR4T: TLabel
    Left = 616
    Top = 280
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR5T: TLabel
    Left = 616
    Top = 304
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR1Score: TLabel
    Left = 744
    Top = 208
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR2Score: TLabel
    Left = 744
    Top = 232
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR3Score: TLabel
    Left = 744
    Top = 256
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR4Score: TLabel
    Left = 744
    Top = 280
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR5Score: TLabel
    Left = 744
    Top = 304
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC1: TLabel
    Tag = 7
    Left = 568
    Top = 352
    Width = 35
    Height = 13
    Caption = 'Col 1:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblC2: TLabel
    Tag = 8
    Left = 568
    Top = 376
    Width = 35
    Height = 13
    Caption = 'Col 2:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblC3: TLabel
    Tag = 9
    Left = 568
    Top = 400
    Width = 35
    Height = 13
    Caption = 'Col 3:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblC4: TLabel
    Tag = 10
    Left = 568
    Top = 424
    Width = 35
    Height = 13
    Caption = 'Col 4:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblC5: TLabel
    Tag = 11
    Left = 568
    Top = 448
    Width = 35
    Height = 13
    Caption = 'Col 5:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblC1T: TLabel
    Left = 616
    Top = 352
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC2T: TLabel
    Left = 616
    Top = 376
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC3T: TLabel
    Left = 616
    Top = 400
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC4T: TLabel
    Left = 616
    Top = 424
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC5T: TLabel
    Left = 616
    Top = 448
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC1Score: TLabel
    Left = 744
    Top = 352
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC2Score: TLabel
    Left = 744
    Top = 376
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC3Score: TLabel
    Left = 744
    Top = 400
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC4Score: TLabel
    Left = 744
    Top = 424
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC5Score: TLabel
    Left = 744
    Top = 448
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblTotal: TLabel
    Left = 640
    Top = 520
    Width = 68
    Height = 13
    Caption = 'Your Score:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblTot: TLabel
    Left = 744
    Top = 520
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblHi: TLabel
    Left = 568
    Top = 544
    Width = 67
    Height = 13
    Caption = 'High Score:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblHiScore: TLabel
    Left = 744
    Top = 544
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblHiName: TLabel
    Left = 640
    Top = 544
    Width = 81
    Height = 13
    AutoSize = False
    Caption = 'lblHiName'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblBonusTime: TLabel
    Tag = 13
    Left = 568
    Top = 184
    Width = 72
    Height = 13
    Caption = 'Bonus Time:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblTime: TLabel
    Left = 744
    Top = 184
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR6: TLabel
    Tag = 6
    Left = 568
    Top = 328
    Width = 40
    Height = 13
    Caption = 'Row 6:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblR6T: TLabel
    Left = 616
    Top = 328
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblR6Score: TLabel
    Left = 744
    Top = 328
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object line1: TShape
    Left = 568
    Top = 515
    Width = 193
    Height = 1
    Pen.Color = clWhite
    Visible = False
  end
  object lblC6: TLabel
    Tag = 12
    Left = 568
    Top = 472
    Width = 35
    Height = 13
    Caption = 'Col 6:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object lblC6T: TLabel
    Left = 616
    Top = 472
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC6Score: TLabel
    Left = 744
    Top = 472
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC7: TLabel
    Tag = 14
    Left = 568
    Top = 496
    Width = 35
    Height = 13
    Caption = 'Col 7:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC7T: TLabel
    Left = 616
    Top = 496
    Width = 110
    Height = 13
    AutoSize = False
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblC7Score: TLabel
    Left = 744
    Top = 496
    Width = 7
    Height = 13
    Caption = '0'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblKeeps: TLabel
    Tag = 13
    Left = 560
    Top = 64
    Width = 40
    Height = 13
    Caption = 'Keeps:'
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
    OnClick = Yahtzee_lblClick
  end
  object Die1: TImage
    Tag = 1
    Left = 13
    Top = 714
    Width = 32
    Height = 32
    AutoSize = True
    Transparent = True
    OnMouseUp = Yahtzee_MouseUp
  end
  object Die2: TImage
    Tag = 2
    Left = 67
    Top = 714
    Width = 32
    Height = 32
    AutoSize = True
    Transparent = True
    OnMouseUp = Yahtzee_MouseUp
  end
  object Die3: TImage
    Tag = 3
    Left = 121
    Top = 714
    Width = 32
    Height = 32
    AutoSize = True
    Transparent = True
    OnMouseUp = Yahtzee_MouseUp
  end
  object Die4: TImage
    Tag = 4
    Left = 175
    Top = 714
    Width = 32
    Height = 32
    AutoSize = True
    Transparent = True
    OnMouseUp = Yahtzee_MouseUp
  end
  object Die5: TImage
    Tag = 5
    Left = 216
    Top = 714
    Width = 29
    Height = 32
    AutoSize = True
    Transparent = True
    OnMouseUp = Yahtzee_MouseUp
  end
  object Image1: TImage
    Left = 288
    Top = 472
    Width = 105
    Height = 105
  end
  object Cursorcard: TImage
    Left = 409
    Top = 619
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      07544269746D617076020000424D760200000000000076000000280000002000
      0000200000000100040000000000000200000000000000000000100000001000
      000000000000000080000080000000808000800000008000800080800000C0C0
      C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF000000008888888888888888888800000000000FFFFFFFFFFFFFFFFFFFF880
      00000000FFFFFFFFFFFFFFFFFFFFFF8800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      00000000FFFFFFFFFFFFFFFFFFFFFFF800000000FFFFFFFFFFFFFFFFFFFFFFF8
      000000000FFFFFFFFFFFFFFFFFFFFF800000000000FFFFFFFFFFFFFFFFFFF800
      0000}
    Visible = False
  end
  object PicClip1: TPicClip
    Left = 408
    Top = 664
    Width = 60
    Height = 15
    AutoSize = True
    Picture.Data = {
      07544269746D617056020000424D560200000000000076000000280000003C00
      00000F0000000100040000000000E00100000000000000000000100000001000
      000000000000000080000080000000808000800000008000800080800000C0C0
      C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00FFFFF00000FFFFFFFFFFFF9FFFFFFFFFFFFFF9FFFFFFFFFFFF00000FFFFF
      0000FFFFFF000FFFFFFFFFFFF999FFFFFFFFFFFF999FFFFFFFFFFFF000FFFFFF
      0000FF000FF0FF000FFFFFFF99999FFFFFFFFFF99999FFFFFF0000FF0FF0000F
      0000F00000F0F00000FFFFFD99999DFFFFFFFF9999999FFFF000000F0F000000
      0000000000000000000FFFD9999999DFFFFFF999999999FFF000000000000000
      0000000000000000000FFFD9999999DFFFFF9999999999DFF000000000000000
      0000000000000000000FF99999999999FFFD99999999999DF000000000000000
      0000F0000000000000FF9999999999999FFD99999999999DFF0000000000000F
      0000FF000F000F000FFFF99999999999FFD9999999999999DF0000000000000F
      0000FFFFF00000FFFFFFFFD9999999DFFF999999999999999FF00000000000FF
      0000FFFF0000000FFFFFFFD9999999DFFF999999999999999FFF000000000FFF
      0000FFFF0000000FFFFFFFFD99999DFFFF999999999999999FFFF0000000FFFF
      0000FFFF0000000FFFFFFFFF99999FFFFF9999999F9999999FFFFF00000FFFFF
      0000FFFFF00000FFFFFFFFFFF999FFFFFFF99999DFD99999FFFFFFF000FFFFFF
      0000FFFFFF000FFFFFFFFFFFFF9FFFFFFFFF999DFFFD999FFFFFFFFF0FFFFFFF
      0000}
    Visible = False
    Rows = 1
    Cols = 4
  end
  object PicClip2: TPicClip
    Left = 408
    Top = 688
    Width = 143
    Height = 28
    AutoSize = True
    Picture.Data = {
      07544269746D617056080000424D560800000000000076000000280000008F00
      00001C0000000100040000000000E00700000000000000000000100000001000
      000000000000000080000080000000808000800000008000800080800000C0C0
      C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF99FFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF999FFFFFFFFFFFFF09999FFF9999FF9999999FFFFF999
      99FFFFFFFF9999FFFFF99999FFFFFF99999FFFFFFF99FFFFFFFF99999FFFFFF9
      999FFFFF99FF9999FFFFF9999FFFFFFF99999FFFF9999F9999F09999FFF9999F
      F9999999FFFF9999999FFFFFFF9999FFFF9999999FFFF9999999FFFFFF99FFFF
      FFF9999999FFFFF99999FFFF99F999999FFF999999FFFFF9999999FFF9999F99
      99F0F99FFFFF99FFF99FFF99FFFF99FFF99FFFFFFFF99FFFFF99FFF99FFFF99F
      FF99FFFFFF99FFFFFFF99FFF99FFFFFFFF999FFF99F99FF99FFF99FF99FFFFF9
      9FFF99FFFF99FFF99FF0F999999999FFF999FF99FFFFFFFFF99FFFFFFFF99FFF
      FF99FFF99FFFF99FFF99FFFFFF99FFFFFFF99FFF99FFFFFFFFF99FFF99F99FF9
      9FFF99FF99FFFFF99FFF99FFFF99FF99FFF0FF9999999FFFFF999FFFFFFFFFFF
      F99FFF999999999FFFFFFFF99FFFF99FFF99FFFFFFF99FFFFFF99FFF99FFFFF9
      99999FFF99F99FF99FFFFFFF99FFFFF99FFF99FFFF99F99FFFF0FF99FFF99FFF
      FFF999FFFFFFF999999FFF999999999FFFFFFFF99FFFF99FFF99FFFFFFF99FFF
      FFF9999999FFFF9999999FFF99F99FF99FFFFFFF99FFFFF99FFF99FFFF9999FF
      FFF0FFF99F99FFFFFFFF999FFFFFF99999FFFF999FF99FFFFF9999999FFFF999
      9999FFFFFFF99FFFFFFF99999FFFFF99FFF99FFF99F99FF99FFFFFFF99FFFFF9
      9FFF99FFFF999FFFFFF0FFF99F99FFFFFFFFF999FFFFFF99FFFFFFF999F99FFF
      FF999999FFFFF999999FFFFFFFFF99FFFFF99FFF99FFFF99FFF99FFF99F99FF9
      9FFFFFFF99FFFFF99FFF99FFFF9999FFFFF0FFFF999FFFFFFFFFFF99FFFFFFF9
      9FFFFFFF99999FFFFF99FFFFFFFFF99FFFFFFFFFFFFF99FFFFF99FFF99FFFF99
      FFF99FFF99F99FF99FFFFFFF99FFFFF99FFF99FFFF99F99FFFF0FFFF999FFFFF
      F99FFF99FFFF99FF99FFFFFFF9999FFFFF99FFFFFFFFF999FFFFFFFF99FFF99F
      FFF99FFF99FFFF99FFF99FFF99F99FF99FFFFFFF99FFFFF99FFF99FFFF99FF99
      FFF0FFFFF9FFFFFFF9999999FFFF9999999FFFFFFF999FFFFF9999999FFFFF99
      999FFFFF9999999FFFF9999999FFFF9999999FFF99F999999FFFFFF9999FFFF9
      999999FFF9999F9999F0FFFFF9FFFFFFFF99999FFFFF9999999FFFFFFFF99FFF
      FF9999999FFFFFF9999FFFFF9999999FFFFF99999FFFFFF99999FFFF99FF9999
      FFFFFFF9999FFFFF99999FFFF9999F9999F0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFF0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFF
      FFF00000FFF0000FF0000000FFFFF00000FFFFFFFF0000FFFFF00000FFFFFF00
      000FFFFFFF00FFFFFFFF00000FFFFFF0000FFFFF00FF0000FFFFF0000FFFFFFF
      00000FFFF0000F0000F00000FFF0000FF0000000FFFF0000000FFFFFFF0000FF
      FF0000000FFFF0000000FFFFFF00FFFFFFF0000000FFFFF00000FFFF00F00000
      0FFF000000FFFFF0000000FFF0000F0000F0F00FFFFF00FFF00FFF00FFFF00FF
      F00FFFFFFFF00FFFFF00FFF00FFFF00FFF00FFFFFF00FFFFFFF00FFF00FFFFFF
      FF000FFF00F00FF00FFF00FF00FFFFF00FFF00FFFF00FFF00FF0F000000000FF
      F000FF00FFFFFFFFF00FFFFFFFF00FFFFF00FFF00FFFF00FFF00FFFFFF00FFFF
      FFF00FFF00FFFFFFFFF00FFF00F00FF00FFF00FF00FFFFF00FFF00FFFF00FF00
      FFF0FF0000000FFFFF000FFFFFFFFFFFF00FFF000000000FFFFFFFF00FFFF00F
      FF00FFFFFFF00FFFFFF00FFF00FFFFF000000FFF00F00FF00FFFFFFF00FFFFF0
      0FFF00FFFF00F00FFFF0FF00FFF00FFFFFF000FFFFFFF000000FFF000000000F
      FFFFFFF00FFFF00FFF00FFFFFFF00FFFFFF0000000FFFF0000000FFF00F00FF0
      0FFFFFFF00FFFFF00FFF00FFFF0000FFFFF0FFF00F00FFFFFFFF000FFFFFF000
      00FFFF000FF00FFFFF0000000FFFF0000000FFFFFFF00FFFFFFF00000FFFFF00
      FFF00FFF00F00FF00FFFFFFF00FFFFF00FFF00FFFF000FFFFFF0FFF00F00FFFF
      FFFFF000FFFFFF00FFFFFFF000F00FFFFF000000FFFFF000000FFFFFFFFF00FF
      FFF00FFF00FFFF00FFF00FFF00F00FF00FFFFFFF00FFFFF00FFF00FFFF0000FF
      FFF0FFFF000FFFFFFFFFFF00FFFFFFF00FFFFFFF00000FFFFF00FFFFFFFFF00F
      FFFFFFFFFFFF00FFFFF00FFF00FFFF00FFF00FFF00F00FF00FFFFFFF00FFFFF0
      0FFF00FFFF00F00FFFF0FFFF000FFFFFF00FFF00FFFF00FF00FFFFFFF0000FFF
      FF00FFFFFFFFF000FFFFFFFF00FFF00FFFF00FFF00FFFF00FFF00FFF00F00FF0
      0FFFFFFF00FFFFF00FFF00FFFF00FF00FFF0FFFFF0FFFFFFF0000000FFFF0000
      000FFFFFFF000FFFFF0000000FFFFF00000FFFFF0000000FFFF0000000FFFF00
      00000FFF00F000000FFFFFF0000FFFF0000000FFF0000F0000F0FFFFF0FFFFFF
      FF00000FFFFF0000000FFFFFFFF00FFFFF0000000FFFFFF0000FFFFF0000000F
      FFFF00000FFFFFF00000FFFF00FF0000FFFFFFF0000FFFFF00000FFFF0000F00
      00F0}
    Visible = False
    Rows = 2
    Cols = 13
  end
  object DeckofCards: TListBox
    Left = 8
    Top = 608
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26'
      '27'
      '28'
      '29'
      '30'
      '31'
      '32'
      '33'
      '34'
      '35'
      '36'
      '37'
      '38'
      '39'
      '40'
      '41'
      '42'
      '43'
      '44'
      '45'
      '46'
      '47'
      '48'
      '49'
      '50'
      '51'
      '52')
    TabOrder = 0
    Visible = False
  end
  object ShuffledDeck: TListBox
    Left = 136
    Top = 608
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 1
    Visible = False
  end
  object UsedCards: TListBox
    Left = 264
    Top = 608
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
  object btn_Roll: TBitBtn
    Left = 456
    Top = 496
    Width = 89
    Height = 41
    Caption = 'Roll'
    TabOrder = 3
    Visible = False
    OnClick = btn_RollClick
    Glyph.Data = {
      86080000424D86080000000000003600000028000000190000001C0000000100
      1800000000005008000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6B
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF0000DC0000DC6B6BFF0000B90000B9FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000DC0000DC0000DC0000DC6B6BFF0000B90000B900
      00B90000B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000DC0000DC0000DC0000DC0000DC00
      00DC6B6BFF0000B90000B90000B90000B90000B90000B9FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0AFFFFFFFFFFFFFFFFFFFFFFFF0000DC0000DC0000DC00
      00DC0000DC0000DC0000DC0000DC6B6BFF0000B90000B90000B90000B90000B9
      0000B90000B90000B9FFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFFFFFFF0000DC00
      00DC0000DC0000DC0000DC0000DC0000DCD4FFFF0000DC0000DC6B6BFF0000B9
      D4FFFF0000B90000B90000B90000B90000B90000B90000B90000B9FFFFFFFFFF
      FFA50000DC0000DC0000DC0000DC0000DC0000DC0000DC0000DCD4FFFFD4FFFF
      0000DC0000DC6B6BFF0000B9D4FFFFD4FFFF0000B90000B90000B90000B90000
      B90000B90000B90000B90000B9EA0000DC0000DC0000DC0000DC0000DC0000DC
      0000DC0000DCD4FFFF0000DC0000DC0000DC6B6BFF0000B90000B9D4FFFF0000
      B90000B9D4FFFF0000B90000B90000B90000B90000B90000B9970000DC0000DC
      0000DC0000DC0000DC0000DC0000DC0000DC0000DC0000DC0000DC0000DC6B6B
      FF0000B90000B90000B90000B90000B9D4FFFFD4FFFF0000B90000B90000B900
      00B90000B9070000DC0000DC0000DC0000DC0000DC0000DC0000DC0000DC0000
      DC0000DC0000DC0000DC6B6BFF0000B90000B90000B90000B90000B90000B9D4
      FFFF0000B90000B9D4FFFF0000B90000B9280000DC0000DC0000DC0000DC0000
      DC0000DCD4FFFF0000DC0000DC0000DC0000DC0000DC6B6BFF0000B90000B900
      00B90000B90000B90000B90000B90000B90000B9D4FFFFD4FFFF0000B90B0000
      DC0000DC0000DC0000DC0000DCD4FFFFD4FFFF0000DC0000DC0000DC0000DC00
      00DC6B6BFF0000B9D4FFFF0000B90000B90000B90000B90000B90000B90000B9
      0000B9D4FFFF0000B9F80000DC0000DC0000DC0000DC0000DCD4FFFF0000DC00
      00DC0000DC0000DC0000DC0000DC6B6BFF0000B9D4FFFFD4FFFF0000B90000B9
      0000B90000B90000B90000B90000B90000B90000B9730000DC0000DC0000DC00
      00DC0000DC0000DC0000DC0000DC0000DC0000DC0000DC0000DC6B6BFF0000B9
      0000B9D4FFFF0000B90000B9D4FFFF0000B90000B90000B90000B90000B90000
      B9E80000DC0000DC0000DC0000DC0000DC0000DC0000DC0000DC0000DC0000DC
      0000DC0000DC6B6BFF0000B90000B90000B90000B90000B9D4FFFFD4FFFF0000
      B90000B90000B90000B90000B9A50000DC0000DC0000DCD4FFFF0000DC0000DC
      0000DC0000DC0000DC0000DC0000DC6B6BFF6B6BFF6B6BFF0000B90000B90000
      B90000B90000B9D4FFFF0000B90000B9D4FFFF0000B90000B9E40000DC0000DC
      D4FFFFD4FFFF0000DC0000DC0000DC0000DC0000DC6B6BFF6B6BFF0000FE0000
      FE0000FE6B6BFF6B6BFF0000B90000B90000B90000B90000B90000B9D4FFFFD4
      FFFF0000B9000000DC0000DCD4FFFF0000DC0000DC0000DC0000DC6B6BFF6B6B
      FF0000FE0000FE0000FE0000FE0000FE0000FE0000FE6B6BFF6B6BFF0000B900
      00B90000B90000B90000B9D4FFFF0000B9060000DC0000DC0000DC0000DC0000
      DC6B6BFF6B6BFF0000FE0000FE0000FE0000FED4FFFFD4FFFFD4FFFF0000FE00
      00FE0000FE0000FE6B6BFF6B6BFF0000B90000B90000B90000B90000B9FD0000
      DC0000DC0000DC6B6BFF6B6BFF0000FE0000FE0000FE0000FE0000FE0000FE00
      00FED4FFFF0000FE0000FE0000FE0000FE0000FE0000FE0000FE6B6BFF6B6BFF
      0000B90000B90000B9420000DC6B6BFF6B6BFF0000FE0000FE0000FED4FFFF00
      00FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE
      D4FFFF0000FE0000FE0000FE6B6BFF6B6BFF0000B9F66B6BFF0000FE0000FE00
      00FE0000FED4FFFFD4FFFFD4FFFF0000FE0000FE0000FED4FFFFD4FFFFD4FFFF
      0000FE0000FE0000FED4FFFFD4FFFFD4FFFF0000FE0000FE0000FE0000FE6B6B
      FF8DFFFFFFFFFFFF0000FE0000FE0000FE0000FED4FFFF0000FE0000FE0000FE
      0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FED4FFFF0000FE0000
      FE0000FE0000FEFFFFFFFFFFFFBAFFFFFFFFFFFFFFFFFFFFFFFF0000FE0000FE
      0000FE0000FE0000FE0000FE0000FE0000FED4FFFF0000FE0000FE0000FE0000
      FE0000FE0000FE0000FE0000FEFFFFFFFFFFFFFFFFFFFFFFFF02FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000FE0000FE0000FE0000FE0000FED4FFFFD4FF
      FFD4FFFF0000FE0000FE0000FE0000FE0000FEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      FE0000FE0000FE0000FE0000FE0000FE0000FE0000FE0000FEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FE0000FE0000FE0000FE0000FEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF15FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFB}
  end
  object CheckBox1: TCheckBox
    Left = 567
    Top = 36
    Width = 22
    Height = 17
    Color = clBtnFace
    ParentColor = False
    TabOrder = 4
    Visible = False
  end
  object CheckBox2: TCheckBox
    Left = 613
    Top = 36
    Width = 22
    Height = 17
    Color = clBtnFace
    ParentColor = False
    TabOrder = 5
    Visible = False
  end
  object CheckBox3: TCheckBox
    Left = 659
    Top = 36
    Width = 22
    Height = 17
    Color = clBtnFace
    ParentColor = False
    TabOrder = 6
    Visible = False
  end
  object CheckBox4: TCheckBox
    Left = 705
    Top = 36
    Width = 22
    Height = 17
    Color = clBtnFace
    ParentColor = False
    TabOrder = 7
    Visible = False
  end
  object CheckBox5: TCheckBox
    Left = 751
    Top = 36
    Width = 22
    Height = 17
    Color = clBtnFace
    ParentColor = False
    TabOrder = 8
    Visible = False
  end
  object ProgressBar1: TProgressBar
    Left = 408
    Top = 8
    Width = 150
    Height = 13
    Min = 0
    Max = 13
    TabOrder = 9
    Visible = False
  end
  object XPMenu1: TXPMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    OverrideOwnerDraw = False
    Gradient = True
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 288
    Top = 744
  end
  object MainMenu1: TMainMenu
    OwnerDraw = True
    Left = 256
    Top = 712
    object File1: TMenuItem
      Caption = 'File'
      object NewGame1: TMenuItem
        Caption = '&New Game'
        ShortCut = 16462
        OnClick = NewGame1Click
      end
      object SelectGame1: TMenuItem
        Caption = '&Select Game'
        ShortCut = 16467
        OnClick = SelectGame1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Close1: TMenuItem
        Caption = '&Close'
        ShortCut = 16451
        OnClick = Close1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Undo1: TMenuItem
        Caption = '&Undo'
        Enabled = False
        ShortCut = 16474
      end
      object Redo1: TMenuItem
        Caption = '&Redo'
        Enabled = False
        ShortCut = 49242
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Configure1: TMenuItem
        Caption = '&Configure'
        ShortCut = 113
        OnClick = Configure1Click
      end
    end
    object View1: TMenuItem
      Caption = '&View'
      object HiScores1: TMenuItem
        Caption = '&Hi-Scores'
        ShortCut = 114
        OnClick = HiScores1Click
      end
      object Redraw1: TMenuItem
        Caption = 'Redraw'
        ShortCut = 116
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object Rules1: TMenuItem
        Caption = 'How to Play'
        object PokerSquares1: TMenuItem
          Caption = 'Poker Squares'
          Hint = '0'
          OnClick = PokerSquares1Click
        end
        object Pyramid1: TMenuItem
          Caption = 'Pyramid'
          Hint = '1'
          OnClick = PokerSquares1Click
        end
        object Yahtzee1: TMenuItem
          Caption = 'Yahtzee'
          Hint = '2'
          OnClick = PokerSquares1Click
        end
      end
      object About1: TMenuItem
        Caption = '&About'
        ShortCut = 112
        OnClick = About1Click
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 288
    Top = 712
  end
  object PDJSound1: TPDJSound
    Version = 
      'Version 1.00, Copyright © 2000-2001 by Peric, E-mail: pericddn@p' +
      'tt.yu'
    Left = 256
    Top = 744
  end
  object ImagesDice: TImageList
    Height = 32
    Width = 32
    Left = 320
    Top = 710
    Bitmap = {
      494C010106000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C300A6A6A6008E8E8E007575
      75006F6F6F007171710071717100717171007171710071717100727272007272
      7200757575007777770077777700777777007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007474740080808000A9A9A900C9C9C900C3C3C300A6A6A6008E8E8E007575
      75006F6F6F007171710071717100717171007171710071717100727272007272
      7200757575007777770077777700777777007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007474740080808000A9A9A900C9C9C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6A6A60094949400B3B3B300B6B6
      B600B9B9B900BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00C0C0C000ABABAB0070707000AFAFAF00A6A6A60094949400B3B3B300B6B6
      B600B9B9B900BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00C0C0C000ABABAB0070707000AFAFAF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009E9E9E00D8D8D800EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00F1F1F100D9D9D900959595008B8B8B009E9E9E00D8D8D800EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00F1F1F100D9D9D900959595008B8B8B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E8E8E800FCFCFC00FBFB
      FB00FAFAFA00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FBFB
      FB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FCFC
      FC00FCFCFC00E9E9E900B0B0B00088888800ABABAB00E8E8E800FBFBFB00FDFD
      FD00FFFFFF00FFFFFF00F8F8F800FCFCFC00FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FEFEFE00FFFFFF00FFFFFF00F6F6F600FFFFFF00FFFFFF00FFFF
      FF00FBFBFB00E9E9E900B0B0B000888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA00E6E6E600FCFCFC00FBFB
      FB00FFFFFF00FFFFFF00D5D5D500BABABA00C7C7C700FAFAFA00FFFFFF00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00FFFFFF00E7E7E700BEBEBE00C7C7C700FAFAFA00FFFFFF00FCFC
      FC00FCFCFC00E8E8E800AFAFAF0088888800AAAAAA00E6E6E600FAFAFA00FFFF
      FF00F3F3F300BFBFBF0095959500A6A6A600DDDDDD00FCFCFC00FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FEFEFE00FFFFFF00E5E5E500AFAFAF008E8E8E00AEAEAE00E2E2E200FDFD
      FD00FBFBFB00E8E8E800AFAFAF00888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA00E6E6E600FCFCFC00FDFD
      FD00FBFBFB00ABABAB004C4C4C00363636003B3B3B007F7F7F00F2F2F200FFFF
      FF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFD
      FD00FEFEFE00C4C4C40066666600393939003A3A3A0083838300E7E7E700FFFF
      FF00FCFCFC00E8E8E800AFAFAF0088888800AAAAAA00E6E6E600FCFCFC00F5F5
      F50089898900121212000A0A0A000404040039393900C4C4C400FCFCFC00FEFE
      FE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00DDDDDD0054545400090909000D0D0D000404040045454500D5D5
      D500FCFCFC00E8E8E800AFAFAF00888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E6E6E600FCFCFC00FFFF
      FF00C3C3C300343434005151510075757500333333001515150099999900FCFC
      FC00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00E8E8E800464646003C3C3C0076767600393939001111110083838300F6F6
      F600FEFEFE00E8E8E800AFAFAF0088888800ABABAB00E6E6E600FCFCFC00B7B7
      B7000F0F0F00303030004E4E4E0030303000000000004D4D4D00E3E3E300FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00FAFAFA00868686000000000042424200565656002E2E2E00000000007B7B
      7B00FCFCFC00E8E8E800AFAFAF00888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E6E6E600FCFCFC00FFFF
      FF00989898001111110061616100797979003B3B3B001919190059595900F8F8
      F800FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00C7C7C700282828004C4C4C007E7E7E00494949001010100049494900DDDD
      DD00FFFFFF00E8E8E800AFAFAF0088888800ABABAB00E6E6E600F9F9F9009898
      98000000000039393900535353002F2F2F000F0F0F0026262600D1D1D100FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00F5F5F500727272000404040046464600565656002A2A2A00060606005454
      5400FFFFFF00E8E8E800AFAFAF00888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E7E7E700FCFCFC00FFFF
      FF009C9C9C000F0F0F002F2F2F003333330024242400181818005F5F5F00F8F8
      F800FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00BFBFBF00272727002A2A2A00373737002B2B2B001111110049494900DADA
      DA00FFFFFF00E8E8E800AFAFAF0088888800ABABAB00E7E7E700FFFFFF00BABA
      BA0006060600101010001B1B1B00161616000000000056565600E9E9E900FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FEFE
      FE00FDFDFD009696960000000000111111001818180011111100000000008383
      8300FFFFFF00E8E8E800AFAFAF00888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E7E7E700FCFCFC00FFFF
      FF00CDCDCD003D3D3D001010100017171700151515001B1B1B00ACACAC00FEFE
      FE00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00ECECEC003C3C3C001515150018181800161616000B0B0B0081818100FAFA
      FA00FEFEFE00E8E8E800B0B0B00088888800ABABAB00E7E7E700FEFEFE00F1F1
      F1008C8C8C001313130000000000000000003C3C3C00C9C9C900FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00E6E6E600707070000F0F0F00000000000505050059595900E1E1
      E100FFFFFF00E8E8E800B0B0B000888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E7E7E700FCFCFC00FCFC
      FC00FDFDFD00C0C0C00047474700202020003434340093939300F7F7F700FEFE
      FE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFD
      FD00FFFFFF00BFBFBF004D4D4D001D1D1D001E1E1E0070707000EDEDED00FFFF
      FF00FDFDFD00E8E8E800B0B0B00088888800ABABAB00E7E7E700FDFDFD00FFFF
      FF00FAFAFA00BEBEBE00A0A0A000A7A7A700D9D9D900FFFFFF00FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FFFFFF00F0F0F000B9B9B900A0A0A000B1B1B100EAEAEA00FFFF
      FF00FCFCFC00E8E8E800B0B0B000888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E7E7E700FCFCFC00FCFC
      FC00FEFEFE00FEFEFE00F5F5F500F0F0F000F2F2F200FBFBFB00FEFEFE00FCFC
      FC00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFC
      FC00FCFCFC00FFFFFF00F2F2F200D2D2D200D7D7D700FBFBFB00FFFFFF00FCFC
      FC00FDFDFD00E8E8E800B0B0B00088888800ABABAB00E7E7E700FDFDFD00FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FCFCFC00E8E8E800B0B0B000888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFCFC00FCFC
      FC00FEFEFE00FFFFFF00E5E5E500D1D1D100D8D8D800F7F7F700FFFFFF00FDFD
      FD00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FDFDFD00FDFD
      FD00FEFEFE00FFFFFF00FEFEFE00FFFFFF00FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FDFD
      FD00FCFCFC00E9E9E900B0B0B000898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFD
      FD00FCFCFC00C9C9C90056565600242424003030300086868600ECECEC00FFFF
      FF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FDFDFD00FFFF
      FF00FFFFFF00DDDDDD00A5A5A500BEBEBE00FEFEFE00FFFFFF00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FFFFFF00FFFFFF00C3C3C3009E9E9E00C5C5C500FFFFFF00FFFF
      FF00FCFCFC00E9E9E900B0B0B000898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00E3E3E300484848004747470074747400404040001111110091919100F9F9
      F900FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FFFFFF00F2F2
      F200838383001F1F1F00272727002222220047474700D8D8D800FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00E1E1E100626262002020200026262600202020005C5C5C00ECEC
      EC00FCFCFC00E9E9E900B0B0B000898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FEFE
      FE00B0B0B000151515005C5C5C008E8E8E004E4E4E001717170046464600E2E2
      E200FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FEFEFE00BEBE
      BE0014141400313131004E4E4E00333333000909090071717100EEEEEE00FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FEFE
      FE00FFFFFF00939393000B0B0B004B4B4B005151510026262600060606009191
      9100FCFCFC00E9E9E900B0B0B000898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FEFE
      FE00AEAEAE00101010003131310039393900292929001717170043434300E2E2
      E200FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700F6F6F6009090
      9000090909003D3D3D005F5F5F00333333000909090045454500DDDDDD00FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00F3F3F300777777000A0A0A00515151005656560027272700090909006262
      6200FCFCFC00E9E9E900B1B1B100898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00E2E2E2003B3B3B00121212001D1D1D00191919000B0B0B008C8C8C00F8F8
      F800FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FDFDFD00ABAB
      AB0004040400191919001B1B1B00191919000404040061616100E9E9E900FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00FAFAFA008383830004040400191919001B1B1B0016161600040404008080
      8000FDFDFD00E9E9E900B1B1B100898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFD
      FD00FCFCFC00C1C1C100424242000D0D0D00202020007B7B7B00EAEAEA00FFFF
      FF00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FFFFFF00EEEE
      EE006F6F6F000D0D0D00131313001010100023232300BEBEBE00FFFFFF00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00D2D2D2004040400012121200141414000B0B0B004E4E4E00ECEC
      EC00FDFDFD00E9E9E900B1B1B100898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFCFC00FCFC
      FC00FEFEFE00FFFFFF00E1E1E100CACACA00D2D2D200F6F6F600FFFFFF00FDFD
      FD00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FDFDFD00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FDFDFD00FFFF
      FF00FEFEFE00B1B1B1006E6E6E0088888800E5E5E500FFFFFF00FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FFFFFF00FBFBFB00AFAFAF007B7B7B009E9E9E00FAFAFA00FFFF
      FF00FDFDFD00E9E9E900B1B1B100898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E7E7E700FCFCFC00FCFC
      FC00FFFFFF00FAFAFA00BFBFBF0096969600B3B3B300F1F1F100FFFFFF00FCFC
      FC00FCFCFC00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFC
      FC00FDFDFD00FDFDFD00D3D3D30094949400A9A9A900E7E7E700FFFFFF00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FDFDFD00FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FDFDFD00E9E9E900B1B1B100898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E7E7E700FCFCFC00FFFF
      FF00F5F5F50083838300353535003A3A3A002E2E2E0053535300EBEBEB00FFFF
      FF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFD
      FD00FCFCFC00A0A0A0003C3C3C003D3D3D002B2B2B004B4B4B00CCCCCC00FFFF
      FF00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FDFDFD00FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FDFDFD00E9E9E900B1B1B100898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E7E7E700FCFCFC00FFFF
      FF00B5B5B5002E2E2E006262620077777700343434001C1C1C0090909000FCFC
      FC00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00E1E1E100313131004848480082828200474747000D0D0D006E6E6E00F7F7
      F700FFFFFF00E9E9E900B1B1B10089898900ACACAC00E7E7E700FDFDFD00FFFF
      FF00F5F5F500BABABA00A6A6A600ACACAC00D7D7D700FEFEFE00FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FEFEFE00FFFFFF00E1E1E100B2B2B200A9A9A900ABABAB00E7E7E700FFFF
      FF00FFFFFF00E9E9E900B1B1B100898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E7E7E700FCFCFC00FFFF
      FF00969696000F0F0F00626262006E6E6E00343434001818180054545400F8F8
      F800FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00BEBEBE002A2A2A00454545006F6F6F00474747001313130043434300D4D4
      D400FFFFFF00EBEBEB00B2B2B20089898900ACACAC00E7E7E700FFFFFF00F1F1
      F100838383001C1C1C0000000000060606003A3A3A00C3C3C300FDFDFD00FEFE
      FE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00D5D5D5005959590010101000040404000505050059595900E2E2
      E200FFFFFF00EBEBEB00B2B2B200898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E7E7E700FCFCFC00FFFF
      FF009B9B9B000A0A0A00292929002B2B2B00222222001212120067676700F9F9
      F900FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00CBCBCB001F1F1F00232323002B2B2B0026262600090909004D4D4D00E3E3
      E300FFFFFF00EBEBEB00B2B2B20089898900ACACAC00E7E7E700FDFDFD00B3B3
      B3000B0B0B003A3A3A0067676700393939000000000054545400E6E6E600FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00F9F9F9008888880006060600474747005454540029292900000000008888
      8800FFFFFF00EBEBEB00B2B2B200898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E8E8E800FCFCFC00FEFE
      FE00D4D4D400474747000404040009090900050505002E2E2E00C5C5C500FEFE
      FE00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFE
      FE00F3F3F300656565000B0B0B000B0B0B000606060014141400A0A0A000FFFF
      FF00FEFEFE00EBEBEB00B2B2B20089898900ACACAC00E8E8E800F8F8F8009191
      9100000000004040400064646400333333000D0D0D002B2B2B00D4D4D400FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FFFF
      FF00F1F1F1006E6E6E0009090900474747005151510026262600060606005353
      5300FDFDFD00EBEBEB00B2B2B200898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC00E8E8E800FCFCFC00FCFC
      FC00FFFFFF00D1D1D1006F6F6F005C5C5C006C6C6C00B7B7B700FFFFFF00FEFE
      FE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FFFFFF00EBEBEB007F7F7F005D5D5D0064646400A6A6A600F5F5F500FEFE
      FE00FDFDFD00EBEBEB00B2B2B20089898900ACACAC00E8E8E800FDFDFD00B2B2
      B20000000000131313001B1B1B00181818000000000056565600E9E9E900FFFF
      FF00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FEFE
      FE00FAFAFA008E8E8E0000000000171717001B1B1B0013131300000000008B8B
      8B00FDFDFD00EBEBEB00B2B2B200898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00E8E8E800FCFCFC00FCFC
      FC00FCFCFC00FFFFFF00FEFEFE00F0F0F000FFFFFF00FFFFFF00FDFDFD00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FFFFFF00FFFFFF00F0F0F000F9F9F900FFFFFF00FFFFFF00FCFC
      FC00FDFDFD00EBEBEB00B2B2B20089898900ADADAD00E8E8E800FFFFFF00F1F1
      F100818181000404040000000000000000003B3B3B00C9C9C900FEFEFE00FEFE
      FE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FFFFFF00DDDDDD005656560000000000000000000000000064646400E6E6
      E600FEFEFE00EBEBEB00B2B2B200898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE00E9E9E900FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FEFEFE00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FDFD
      FD00FEFEFE00ECECEC00B3B3B3008A8A8A00AEAEAE00E9E9E900FEFEFE00FFFF
      FF00F3F3F300C5C5C500BABABA00BEBEBE00DDDDDD00FDFDFD00FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FEFEFE00E6E6E600C1C1C100BABABA00C0C0C000ECECEC00FEFE
      FE00FEFEFE00ECECEC00B3B3B3008A8A8A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE00ECECEC00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEEEEE00B2B2B20093939300AEAEAE00ECECEC00FEFEFE00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00FFFFFF00EEEEEE00B2B2B200939393000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0B000D2D2D200ECECEC00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00D9D9D90099999900ACACAC00B0B0B000D2D2D200ECECEC00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00D9D9D90099999900ACACAC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1C1C100B2B2B200ABABAB00A5A5
      A500A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A7A7A700A0A0A000B1B1B100C6C6C600C1C1C100B2B2B200ABABAB00A5A5
      A500A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A7A7A700A0A0A000B1B1B100C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C300A6A6A6008E8E8E007575
      75006F6F6F007171710071717100717171007171710071717100727272007272
      7200757575007777770077777700777777007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007474740080808000A9A9A900C9C9C900C3C3C300A6A6A6008E8E8E007575
      75006F6F6F007171710071717100717171007171710071717100727272007272
      7200757575007777770077777700777777007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007474740080808000A9A9A900C9C9C900C3C3C300A6A6A6008E8E8E007575
      75006F6F6F007171710071717100717171007171710071717100727272007272
      7200757575007777770077777700777777007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007474740080808000A9A9A900C9C9C900C3C3C300A6A6A6008E8E8E007575
      75006F6F6F007171710071717100717171007171710071717100727272007272
      7200757575007777770077777700777777007777770077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      77007474740080808000A9A9A900C9C9C900A6A6A60094949400B3B3B300B6B6
      B600B9B9B900BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00C0C0C000ABABAB0070707000AFAFAF00A6A6A60094949400B3B3B300B6B6
      B600B9B9B900BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00C0C0C000ABABAB0070707000AFAFAF00A6A6A60094949400B3B3B300B6B6
      B600B9B9B900BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00C0C0C000ABABAB0070707000AFAFAF00A6A6A60094949400B3B3B300B6B6
      B600B9B9B900BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00C0C0C000ABABAB0070707000AFAFAF009E9E9E00D8D8D800EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00F1F1F100D9D9D900959595008B8B8B009E9E9E00D8D8D800EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00F1F1F100D9D9D900959595008B8B8B009E9E9E00D8D8D800EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00F1F1F100D9D9D900959595008B8B8B009E9E9E00D8D8D800EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00F1F1F100D9D9D900959595008B8B8B00ABABAB00E8E8E800FCFCFC00FBFB
      FB00FAFAFA00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FBFB
      FB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FCFC
      FC00FCFCFC00E9E9E900B0B0B00088888800ABABAB00E8E8E800FCFCFC00FBFB
      FB00FAFAFA00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FBFB
      FB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FCFC
      FC00FCFCFC00E9E9E900B0B0B00088888800ABABAB00E8E8E800FCFCFC00FBFB
      FB00FAFAFA00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FBFB
      FB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FCFC
      FC00FCFCFC00E9E9E900B0B0B00088888800ABABAB00E8E8E800F7F7F700FAFA
      FA00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FCFCFC00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FBFBFB00E9E9E900B0B0B00088888800AAAAAA00E6E6E600FCFCFC00FBFB
      FB00F9F9F900F9F9F900FAFAFA00FAFAFA00FAFAFA00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FCFCFC00E8E8E800AFAFAF0088888800AAAAAA00E6E6E600FCFCFC00F9F9
      F900FAFAFA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FFFFFF00FFFFFF00F1F1F100FEFEFE00FFFFFF00FCFCFC00FBFB
      FB00FCFCFC00E8E8E800AFAFAF0088888800AAAAAA00E6E6E600FCFCFC00FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FCFC
      FC00FCFCFC00E8E8E800AFAFAF0088888800AAAAAA00E6E6E600F6F6F600FAFA
      FA00FBFBFB00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFC
      FC00FBFBFB00E8E8E800AFAFAF0088888800AAAAAA00E6E6E600FCFCFC00FDFD
      FD00FAFAFA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FCFCFC00E8E8E800AFAFAF0088888800AAAAAA00E6E6E600FCFCFC00F9F9
      F900FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FFFFFF00E6E6E60086868600656565006E6E6E00BEBEBE00FFFFFF00FDFD
      FD00FCFCFC00E8E8E800AFAFAF0088888800AAAAAA00E6E6E600FCFCFC00FBFB
      FB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00FFFFFF00F9F9F900D2D2D200E3E3E300FFFFFF00FFFFFF00FCFC
      FC00FCFCFC00E8E8E800AFAFAF0088888800AAAAAA00E6E6E600F7F7F700FAFA
      FA00FFFFFF00FDFDFD00C9C9C900A0A0A000C4C4C400FFFFFF00FFFFFF00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FEFEFE00FFFFFF00BFBFBF008A8A8A0093939300D9D9D900FFFFFF00FDFD
      FD00FCFCFC00E8E8E800AFAFAF0088888800ABABAB00E6E6E600FCFCFC00FFFF
      FF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FEFEFE00E8E8E800AFAFAF0088888800ABABAB00E6E6E600FCFCFC00F9F9
      F900FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FDFD
      FD00EDEDED0065656500151515001B1B1B000A0A0A0024242400B6B6B600FFFF
      FF00FEFEFE00E8E8E800AFAFAF0088888800ABABAB00E6E6E600FCFCFC00FBFB
      FB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FFFFFF00D1D1D10066666600434343004B4B4B0086868600E5E5E500FFFF
      FF00FEFEFE00E8E8E800AFAFAF0088888800ABABAB00E6E6E600F7F7F700FEFE
      FE00F5F5F5008C8C8C0030303000232323003737370071717100F5F5F500FEFE
      FE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFE
      FE00FEFEFE008383830037373700171717001D1D1D0040404000BEBEBE00FFFF
      FF00FCFCFC00E8E8E800AFAFAF0088888800ABABAB00E6E6E600FCFCFC00FFFF
      FF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FFFFFF00E8E8E800AFAFAF0088888800ABABAB00E6E6E600FCFCFC00F9F9
      F900FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FEFE
      FE00AEAEAE001B1B1B003B3B3B0070707000373737000000000061616100F3F3
      F300FFFFFF00E8E8E800AFAFAF0088888800ABABAB00E6E6E600FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFE
      FE00E7E7E700484848001D1D1D0042424200262626000909090083838300F9F9
      F900FFFFFF00E8E8E800AFAFAF0088888800ABABAB00E6E6E600F7F7F700FFFF
      FF00B1B1B1001D1D1D003C3C3C0059595900282828001919190096969600FCFC
      FC00FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00D1D1D100282828003535350074747400393939000A0A0A0059595900E6E6
      E600FFFFFF00E8E8E800AFAFAF0088888800ABABAB00E7E7E700FCFCFC00FFFF
      FF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FFFFFF00E8E8E800AFAFAF0088888800ABABAB00E7E7E700FCFCFC00FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FDFD
      FD008C8C8C001B1B1B002F2F2F004D4D4D002A2A2A000606060047474700DDDD
      DD00FFFFFF00E8E8E800AFAFAF0088888800ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FEFE
      FE00A9A9A90019191900393939006C6C6C00404040000B0B0B0045454500DDDD
      DD00FFFFFF00E8E8E800AFAFAF0088888800ABABAB00E7E7E700FBFBFB00FDFD
      FD007B7B7B000B0B0B004646460053535300272727001313130053535300F8F8
      F800FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FEFE
      FE00A6A6A6001F1F1F002B2B2B0045454500292929000F0F0F003C3C3C00D2D2
      D200FFFFFF00E8E8E800AFAFAF0088888800ABABAB00E7E7E700FCFCFC00FFFF
      FF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FEFEFE00E8E8E800B0B0B00088888800ABABAB00E7E7E700FCFCFC00FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FEFE
      FE00C1C1C1001D1D1D001313130018181800151515000000000067676700F8F8
      F800FEFEFE00E8E8E800B0B0B00088888800ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00C3C3C300222222001E1E1E002E2E2E0022222200060606004C4C4C00E1E1
      E100FEFEFE00E8E8E800B0B0B00088888800ABABAB00E7E7E700F9F9F900FFFF
      FF0098989800040404001D1D1D001F1F1F0016161600101010008A8A8A00FCFC
      FC00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00D5D5D50026262600141414001D1D1D0019191900000000006C6C6C00FDFD
      FD00FFFFFF00E8E8E800B0B0B00088888800ABABAB00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E8E8E800B0B0B00088888800ABABAB00E7E7E700FCFCFC00FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FDFD
      FD00F7F7F7007272720015151500111111000909090042424200D4D4D400FFFF
      FF00FDFDFD00E8E8E800B0B0B00088888800ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00F7F7F7006C6C6C00161616000F0F0F000F0F0F00191919009E9E9E00FDFD
      FD00FDFDFD00E8E8E800B0B0B00088888800ABABAB00E7E7E700F9F9F900FFFF
      FF00F1F1F10065656500050505000F0F0F000B0B0B0043434300F0F0F000FFFF
      FF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFD
      FD00FDFDFD00A6A6A600191919000D0D0D00060606004B4B4B00DADADA00FFFF
      FF00FCFCFC00E8E8E800B0B0B00088888800ABABAB00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FEFEFE00FCFC
      FC00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFC
      FC00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E8E8E800B0B0B00088888800ABABAB00E7E7E700FCFCFC00FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FEFEFE00F5F5F500B5B5B5008686860094949400DADADA00FFFFFF00FBFB
      FB00FDFDFD00E8E8E800B0B0B00088888800ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FEFEFE00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FCFC
      FC00FFFFFF00F1F1F100969696004E4E4E0064646400BEBEBE00FBFBFB00FDFD
      FD00FDFDFD00E8E8E800B0B0B00088888800ABABAB00E7E7E700F9F9F900FCFC
      FC00FFFFFF00FFFFFF00C3C3C3008C8C8C00B3B3B300FEFEFE00FFFFFF00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FFFFFF00FFFFFF00C9C9C900DADADA00FFFFFF00FFFFFF00FCFC
      FC00FCFCFC00E8E8E800B0B0B00088888800ABABAB00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FCFC
      FC00FEFEFE00FFFFFF00E5E5E500D1D1D100D8D8D800F7F7F700FFFFFF00FDFD
      FD00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FDFDFD00FEFEFE00FDFDFD00FDFDFD00FEFEFE00FCFCFC00FBFB
      FB00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FFFFFF00FFFFFF00F0F0F000F5F5F500FFFFFF00FFFFFF00FCFC
      FC00FCFCFC00FFFFFF00FDFDFD00FAFAFA00FBFBFB00FFFFFF00FEFEFE00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700F9F9F900FCFC
      FC00FCFCFC00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FCFC
      FC00FCFCFC00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FDFD
      FD00FCFCFC00C9C9C90056565600242424003030300086868600ECECEC00FFFF
      FF00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFD
      FD00FFFFFF00F0F0F000A0A0A0006767670079797900BEBEBE00F9F9F900FEFE
      FE00FCFCFC00FCFCFC00FDFDFD00FEFEFE00FEFEFE00FDFDFD00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700F9F9F900FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FFFF
      FF00E3E3E300484848004747470074747400404040001111110091919100F9F9
      F900FEFEFE00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00F2F2F2006F6F6F0022222200373737002323230020202000A9A9A900FBFB
      FB00FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700F9F9F900FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FDFDFD00FEFE
      FE00B0B0B000151515005C5C5C008E8E8E004E4E4E001717170046464600E2E2
      E200FFFFFF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FFFF
      FF00BABABA00161616004646460079797900454545001010100049494900E5E5
      E500FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B0B0B00089898900ABABAB00E7E7E700F9F9F900FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00E9E9E900B0B0B00089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FDFDFD00FEFE
      FE00AEAEAE00101010003131310039393900292929001717170043434300E2E2
      E200FFFFFF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FFFF
      FF00B5B5B5000B0B0B0033333300474747002B2B2B00121212003B3B3B00E1E1
      E100FFFFFF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FBFBFB00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FFFF
      FF00E2E2E2003B3B3B00121212001D1D1D00191919000B0B0B008C8C8C00F8F8
      F800FFFFFF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00E6E6E6004545450004040400101010000F0F0F00000000008C8C8C00F7F7
      F700FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FBFBFB00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FDFD
      FD00FCFCFC00C1C1C100424242000D0D0D00202020007B7B7B00EAEAEA00FFFF
      FF00FDFDFD00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFD
      FD00FFFFFF00D1D1D100656565002B2B2B004545450090909000F0F0F000FFFF
      FF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FBFBFB00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FCFC
      FC00FEFEFE00FFFFFF00E1E1E100CACACA00D2D2D200F6F6F600FFFFFF00FDFD
      FD00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFCFC00FCFC
      FC00FEFEFE00FFFFFF00F0F0F000D4D4D400E1E1E100FFFFFF00FFFFFF00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FBFBFB00FCFC
      FC00FCFCFC00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FFFFFF00FCFC
      FC00FCFCFC00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFC
      FC00FDFDFD00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FDFDFD00FDFDFD00F7F7F700F5F5F500F6F6F600FDFDFD00FCFCFC00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FFFFFF00FAFAFA00D1D1D100A9A9A900CACACA00F9F9F900FFFFFF00FCFC
      FC00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FBFBFB00FCFC
      FC00FFFFFF00F0F0F0009B9B9B006262620096969600F1F1F100FFFFFF00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FFFFFF00FFFFFF00ACACAC006C6C6C0080808000DDDDDD00FFFFFF00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FCFC
      FC00FDFDFD00C3C3C300595959002E2E2E004E4E4E00BABABA00FDFDFD00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF00F6F6F600808080002B2B2B002E2E2E002B2B2B0071717100F1F1F100FFFF
      FF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF00E3E3E3005656560016161600262626001C1C1C0036363600E1E1E100FFFF
      FF00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFE
      FE00F8F8F8007171710020202000262626001C1C1C0022222200ABABAB00FFFF
      FF00FDFDFD00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FFFFFF00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF00C9C9C9003A3A3A0024242400303030001D1D1D0028282800C9C9C900FEFE
      FE00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FFFFFF00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF00A9A9A9001B1B1B003D3D3D0059595900272727001B1B1B0093939300FCFC
      FC00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FFFFFF00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF009B9B9B000D0D0D004E4E4E00646464002E2E2E001717170076767600FBFB
      FB00FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00CACACA0022222200373737006E6E6E00373737000D0D0D0051515100E3E3
      E300FFFFFF00E9E9E900B1B1B10089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FFFFFF00EBEBEB00B2B2B20089898900ACACAC00E7E7E700FCFCFC00FDFD
      FD008A8A8A0004040400545454006E6E6E002B2B2B00101010006C6C6C00F9F9
      F900FDFDFD00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FFFFFF00EBEBEB00B2B2B20089898900ACACAC00E7E7E700FCFCFC00FEFE
      FE007B7B7B000606060051515100616161002B2B2B001313130056565600F8F8
      F800FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FFFFFF00EBEBEB00B2B2B20089898900ACACAC00E7E7E700FFFFFF00F7F7
      F700747474000A0A0A00393939003D3D3D00202020001212120056565600F8F8
      F800FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00B7B7B700202020002828280040404000282828000D0D0D0042424200D8D8
      D800FFFFFF00EBEBEB00B2B2B20089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FFFFFF00EBEBEB00B2B2B20089898900ACACAC00E7E7E700FCFCFC00F9F9
      F9007777770006060600363636003B3B3B00202020001111110053535300F7F7
      F700FDFDFD00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FFFFFF00EBEBEB00B2B2B20089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF009B9B9B0006060600131313001B1B1B0011111100090909008C8C8C00FCFC
      FC00FEFEFE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FFFFFF00EBEBEB00B2B2B20089898900ACACAC00E7E7E700FCFCFC00FFFF
      FF00B1B1B100151515000D0D0D00111111000D0D0D0013131300A9A9A900FDFD
      FD00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FFFF
      FF00E5E5E500373737000B0B0B00111111000F0F0F000000000076767600FAFA
      FA00FFFFFF00EBEBEB00B2B2B20089898900ACACAC00E8E8E800FCFCFC00FEFE
      FE00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FEFEFE00EBEBEB00B2B2B20089898900ACACAC00E8E8E800FCFCFC00FFFF
      FF00AFAFAF000D0D0D000D0D0D0019191900101010000606060096969600FCFC
      FC00FCFCFC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FEFEFE00EBEBEB00B2B2B20089898900ACACAC00E8E8E800FCFCFC00FEFE
      FE00E5E5E500727272001F1F1F00121212001F1F1F005D5D5D00E5E5E500FEFE
      FE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FEFEFE00EBEBEB00B2B2B20089898900ACACAC00E8E8E800FCFCFC00FEFE
      FE00F8F8F80096969600353535002A2A2A003737370077777700F3F3F300FEFE
      FE00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FDFD
      FD00FFFFFF00C6C6C6004B4B4B00292929002E2E2E0064646400DADADA00FFFF
      FF00FDFDFD00EBEBEB00B2B2B20089898900ACACAC00E8E8E800FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00EBEBEB00B2B2B20089898900ACACAC00E8E8E800FCFCFC00FEFE
      FE00ECECEC00838383001D1D1D0000000000151515006C6C6C00EDEDED00FEFE
      FE00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00EBEBEB00B2B2B20089898900ACACAC00E8E8E800FCFCFC00FDFD
      FD00FFFFFF00F5F5F500B5B5B50093939300ABABAB00F9F9F900FFFFFF00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00EBEBEB00B2B2B20089898900ACACAC00E8E8E800FCFCFC00FCFC
      FC00FFFFFF00FFFFFF00E1E1E100BFBFBF00D8D8D800FFFFFF00FFFFFF00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00FFFFFF00F6F6F600BEBEBE00D1D1D100FFFFFF00FFFFFF00FCFC
      FC00FDFDFD00EBEBEB00B2B2B20089898900ADADAD00E8E8E800FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00EBEBEB00B2B2B20089898900ADADAD00E8E8E800FCFCFC00FDFD
      FD00FFFFFF00F9F9F900BABABA0095959500ADADAD00F6F6F600FFFFFF00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFC
      FC00FDFDFD00EBEBEB00B2B2B20089898900ADADAD00E8E8E800FCFCFC00FDFD
      FD00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00EBEBEB00B2B2B20089898900ADADAD00E8E8E800FDFDFD00FDFD
      FD00FCFCFC00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FCFCFC00FCFC
      FC00FEFEFE00EBEBEB00B2B2B20089898900AEAEAE00E9E9E900FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FEFEFE00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FDFD
      FD00FEFEFE00ECECEC00B3B3B3008A8A8A00AEAEAE00E9E9E900FDFDFD00FFFF
      FF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00ECECEC00B3B3B3008A8A8A00AEAEAE00E9E9E900FDFDFD00FDFD
      FD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FEFEFE00ECECEC00B3B3B3008A8A8A00AEAEAE00E9E9E900FDFDFD00FDFD
      FD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FEFEFE00ECECEC00B3B3B3008A8A8A00AEAEAE00ECECEC00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEEEEE00B2B2B20093939300AEAEAE00ECECEC00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEEEEE00B2B2B20093939300AEAEAE00ECECEC00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEEEEE00B2B2B20093939300AEAEAE00ECECEC00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEEEEE00B2B2B20093939300B0B0B000D2D2D200ECECEC00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00D9D9D90099999900ACACAC00B0B0B000D2D2D200ECECEC00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00D9D9D90099999900ACACAC00B0B0B000D2D2D200ECECEC00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00D9D9D90099999900ACACAC00B0B0B000D2D2D200ECECEC00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00D9D9D90099999900ACACAC00C1C1C100B2B2B200ABABAB00A5A5
      A500A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A7A7A700A0A0A000B1B1B100C6C6C600C1C1C100B2B2B200ABABAB00A5A5
      A500A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A7A7A700A0A0A000B1B1B100C6C6C600C1C1C100B2B2B200ABABAB00A5A5
      A500A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A7A7A700A0A0A000B1B1B100C6C6C600C1C1C100B2B2B200ABABAB00A5A5
      A500A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600A7A7A700A0A0A000B1B1B100C6C6C600424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
