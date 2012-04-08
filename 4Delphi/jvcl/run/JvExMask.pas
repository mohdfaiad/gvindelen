{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvExMask.pas, released on 2004-01-04

The Initial Developer of the Original Code is Andreas Hausladen [Andreas dott Hausladen att gmx dott de]
Portions created by Andreas Hausladen are Copyright (C) 2004 Andreas Hausladen.
All Rights Reserved.

Contributor(s): -

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.delphi-jedi.org

Known Issues:
-----------------------------------------------------------------------------}
// $Id: JvExMask.pas 57 2011-05-29 00:35:46Z andypulsar $

unit JvExMask;

{$I jvcl.inc}
{MACROINCLUDE JvExControls.macros}

{*****************************************************************************
 * WARNING: Do not edit this file.
 * This file is autogenerated from the source in devtools/JvExVCL/src.
 * If you do it despite this warning your changes will be discarded by the next
 * update of this file. Do your changes in the template files.
 ****************************************************************************}
{$D-} // do not step into this unit

interface

uses
  Windows, Messages, Types,
  SysUtils, Classes, Graphics, Controls, Forms, Mask,
  {$IFDEF UNITVERSIONING}
  JclUnitVersioning,
  {$ENDIF UNITVERSIONING}
  JvConsts, JvTypes, JvThemes, JVCLVer, JvExControls;

