object DockWindow_Form: TDockWindow_Form
  Left = 353
  Top = 167
  Width = 250
  Height = 248
  BorderStyle = bsSizeToolWin
  Caption = 'Dockable Window'
  Color = clBtnFace
  DockSite = True
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 242
    Height = 221
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object lbDockClient1: TJvDockClient
    LRDockWidth = 100
    TBDockHeight = 100
    DirectDrag = False
    ShowHint = True
    EnableCloseButton = True
    DockStyle = Main_Form.JvDockVIDStyle1
    Left = 64
    Top = 64
  end
end
