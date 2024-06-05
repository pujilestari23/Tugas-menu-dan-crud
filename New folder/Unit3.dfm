object Form3: TForm3
  Left = 338
  Top = 140
  Width = 928
  Height = 480
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 48
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Edit1: TEdit
    Left = 104
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 64
    Top = 120
    Width = 97
    Height = 41
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 112
    Width = 121
    Height = 41
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 440
    Top = 112
    Width = 113
    Height = 41
    Caption = 'DELET'
    TabOrder = 3
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 200
    Width = 249
    Height = 145
    DataSource = DataModule4.DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
end