type
  TJvExCustomMaskEdit = class(TCustomMaskEdit, IJvExControl)
  private
    FAboutJVCL: TJVCLAboutInfo;
    FHintColor: TColor;
    FMouseOver: Boolean;
    FHintWindowClass: THintWindowClass;
    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;
    FOnParentColorChanged: TNotifyEvent;
    function BaseWndProc(Msg: Cardinal; WParam: WPARAM = 0; LParam: LPARAM = 0): LRESULT; overload;
    function BaseWndProc(Msg: Cardinal; WParam: WPARAM; LParam: TObject): LRESULT; overload;
    function BaseWndProcEx(Msg: Cardinal; WParam: WPARAM; var StructLParam): LRESULT;
  protected
    procedure WndProc(var Msg: TMessage); override;
    procedure FocusChanged(AControl: TWinControl); dynamic;
    procedure VisibleChanged; reintroduce; dynamic;
    procedure EnabledChanged; reintroduce; dynamic;
    procedure TextChanged; reintroduce; virtual;
    procedure ColorChanged; reintroduce; dynamic;
    procedure FontChanged; reintroduce; dynamic;
    procedure ParentFontChanged; reintroduce; dynamic;
    procedure ParentColorChanged; reintroduce; dynamic;
    procedure ParentShowHintChanged; reintroduce; dynamic;
    function WantKey(Key: Integer; Shift: TShiftState): Boolean; virtual;
    function HintShow(var HintInfo: THintInfo): Boolean; reintroduce; dynamic;
    function HitTest(X, Y: Integer): Boolean; reintroduce; virtual;
    procedure MouseEnter(AControl: TControl); reintroduce; dynamic;
    procedure MouseLeave(AControl: TControl); reintroduce; dynamic;
    property MouseOver: Boolean read FMouseOver write FMouseOver;
    property HintColor: TColor read FHintColor write FHintColor default clDefault;
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
    property OnParentColorChange: TNotifyEvent read FOnParentColorChanged write FOnParentColorChanged;
  public
    constructor Create(AOwner: TComponent); override;
    property HintWindowClass: THintWindowClass read FHintWindowClass write FHintWindowClass;
  published
    property AboutJVCL: TJVCLAboutInfo read FAboutJVCL write FAboutJVCL stored False;
  private
    FDotNetHighlighting: Boolean;
  protected
    procedure BoundsChanged; reintroduce; virtual;
    procedure CursorChanged; reintroduce; dynamic;
    procedure ShowingChanged; reintroduce; dynamic;
    procedure ShowHintChanged; reintroduce; dynamic;
    procedure ControlsListChanging(Control: TControl; Inserting: Boolean); reintroduce; dynamic;
    procedure ControlsListChanged(Control: TControl; Inserting: Boolean); reintroduce; dynamic;
    procedure GetDlgCode(var Code: TDlgCodes); virtual;
    procedure FocusSet(PrevWnd: THandle); virtual;
    procedure FocusKilled(NextWnd: THandle); virtual;
    function DoEraseBackground(Canvas: TCanvas; Param: LPARAM): Boolean; virtual;
  {$IFDEF JVCLThemesEnabledD6}
  private
    function GetParentBackground: Boolean;
  protected
    procedure SetParentBackground(Value: Boolean); virtual;
    property ParentBackground: Boolean read GetParentBackground write SetParentBackground;
  {$ENDIF JVCLThemesEnabledD6}
  published
    property DotNetHighlighting: Boolean read FDotNetHighlighting write FDotNetHighlighting default False;
  private
    FClipboardCommands: TJvClipboardCommands;
  protected
    procedure SetClipboardCommands(const Value: TJvClipboardCommands); virtual;
    property ClipboardCommands: TJvClipboardCommands read FClipboardCommands write SetClipboardCommands default [caCopy..caUndo];
  private
    FBeepOnError: Boolean;
  protected
    procedure DoBeepOnError; dynamic;
    procedure SetBeepOnError(Value: Boolean); virtual;
    property BeepOnError: Boolean read FBeepOnError write SetBeepOnError default True;
  end;

  TJvExMaskEdit = class(TMaskEdit, IJvExControl)
  private
    FAboutJVCL: TJVCLAboutInfo;
    FHintColor: TColor;
    FMouseOver: Boolean;
    FHintWindowClass: THintWindowClass;
    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;
    FOnParentColorChanged: TNotifyEvent;
    function BaseWndProc(Msg: Cardinal; WParam: WPARAM = 0; LParam: LPARAM = 0): LRESULT; overload;
    function BaseWndProc(Msg: Cardinal; WParam: WPARAM; LParam: TObject): LRESULT; overload;
    function BaseWndProcEx(Msg: Cardinal; WParam: WPARAM; var StructLParam): LRESULT;
  protected
    procedure WndProc(var Msg: TMessage); override;
    procedure FocusChanged(AControl: TWinControl); dynamic;
    procedure VisibleChanged; reintroduce; dynamic;
    procedure EnabledChanged; reintroduce; dynamic;
    procedure TextChanged; reintroduce; virtual;
    procedure ColorChanged; reintroduce; dynamic;
    procedure FontChanged; reintroduce; dynamic;
    procedure ParentFontChanged; reintroduce; dynamic;
    procedure ParentColorChanged; reintroduce; dynamic;
    procedure ParentShowHintChanged; reintroduce; dynamic;
    function WantKey(Key: Integer; Shift: TShiftState): Boolean; virtual;
    function HintShow(var HintInfo: THintInfo): Boolean; reintroduce; dynamic;
    function HitTest(X, Y: Integer): Boolean; reintroduce; virtual;
    procedure MouseEnter(AControl: TControl); reintroduce; dynamic;
    procedure MouseLeave(AControl: TControl); reintroduce; dynamic;
    property MouseOver: Boolean read FMouseOver write FMouseOver;
    property HintColor: TColor read FHintColor write FHintColor default clDefault;
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
    property OnParentColorChange: TNotifyEvent read FOnParentColorChanged write FOnParentColorChanged;
  public
    constructor Create(AOwner: TComponent); override;
    property HintWindowClass: THintWindowClass read FHintWindowClass write FHintWindowClass;
  published
    property AboutJVCL: TJVCLAboutInfo read FAboutJVCL write FAboutJVCL stored False;
  private
    FDotNetHighlighting: Boolean;
  protected
    procedure BoundsChanged; reintroduce; virtual;
    procedure CursorChanged; reintroduce; dynamic;
    procedure ShowingChanged; reintroduce; dynamic;
    procedure ShowHintChanged; reintroduce; dynamic;
    procedure ControlsListChanging(Control: TControl; Inserting: Boolean); reintroduce; dynamic;
    procedure ControlsListChanged(Control: TControl; Inserting: Boolean); reintroduce; dynamic;
    procedure GetDlgCode(var Code: TDlgCodes); virtual;
    procedure FocusSet(PrevWnd: THandle); virtual;
    procedure FocusKilled(NextWnd: THandle); virtual;
    function DoEraseBackground(Canvas: TCanvas; Param: LPARAM): Boolean; virtual;
  {$IFDEF JVCLThemesEnabledD6}
  private
    function GetParentBackground: Boolean;
  protected
    procedure SetParentBackground(Value: Boolean); virtual;
    property ParentBackground: Boolean read GetParentBackground write SetParentBackground;
  {$ENDIF JVCLThemesEnabledD6}
  published
    property DotNetHighlighting: Boolean read FDotNetHighlighting write FDotNetHighlighting default False;
  private
    FClipboardCommands: TJvClipboardCommands;
  protected
    procedure SetClipboardCommands(const Value: TJvClipboardCommands); virtual;
    property ClipboardCommands: TJvClipboardCommands read FClipboardCommands write SetClipboardCommands default [caCopy..caUndo];
  private
    FBeepOnError: Boolean;
  protected
    procedure DoBeepOnError; dynamic;
    procedure SetBeepOnError(Value: Boolean); virtual;
    property BeepOnError: Boolean read FBeepOnError write SetBeepOnError default True;
  end;

