(*
 *
 *        FastReport 4.0
 *
 *    FIBPlus enduser components
 *
 *    Copyright (c) 2004-2006
 *
 *    Roman V. Babenko aka romb
 *          mailto: romb@devrace.com, romb@devrona.com
 *
 *
*)

unit frxFIBEditor;

interface

{$I frx.inc}

implementation

uses
  Windows, Classes, SysUtils, Forms, Dialogs, Controls, frxFIBComponents,
  frxCustomDB, frxDsgnIntf, frxRes
{$IFDEF Delphi6}
, Variants
{$ENDIF};


type
  TfrxDatabaseNameProperty = class(TfrxStringProperty)
  public
    function GetAttributes: TfrxPropertyAttributes; override;
    function Edit: Boolean; override;
  end;

  TfrxDatabaseProperty = class(TfrxComponentProperty)
  public
    function GetValue: String; override;
  end;


{ TfrxDatabaseNameProperty }

function TfrxDatabaseNameProperty.GetAttributes: TfrxPropertyAttributes;
begin
  Result := [paDialog];
end;

function TfrxDatabaseNameProperty.Edit: Boolean;
var
  SaveConnected: Boolean;
begin
  with TOpenDialog.Create(nil) do
  begin
    InitialDir := GetCurrentDir;
    Filter := frxResources.Get('ftDB') + ' (*.fdb,*.gdb)|*.gdb;*.fdb|' +
      frxResources.Get('ftAllFiles') + ' (*.*)|*.*';
    Result := Execute;
    if Result then
      with TfrxFIBDatabase(Component).Database do
      begin
        SaveConnected := Connected;
        Connected := False;
        DatabaseName := FileName;
        Connected := SaveConnected;
      end;
    Free;
  end;
end;


{ TfrxDatabaseProperty }

function TfrxDatabaseProperty.GetValue: String;
var
  db: TfrxFIBDatabase;
begin
  db := TfrxFIBDatabase(GetOrdValue);
  if db = nil then
  begin
    if (FIBComponents <> nil) and (FIBComponents.DefaultDatabase <> nil) then
      Result := FIBComponents.DefaultDatabase.Name
    else
      Result := frxResources.Get('prNotAssigned');
  end
  else
    Result := inherited GetValue;
end;


initialization
  frxPropertyEditors.Register(TypeInfo(String), TfrxFIBDataBase, 'DatabaseName',
    TfrxDataBaseNameProperty);
  frxPropertyEditors.Register(TypeInfo(TfrxFIBDatabase), TfrxFIBQuery, 'Database',
    TfrxDatabaseProperty);

end.
