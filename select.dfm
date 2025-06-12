object fmGameType: TfmGameType
  Left = 240
  Top = 275
  BorderStyle = bsDialog
  Caption = 'Select Game'
  ClientHeight = 258
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 369
    Height = 209
    ItemHeight = 13
    Items.Strings = (
      'Place'#39'em (soon)'
      'Poker Squares'
      'Pyramid'
      'Spider (soon)'
      'Yahtzee')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 304
    Top = 224
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 224
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
    OnClick = Button2Click
  end
end