{$IFDEF UNITVERSIONING}
const
  UnitVersioning: TUnitVersionInfo = (
    RCSfile: '$URL: https://vcstest.delphi-jedi.org:4443/svn/pulsar/trunk/jvcl/run/JvExMask.pas $';
    Revision: '$Revision: 57 $';
    Date: '$Date: 2011-05-29 02:35:46 +0200 (dim., 29 mai 2011) $';
    LogPath: 'JVCL\run'
  );
{$ENDIF UNITVERSIONING}

implementation

constructor TJvExCustomMaskEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHintColor := clDefault;
  FClipboardCommands := [caCopy..caUndo];
  FBeepOnError := True;
end;

function TJvExCustomMaskEdit.BaseWndProc(Msg: Cardinal; WParam: WPARAM = 0; LParam: LPARAM = 0): LRESULT;
var
  Mesg: TMessage;
begin
  CreateWMMessage(Mesg, Msg, WParam, LParam);
  inherited WndProc(Mesg);
  Result := Mesg.Result;
end;

function TJvExCustomMaskEdit.BaseWndProc(Msg: Cardinal; WParam: WPARAM; LParam: TObject): LRESULT;
begin
  Result := BaseWndProc(Msg, WParam, Windows.LPARAM(LParam));
end;

function TJvExCustomMaskEdit.BaseWndProcEx(Msg: Cardinal; WParam: WPARAM; var StructLParam): LRESULT;
begin
  Result := BaseWndProc(Msg, WParam, Windows.LPARAM(@StructLParam));
end;

procedure TJvExCustomMaskEdit.VisibleChanged;
begin
  BaseWndProc(CM_VISIBLECHANGED);
end;

procedure TJvExCustomMaskEdit.EnabledChanged;
begin
  BaseWndProc(CM_ENABLEDCHANGED);
end;

procedure TJvExCustomMaskEdit.TextChanged;
begin
  BaseWndProc(CM_TEXTCHANGED);
end;

procedure TJvExCustomMaskEdit.FontChanged;
begin
  BaseWndProc(CM_FONTCHANGED);
end;

procedure TJvExCustomMaskEdit.ColorChanged;
begin
  BaseWndProc(CM_COLORCHANGED);
end;

procedure TJvExCustomMaskEdit.ParentFontChanged;
begin
  BaseWndProc(CM_PARENTFONTCHANGED);
end;

procedure TJvExCustomMaskEdit.ParentColorChanged;
begin
  BaseWndProc(CM_PARENTCOLORCHANGED);
  if Assigned(OnParentColorChange) then
    OnParentColorChange(Self);
end;

procedure TJvExCustomMaskEdit.ParentShowHintChanged;
begin
  BaseWndProc(CM_PARENTSHOWHINTCHANGED);
end;

function TJvExCustomMaskEdit.WantKey(Key: Integer; Shift: TShiftState): Boolean;
begin
  Result := BaseWndProc(CM_DIALOGCHAR, Word(Key), ShiftStateToKeyData(Shift)) <> 0;
end;

function TJvExCustomMaskEdit.HitTest(X, Y: Integer): Boolean;
begin
  Result := BaseWndProc(CM_HITTEST, 0, SmallPointToLong(PointToSmallPoint(Point(X, Y)))) <> 0;
end;

