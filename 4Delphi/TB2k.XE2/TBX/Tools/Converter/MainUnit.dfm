object ConverterForm: TConverterForm
  Left = 191
  Top = 108
  AutoScroll = False
  Caption = 'TBX Converter'
  ClientHeight = 474
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object TBDock1: TTBDock
    Left = 0
    Top = 0
    Width = 783
    Height = 26
    object TBXToolbar2: TTBXToolbar
      Left = 0
      Top = 0
      Align = alLeft
      Caption = 'TBXToolbar'
      DockableTo = [dpTop, dpBottom]
      FullSize = True
      Images = ImageList1
      TabOrder = 0
      object TBXVisibilityToggleItem2: TTBXVisibilityToggleItem
        Caption = 'Files'
        Control = FilePanel
        DisplayMode = nbdmImageAndText
        ImageIndex = 0
        OnClick = TBXVisibilityToggleItem2Click
      end
      object TBXVisibilityToggleItem1: TTBXVisibilityToggleItem
        Caption = 'Settings'
        Control = Panel1
        DisplayMode = nbdmImageAndText
        ImageIndex = 1
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object TBXLabelItem1: TTBXLabelItem
        Caption = ' Conversion type: '
      end
      object ConversionCombo: TTBXComboBoxItem
        EditWidth = 220
        OnChange = ConversionComboChange
        DropDownList = True
        MinListWidth = 220
        Strings.Strings = (
          'Convert TB2K>TBX & Upgrade TBX')
        OnPopup = ConversionComboPopup
      end
    end
  end
  object TBDock2: TTBDock
    Left = 0
    Top = 465
    Width = 783
    Height = 9
    Position = dpBottom
  end
  object TBDock3: TTBDock
    Left = 0
    Top = 26
    Width = 197
    Height = 439
    Position = dpLeft
    object FilePanel: TTBXDockablePanel
      Left = 0
      Top = 0
      Caption = 'Files'
      DockedWidth = 193
      SupportedDocks = [dkStandardDock, dkMultiDock]
      TabOrder = 0
      Visible = False
      object ShellTreeView: TShellTreeView
        Left = 0
        Top = 0
        Width = 193
        Height = 417
        AutoContextMenus = False
        ObjectTypes = [otFolders, otNonFolders]
        Root = 'rfDesktop'
        UseShellImages = True
        OnAddFolder = ShellTreeViewAddFolder
        Align = alClient
        AutoRefresh = False
        DragMode = dmAutomatic
        Indent = 19
        ParentColor = False
        ParentShowHint = False
        RightClickSelect = True
        ShowHint = True
        ShowRoot = False
        TabOrder = 0
        OnDblClick = ShellTreeViewDblClick
        OnEditing = ShellTreeViewEditing
      end
    end
  end
  object TBDock4: TTBDock
    Left = 577
    Top = 26
    Width = 206
    Height = 439
    Position = dpRight
    object Panel1: TTBXDockablePanel
      Left = 0
      Top = 0
      Caption = 'Settings'
      DockedWidth = 202
      SupportedDocks = [dkStandardDock, dkMultiDock]
      TabOrder = 0
      object TBXPageScroller1: TTBXPageScroller
        Left = 0
        Top = 0
        Width = 202
        Height = 417
        Align = alClient
        AutoRange = True
        DoubleBuffered = False
        TabOrder = 0
        object TBXLabel1: TTBXLabel
          Left = 0
          Top = 0
          Width = 202
          Height = 22
          Align = alTop
          Caption = 'Convert components:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          ParentFont = False
          Underline = True
        end
        object ConversionsPanel: TTBXAlignmentPanel
          Left = 0
          Top = 22
          Width = 202
          Height = 33
          Align = alTop
          AutoSize = True
          Constraints.MinHeight = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Margins.Left = 16
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          ParentFont = False
          TabOrder = 1
        end
        object TBXLabel2: TTBXLabel
          Left = 0
          Top = 82
          Width = 202
          Height = 22
          Align = alTop
          Caption = 'File filter:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          ParentFont = False
          Underline = True
        end
        object TBXAlignmentPanel1: TTBXAlignmentPanel
          Left = 0
          Top = 104
          Width = 202
          Height = 101
          Align = alTop
          AutoSize = True
          Margins.Left = 16
          Margins.Top = 8
          Margins.Right = 16
          Margins.Bottom = 8
          TabOrder = 3
          object FilterPas: TTBXCheckBox
            Left = 16
            Top = 8
            Width = 170
            Height = 17
            Align = alTop
            Caption = 'Pascal source (*.pas)'
            State = cbChecked
            TabOrder = 0
            Wrapping = twEndEllipsis
            OnChange = FilterChange
          end
          object FilterHpp: TTBXCheckBox
            Left = 16
            Top = 25
            Width = 170
            Height = 17
            Align = alTop
            Caption = 'C++ header files (*.h; *.hpp)'
            State = cbChecked
            TabOrder = 1
            Wrapping = twEndEllipsis
            OnChange = FilterChange
          end
          object FilterCPP: TTBXCheckBox
            Left = 16
            Top = 42
            Width = 170
            Height = 17
            Align = alTop
            Caption = 'C++ source (*.cpp)'
            State = cbChecked
            TabOrder = 2
            Wrapping = twEndEllipsis
            OnChange = FilterChange
          end
          object FilterDFM: TTBXCheckBox
            Left = 16
            Top = 59
            Width = 170
            Height = 17
            Align = alTop
            Caption = 'Text form files (*.dfm)'
            State = cbChecked
            TabOrder = 3
            Wrapping = twEndEllipsis
            OnChange = FilterChange
          end
          object FilterBinaryDFM: TTBXCheckBox
            Left = 16
            Top = 76
            Width = 170
            Height = 17
            Align = alTop
            Caption = 'Binary form files (*.dfm)'
            State = cbChecked
            TabOrder = 4
            Wrapping = twEndEllipsis
            OnChange = FilterChange
          end
        end
        object TBXAlignmentPanel3: TTBXAlignmentPanel
          Left = 0
          Top = 55
          Width = 202
          Height = 27
          Align = alTop
          AutoSize = True
          Margins.Left = 8
          Margins.Right = 8
          Margins.Bottom = 8
          TabOrder = 4
          object TBXToolbar1: TTBXToolbar
            Left = 8
            Top = 0
            Width = 186
            Height = 19
            Align = alTop
            Caption = 'TBXToolbar1'
            ShrinkMode = tbsmWrap
            TabOrder = 0
            object TBXItem1: TTBXItem
              Caption = 'Select &All'
              OnClick = TBXItem1Click
            end
            object TBXSeparatorItem1: TTBXSeparatorItem
              Blank = True
            end
            object TBXItem2: TTBXItem
              Caption = 'Select &None'
              OnClick = TBXItem2Click
            end
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 197
    Top = 26
    Width = 380
    Height = 439
    Align = alClient
    TabOrder = 4
    object Memo: TMemo
      Left = 1
      Top = 1
      Width = 378
      Height = 326
      Align = alClient
      Ctl3D = True
      Lines.Strings = (
        'Waiting for files to convert')
      ParentCtl3D = False
      TabOrder = 0
      OnDragDrop = MemoDragDrop
      OnDragOver = MemoDragOver
    end
    object Memo1: TMemo
      Left = 1
      Top = 327
      Width = 378
      Height = 111
      Align = alBottom
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'Usage info:'
        '  1. Choose conversion type, components and file filer'
        '  2. Select files to convert using either of two methods'
        
          '      2.1. Drag and drop files with source code and DFM files fr' +
          'om Windows Explorer'
        
          '      2.2. Open the Files panel and double click the file to con' +
          'vert'
        
          '  3. Original files are automatically saved with extensions ##00' +
          '1, ##002, etc.'
        '  4. Manually update '#39'uses'#39' clause in source files')
      ParentColor = True
      ParentFont = False
      TabOrder = 1
    end
  end
  object TBXSwitcher1: TTBXSwitcher
    Theme = 'OfficeXP'
    FlatMenuStyle = fmsDisable
    Left = 164
    Top = 64
  end
  object ImageList1: TImageList
    Left = 476
    Top = 8
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000800000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000808080000000000080000000FFFFFF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000080808000800000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF00C0C0C000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000080808000800000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000FFFFFF008080800000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000808080000000000080000000FFFFFF008000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000080808000800000008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF00C0C0C000C0C0C000C0C0C00000000000FFFFFF000000
      0000FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000080808000800000008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF00C0C0C00000000000FFFFFF0000000000C0C0C000C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000808080000000000080000000FFFFFF008000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000080808000800000008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC7FFF8000000000C441FF0000000000
      DC7FFE0100000000DFFFFE0100000000DC7FC00100000000C441C00300000000
      DC7FC00300000000DFFFC00300000000DC7FC00300000000C441C00300000000
      DC7FC00300000000DFFFC00300000000807FC00300000000807FC00300000000
      807FC00300000000807FFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object XPManifest1: TXPManifest
    Left = 520
    Top = 8
  end
end
