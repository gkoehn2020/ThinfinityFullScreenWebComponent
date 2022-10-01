object UIMain: TUIMain
  Left = 0
  Top = 0
  Caption = 'Web Component Demo'
  ClientHeight = 85
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    290
    85)
  PixelsPerInch = 96
  TextHeight = 13
  object btnStart: TButton
    Left = 8
    Top = 8
    Width = 274
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Start long running work...'
    TabOrder = 0
    OnClick = btnStartClick
    ExplicitWidth = 368
  end
end