function TJvExCustomMaskEdit.HintShow(var HintInfo: THintInfo): Boolean;
begin
  GetHintColor(HintInfo, Self, FHintColor);
  if FHintWindowClass <> nil then
    HintInfo.HintWindowClass := FHintWindowClass;
  Result := BaseWndProcEx(CM_HINTSHOW, 0, HintInfo) <> 0;
end;

procedure TJvExCustomMaskEdit.MouseEnter(AControl: TControl);
begin
  FMouseOver := True;
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
  BaseWndProc(CM_MOUSEENTER, 0, AControl);
end;

procedure TJvExCustomMaskEdit.MouseLeave(AControl: TControl);
begin
  FMouseOver := False;
  BaseWndProc(CM_MOUSELEAVE, 0, AControl);
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
end;

procedure TJvExCustomMaskEdit.FocusChanged(AControl: TWinControl);
begin
  BaseWndProc(CM_FOCUSCHANGED, 0, AControl);
end;

procedure TJvExCustomMaskEdit.BoundsChanged;
begin
end;

procedure TJvExCustomMaskEdit.CursorChanged;
begin
  BaseWndProc(CM_CURSORCHANGED);
end;

procedure TJvExCustomMaskEdit.ShowingChanged;
begin
  BaseWndProc(CM_SHOWINGCHANGED);
end;

procedure TJvExCustomMaskEdit.ShowHintChanged;
begin
  BaseWndProc(CM_SHOWHINTCHANGED);
end;

{ VCL sends CM_CONTROLLISTCHANGE and CM_CONTROLCHANGE in a different order than
  the CLX methods are used. So we must correct it by evaluating "Inserting". }
procedure TJvExCustomMaskEdit.ControlsListChanging(Control: TControl; Inserting: Boolean);
begin
  if Inserting then
    BaseWndProc(CM_CONTROLLISTCHANGE, Integer(Control), Integer(Inserting))
  else
    BaseWndProc(CM_CONTROLCHANGE, Integer(Control), Integer(Inserting));
end;

procedure TJvExCustomMaskEdit.ControlsListChanged(Control: TControl; Inserting: Boolean);
begin
  if not Inserting then
    BaseWndProc(CM_CONTROLLISTCHANGE, Integer(Control), Integer(Inserting))
  else
    BaseWndProc(CM_CONTROLCHANGE, Integer(Control), Integer(Inserting));
end;

procedure TJvExCustomMaskEdit.GetDlgCode(var Code: TDlgCodes);
begin
end;

procedure TJvExCustomMaskEdit.FocusSet(PrevWnd: THandle);
begin
  BaseWndProc(WM_SETFOCUS, Integer(PrevWnd), 0);
end;

procedure TJvExCustomMaskEdit.FocusKilled(NextWnd: THandle);
begin
  BaseWndProc(WM_KILLFOCUS, Integer(NextWnd), 0);
end;

function TJvExCustomMaskEdit.DoEraseBackground(Canvas: TCanvas; Param: LPARAM): Boolean;
begin
  Result := BaseWndProc(WM_ERASEBKGND, Canvas.Handle, Param) <> 0;
end;

{$IFDEF JVCLThemesEnabledD6}
function TJvExCustomMaskEdit.GetParentBackground: Boolean;
begin
  Result := JvThemes.GetParentBackground(Self);
end;

procedure TJvExCustomMaskEdit.SetParentBackground(Value: Boolean);
begin
  JvThemes.SetParentBackground(Self, Value);
end;
{$ENDIF JVCLThemesEnabledD6}

procedure TJvExCustomMaskEdit.SetClipboardCommands(const Value: TJvClipboardCommands);
begin
  FClipboardCommands := Value;
end;

procedure TJvExCustomMaskEdit.WndProc(var Msg: TMessage);
var
  IdSaveDC: Integer;
  DlgCodes: TDlgCodes;
  Canvas: TCanvas;
