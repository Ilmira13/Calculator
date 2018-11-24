object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculator'
  ClientHeight = 506
  ClientWidth = 846
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 72
    Top = 233
    Width = 399
    Height = 21
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 315
    Top = 315
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 315
    Top = 346
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 315
    Top = 377
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 315
    Top = 284
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 396
    Top = 377
    Width = 75
    Height = 25
    Caption = '='
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 396
    Top = 315
    Width = 75
    Height = 25
    Caption = 'Clear all'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button8: TButton
    Left = 234
    Top = 377
    Width = 75
    Height = 25
    Caption = '1'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 72
    Top = 346
    Width = 75
    Height = 25
    Caption = '2'
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 153
    Top = 346
    Width = 75
    Height = 25
    Caption = '3'
    TabOrder = 9
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 234
    Top = 346
    Width = 75
    Height = 25
    Caption = '4'
    TabOrder = 10
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 72
    Top = 315
    Width = 75
    Height = 25
    Caption = '5'
    TabOrder = 11
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 153
    Top = 315
    Width = 75
    Height = 25
    Caption = '6'
    TabOrder = 12
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 234
    Top = 315
    Width = 75
    Height = 25
    Caption = '7'
    TabOrder = 13
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 72
    Top = 284
    Width = 75
    Height = 25
    Caption = '8'
    TabOrder = 14
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 153
    Top = 284
    Width = 75
    Height = 25
    Caption = '9'
    TabOrder = 15
    OnClick = Button16Click
  end
  object Button18: TButton
    Left = 153
    Top = 377
    Width = 75
    Height = 25
    Caption = '.'
    TabOrder = 16
    OnClick = Button18Click
  end
  object Button19: TButton
    Left = 396
    Top = 284
    Width = 75
    Height = 25
    Caption = '<-'
    TabOrder = 17
    OnClick = Button19Click
  end
  object Button17: TButton
    Left = 72
    Top = 377
    Width = 75
    Height = 25
    Caption = '0'
    TabOrder = 18
    OnClick = Button17Click
  end
  object Button7: TButton
    Left = 396
    Top = 346
    Width = 75
    Height = 25
    Caption = 'Hi'
    TabOrder = 19
    OnClick = Button7Click
  end
  object Edit2: TEdit
    Left = 72
    Top = 193
    Width = 399
    Height = 21
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 20
    OnKeyPress = Edit2KeyPress
  end
end
