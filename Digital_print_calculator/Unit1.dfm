object gun: Tgun
  Left = 231
  Top = 171
  Width = 498
  Height = 309
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'GUNDELIK HESABAT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 18
    Width = 87
    Height = 13
    Caption = 'Bu gunku hesabat'
  end
  object Status: TLabel
    Left = 24
    Top = 296
    Width = 3
    Height = 13
  end
  object btnSend: TButton
    Left = 160
    Top = 240
    Width = 169
    Height = 25
    Caption = 'Bagla'
    TabOrder = 0
    OnClick = btnSendClick
  end
  object txtBody: TMemo
    Left = 16
    Top = 32
    Width = 457
    Height = 201
    TabOrder = 1
  end
end