begin
  if not DispatchIsDesignMsg(Self, Msg) then
  begin
    case Msg.Msg of
      CM_DENYSUBCLASSING:
      Msg.Result := LRESULT(Ord(GetInterfaceEntry(IJvDenySubClassing) <> nil));
    CM_DIALOGCHAR:
      with TCMDialogChar{$IFDEF CLR}.Create{$ENDIF}(Msg) do
        Result := LRESULT(Ord(WantKey(CharCode, KeyDataToShiftState(KeyData))));
    CM_HINTSHOW:
      with TCMHintShow(Msg) do
        Result := LRESULT(HintShow(HintInfo^));
    CM_HITTEST:
      with TCMHitTest(Msg) do
        Result := LRESULT(HitTest(XPos, YPos));
    CM_MOUSEENTER:
      MouseEnter(TControl(Msg.LParam));
    CM_MOUSELEAVE:
      MouseLeave(TControl(Msg.LParam));
    CM_VISIBLECHANGED:
      VisibleChanged;
    CM_ENABLEDCHANGED:
      EnabledChanged;
    CM_TEXTCHANGED:
      TextChanged;
    CM_FONTCHANGED:
      FontChanged;
    CM_COLORCHANGED:
      ColorChanged;
    CM_FOCUSCHANGED:
      FocusChanged(TWinControl(Msg.LParam));
    CM_PARENTFONTCHANGED:
      ParentFontChanged;
    CM_PARENTCOLORCHANGED:
      ParentColorChanged;
    CM_PARENTSHOWHINTCHANGED:
      ParentShowHintChanged;
    CM_CURSORCHANGED:
      CursorChanged;
    CM_SHOWINGCHANGED:
      ShowingChanged;
    CM_SHOWHINTCHANGED:
      ShowHintChanged;
    CM_CONTROLLISTCHANGE:
      if Msg.LParam <> 0 then
        ControlsListChanging(TControl(Msg.WParam), True)
      else
        ControlsListChanged(TControl(Msg.WParam), False);
    CM_CONTROLCHANGE:
      if Msg.LParam = 0 then
        ControlsListChanging(TControl(Msg.WParam), False)
      else
        ControlsListChanged(TControl(Msg.WParam), True);
    WM_SETFOCUS:
      FocusSet(THandle(Msg.WParam));
    WM_KILLFOCUS:
      FocusKilled(THandle(Msg.WParam));
    WM_SIZE, WM_MOVE:
      begin
        inherited WndProc(Msg);
        BoundsChanged;
      end;
    WM_ERASEBKGND:
      if (Msg.WParam <> 0) and not IsDefaultEraseBackground(DoEraseBackground, @TJvExCustomMaskEdit.DoEraseBackground) then
      begin
        IdSaveDC := SaveDC(HDC(Msg.WParam)); // protect DC against Stock-Objects from Canvas
        Canvas := TCanvas.Create;
        try
          Canvas.Handle := HDC(Msg.WParam);
          Msg.Result := Ord(DoEraseBackground(Canvas, Msg.LParam));
        finally
          Canvas.Handle := 0;
          Canvas.Free;
          RestoreDC(HDC(Msg.WParam), IdSaveDC);
        end;
      end
      else
        inherited WndProc(Msg);
    {$IFNDEF DELPHI2007_UP}
    WM_PRINTCLIENT, WM_PRINT: // VCL bug fix
      begin
        IdSaveDC := SaveDC(HDC(Msg.WParam)); // protect DC against changes
        try
          inherited WndProc(Msg);
        finally
          RestoreDC(HDC(Msg.WParam), IdSaveDC);
        end;
      end;
    {$ENDIF ~DELPHI2007_UP}
    WM_GETDLGCODE:
      begin
        inherited WndProc(Msg);
        DlgCodes := [dcNative] + DlgcToDlgCodes(Msg.Result);
        GetDlgCode(DlgCodes);
        if not (dcNative in DlgCodes) then
          Msg.Result := DlgCodesToDlgc(DlgCodes);
      end;
    WM_CLEAR:
      if caClear in ClipboardCommands then
        inherited WndProc(Msg)
      else
        Msg.Result := 1;
    WM_UNDO, EM_UNDO:
      if caUndo in ClipboardCommands then
        inherited WndProc(Msg)
      else
        Msg.Result := 1;
    WM_COPY:
      if caCopy in ClipboardCommands then
        inherited WndProc(Msg)
      else
        Msg.Result := 1;
    WM_CUT:
      if caCut in ClipboardCommands then
        inherited WndProc(Msg)
      else
        Msg.Result := 1;
    WM_PASTE:
      if caPaste in ClipboardCommands then
        inherited WndProc(Msg)
      else
        Msg.Result := 1;
    else
      inherited WndProc(Msg);
    end;
    case Msg.Msg of // precheck message to prevent access violations on released controls
      CM_MOUSEENTER, CM_MOUSELEAVE, WM_KILLFOCUS, WM_SETFOCUS, WM_NCPAINT:
        if DotNetHighlighting then
          HandleDotNetHighlighting(Self, Msg, MouseOver, Color);
    end;
  end;
end;

procedure TJvExCustomMaskEdit.DoBeepOnError;
begin
  if FBeepOnError then
    SysUtils.Beep;
end;

procedure TJvExCustomMaskEdit.SetBeepOnError(Value: Boolean);
begin
  FBeepOnError := Value;
end;

constructor TJvExMaskEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHintColor := clDefault;
  FClipboardCommands := [caCopy..caUndo];
  FBeepOnError := True;
end;

function TJvExMaskEdit.BaseWndProc(Msg: Cardinal; WParam: WPARAM = 0; LParam: LPARAM = 0): LRESULT;
var
  Mesg: TMessage;
begin
  CreateWMMessage(Mesg, Msg, WParam, LParam);
  inherited WndProc(Mesg);
  Result := Mesg.Result;
end;

function TJvExMaskEdit.BaseWndProc(Msg: Cardinal; WParam: WPARAM; LParam: TObject): LRESULT;
begin
  Result := BaseWndProc(Msg, WParam, Windows.LPARAM(LParam));
end;

function TJvExMaskEdit.BaseWndProcEx(Msg: Cardinal; WParam: WPARAM; var StructLParam): LRESULT;
begin
  Result := BaseWndProc(Msg, WParam, Windows.LPARAM(@StructLParam));
end;

procedure TJvExMaskEdit.VisibleChanged;
begin
  BaseWndProc(CM_VISIBLECHANGED);
end;

procedure TJvExMaskEdit.EnabledChanged;
begin
  BaseWndProc(CM_ENABLEDCHANGED);
end;

procedure TJvExMaskEdit.TextChanged;
begin
  BaseWndProc(CM_TEXTCHANGED);
end;

procedure TJvExMaskEdit.FontChanged;
begin
  BaseWndProc(CM_FONTCHANGED);
end;

procedure TJvExMaskEdit.ColorChanged;
begin
  BaseWndProc(CM_COLORCHANGED);
end;

procedure TJvExMaskEdit.ParentFontChanged;
begin
  BaseWndProc(CM_PARENTFONTCHANGED);
end;

procedure TJvExMaskEdit.ParentColorChanged;
begin
  BaseWndProc(CM_PARENTCOLORCHANGED);
  if Assigned(OnParentColorChange) then
    OnParentColorChange(Self);
end;

procedure TJvExMaskEdit.ParentShowHintChanged;
begin
  BaseWndProc(CM_PARENTSHOWHINTCHANGED);
end;

function TJvExMaskEdit.WantKey(Key: Integer; Shift: TShiftState): Boolean;
begin
  Result := BaseWndProc(CM_DIALOGCHAR, Word(Key), ShiftStateToKeyData(Shift)) <> 0;
end;

function TJvExMaskEdit.HitTest(X, Y: Integer): Boolean;
begin
  Result := BaseWndProc(CM_HITTEST, 0, SmallPointToLong(PointToSmallPoint(Point(X, Y)))) <> 0;
end;

function TJvExMaskEdit.HintShow(var HintInfo: THintInfo): Boolean;
begin
  GetHintColor(HintInfo, Self, FHintColor);
  if FHintWindowClass <> nil then
    HintInfo.HintWindowClass := FHintWindowClass;
  Result := BaseWndProcEx(CM_HINTSHOW, 0, HintInfo) <> 0;
end;

procedure TJvExMaskEdit.MouseEnter(AControl: TControl);
begin
  FMouseOver := True;
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
  BaseWndProc(CM_MOUSEENTER, 0, AControl);
end;

procedure TJvExMaskEdit.MouseLeave(AControl: TControl);
begin
  FMouseOver := False;
  BaseWndProc(CM_MOUSELEAVE, 0, AControl);
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
end;

procedure TJvExMaskEdit.FocusChanged(AControl: TWinControl);
begin
  BaseWndProc(CM_FOCUSCHANGED, 0, AControl);
end;

procedure TJvExMaskEdit.BoundsChanged;
begin
end;

procedure TJvExMaskEdit.CursorChanged;
begin
  BaseWndProc(CM_CURSORCHANGED);
end;

procedure TJvExMaskEdit.ShowingChanged;
begin
  BaseWndProc(CM_SHOWINGCHANGED);
end;

procedure TJvExMaskEdit.ShowHintChanged;
begin
  BaseWndProc(CM_SHOWHINTCHANGED);
end;

{ VCL sends CM_CONTROLLISTCHANGE and CM_CONTROLCHANGE in a different order than
  the CLX methods are used. So we must correct it by evaluating "Inserting". }
procedure TJvExMaskEdit.ControlsListChanging(Control: TControl; Inserting: Boolean);
begin
  if Inserting then
    BaseWndProc(CM_CONTROLLISTCHANGE, Integer(Control), Integer(Inserting))
  else
    BaseWndProc(CM_CONTROLCHANGE, Integer(Control), Integer(Inserting));
end;

procedure TJvExMaskEdit.ControlsListChanged(Control: TControl; Inserting: Boolean);
begin
  if not Inserting then
    BaseWndProc(CM_CONTROLLISTCHANGE, Integer(Control), Integer(Inserting))
  else
    BaseWndProc(CM_CONTROLCHANGE, Integer(Control), Integer(Inserting));
end;

procedure TJvExMaskEdit.GetDlgCode(var Code: TDlgCodes);
begin
end;

procedure TJvExMaskEdit.FocusSet(PrevWnd: THandle);
begin
  BaseWndProc(WM_SETFOCUS, Integer(PrevWnd), 0);
end;

procedure TJvExMaskEdit.FocusKilled(NextWnd: THandle);
begin
  BaseWndProc(WM_KILLFOCUS, Integer(NextWnd), 0);
end;

function TJvExMaskEdit.DoEraseBackground(Canvas: TCanvas; Param: LPARAM): Boolean;
begin
  Result := BaseWndProc(WM_ERASEBKGND, Canvas.Handle, Param) <> 0;
end;

{$IFDEF JVCLThemesEnabledD6}
function TJvExMaskEdit.GetParentBackground: Boolean;
begin
  Result := JvThemes.GetParentBackground(Self);
end;

procedure TJvExMaskEdit.SetParentBackground(Value: Boolean);
begin
  JvThemes.SetParentBackground(Self, Value);
end;
{$ENDIF JVCLThemesEnabledD6}

procedure TJvExMaskEdit.SetClipboardCommands(const Value: TJvClipboardCommands);
begin
  FClipboardCommands := Value;
end;

procedure TJvExMaskEdit.WndProc(var Msg: TMessage);
var
  IdSaveDC: Integer;
  DlgCodes: TDlgCodes;
  Canvas: TCanvas;
begin
  if not DispatchIsDesignMsg(Self, Msg) then
  begin
    case Msg.Msg of
      CM_DENYSUBCLASSING:
      Msg.Result := LRESULT(Ord(GetInterfaceEntry(IJvDenySubClassing) <> nil));
    CM_DIALOGCHAR:
      with TCMDialogChar{$IFDEF CLR}.Create{$ENDIF}(Msg) do
        Result := LRESULT(Ord(WantKey(CharCode, KeyDataToShiftState(KeyData))));
    CM_HINTSHOW:
      with TCMHintShow(Msg) do
        Result := LRESULT(HintShow(HintInfo^));
    CM_HITTEST:
      with TCMHitTest(Msg) do
        Result := LRESULT(HitTest(XPos, YPos));
    CM_MOUSEENTER:
      MouseEnter(TControl(Msg.LParam));
    CM_MOUSELEAVE:
      MouseLeave(TControl(Msg.LParam));
    CM_VISIBLECHANGED:
      VisibleChanged;
    CM_ENABLEDCHANGED:
      EnabledChanged;
    CM_TEXTCHANGED:
      TextChanged;
    CM_FONTCHANGED:
      FontChanged;
    CM_COLORCHANGED:
      ColorChanged;
    CM_FOCUSCHANGED:
      FocusChanged(TWinControl(Msg.LParam));
    CM_PARENTFONTCHANGED:
      ParentFontChanged;
    CM_PARENTCOLORCHANGED:
      ParentColorChanged;
    CM_PARENTSHOWHINTCHANGED:
      ParentShowHintChanged;
    CM_CURSORCHANGED:
      CursorChanged;
    CM_SHOWINGCHANGED:
      ShowingChanged;
    CM_SHOWHINTCHANGED:
      ShowHintChanged;
    CM_CONTROLLISTCHANGE:
      if Msg.LParam <> 0 then
        ControlsListChanging(TControl(Msg.WParam), True)
      else
        ControlsListChanged(TControl(Msg.WParam), False);
    CM_CONTROLCHANGE:
      if Msg.LParam = 0 then
        ControlsListChanging(TControl(Msg.WParam), False)
      else
        ControlsListChanged(TControl(Msg.WParam), True);
    WM_SETFOCUS:
      FocusSet(THandle(Msg.WParam));
    WM_KILLFOCUS:
      FocusKilled(THandle(Msg.WParam));
    WM_SIZE, WM_MOVE:
      begin
        inherited WndProc(Msg);
        BoundsChanged;
      end;
    WM_ERASEBKGND:
      if (Msg.WParam <> 0) and not IsDefaultEraseBackground(DoEraseBackground, @TJvExMaskEdit.DoEraseBackground) then
      begin
        IdSaveDC := SaveDC(HDC(Msg.WParam)); // protect DC against Stock-Objects from Canvas
        Canvas := TCanvas.Create;
        try
          Canvas.Handle := HDC(Msg.WParam);
          Msg.Result := Ord(DoEraseBackground(Canvas, Msg.LParam));
        finally
          Canvas.Handle := 0;
          Canvas.Free;
          RestoreDC(HDC(Msg.WParam), IdSaveDC);
        end;
      end
      else
        inherited WndProc(Msg);
    {$IFNDEF DELPHI2007_UP}
    WM_PRINTCLIENT, WM_PRINT: // VCL bug fix
      begin
        IdSaveDC := SaveDC(HDC(Msg.WParam)); // protect DC against changes
        try
          inherited WndProc(Msg);
        finally
          RestoreDC(HDC(Msg.WParam), IdSaveDC);
        end;
      end;
    {$ENDIF ~DELPHI2007_UP}
    WM_GETDLGCODE:
      begin
        inherited WndProc(Msg);
        DlgCodes := [dcNative] + DlgcToDlgCodes(Msg.Result);
        GetDlgCode(DlgCodes);
        if not (dcNative in DlgCodes) then
          Msg.Result := DlgCodesToDlgc(DlgCodes);
      end;
    WM_CLEAR:
      if caClear in ClipboardCommands then
        inherited WndProc(Msg)
      else
        Msg.Result := 1;
    WM_UNDO, EM_UNDO:
      if caUndo in ClipboardCommands then
        inherited WndProc(Msg)
      else
        Msg.Result := 1;
    WM_COPY:
      if caCopy in ClipboardCommands then
        inherited WndProc(Msg)
      else
        Msg.Result := 1;
    WM_CUT:
      if caCut in ClipboardCommands then
        inherited WndProc(Msg)
      else
        Msg.Result := 1;
    WM_PASTE:
      if caPaste in ClipboardCommands then
        inherited WndProc(Msg)
      else
        Msg.Result := 1;
    else
      inherited WndProc(Msg);
    end;
    case Msg.Msg of // precheck message to prevent access violations on released controls
      CM_MOUSEENTER, CM_MOUSELEAVE, WM_KILLFOCUS, WM_SETFOCUS, WM_NCPAINT:
        if DotNetHighlighting then
          HandleDotNetHighlighting(Self, Msg, MouseOver, Color);
    end;
  end;
end;

procedure TJvExMaskEdit.DoBeepOnError;
begin
  if FBeepOnError then
    SysUtils.Beep;
end;

procedure TJvExMaskEdit.SetBeepOnError(Value: Boolean);
begin
  FBeepOnError := Value;
end;

{$IFDEF UNITVERSIONING}
initialization
  RegisterUnitVersion(HInstance, UnitVersioning);

finalization
  UnregisterUnitVersion(HInstance);
{$ENDIF UNITVERSIONING}

{$UNDEF CONSTRUCTOR_CODE} // undefine at file end

end.