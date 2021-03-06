unit dm;

interface

uses
  SysUtils, Classes, DB, ADODB, IdBaseComponent, IdComponent, Controls,
  IdTCPConnection, IdTCPClient, IdHTTP, GvVars, NativeXML, Variants,
  DBCtrlsEh, MemTableDataEh, MemTableEh, DataDriverEh, Dialogs, ComCtrls,
  GvinStr, ExtCtrls, FIBDatabase, pFIBDatabase, FIBQuery, pFIBQuery,
  FIBDataSet, pFIBDataSet, pFIBStoredProc, Provider, pFIBClientDataSet,
  DBClient, FIBSQLMonitor;


type
  TdmSwim = class(TDataModule)
    DataSet: TpFIBDataSet;
    StoredProc: TpFIBStoredProc;
    UpdateTran: TpFIBTransaction;
    Database: TpFIBDatabase;
    ReadTran: TpFIBTransaction;
    tblASports: TpFIBDataSet;
    tblBSports: TpFIBDataSet;
    tblBookers: TpFIBDataSet;
    tblCountrys: TpFIBDataSet;
    tblBTournirs: TpFIBDataSet;
    tblParts: TpFIBDataSet;
    tblAGamers: TpFIBDataSet;
    tblBGamers: TpFIBDataSet;
    tblEvents: TpFIBDataSet;
    tblATournirs: TpFIBDataSet;
    tblHistory: TpFIBDataSet;
    spPutEvent: TpFIBStoredProc;
    spGetSport: TpFIBStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetASportId_byBSportName(BookerId: Integer; BSportName, TournirName: String;
      var CountrySign: String; var BSportId, TournirId, Ways: Integer): integer;
    function FillMemTable(MemTable: TMemTableEh;
      SQLStatement: String): Integer;
    procedure FillComboBox(Combo: TDBComboBoxEh; SQLStatement: String;
      AddIgnore: Boolean=true);
    function LoadComboBoxFromStream(Combo: TDBComboBoxEh;
      AbsSport_Id, Country_Id: Integer; Sex_Id: String): Boolean;
    procedure WriteComboBoxToStream(Combo: TDBComboBoxEh;
      AbsSport_Id, Country_Id: Integer; Sex_Id: String);
    procedure FillVarList(VL: TVarList; SQLStatement: String);
    procedure OpenAGamersTable(ASportId: Integer; CountrySign: String);
    function GetValuteKurs(ValuteSign: String): Single;
    function GetKursValuteRUR(ValuteSign: String): string;
    procedure SetKursValuteRUR(ValuteSign, Kurs: string);
    function GetKursValuteBLR(ValuteSign: String): string;
    procedure SetKursValuteBLR(ValuteSign, Kurs: string);
    procedure ModifyBSport(ASportId, BookerId: Integer; BSportName: String;
              var BSportId: variant);
    procedure ModifyASport(var ASportId: Integer; ASportName: String);

    procedure FillEventParam(TournirId: Integer; EventDtTm: TDateTime;
              Gamer1Name, Gamer2Name: String);

    procedure ClearBetParam;
    procedure FillBetParam(IndexNo: Integer; BetTypeSign: String;
              BetValue, BetKoef: Single);
    function PutEvent: Integer;

    procedure PutBet(IndexNo: Integer; BetTypeSign: String; tr: TXmlNode; Ways: Integer); overload;
    procedure PutBet(IndexNo: Integer; BetTypeSign: String; Koef: String; Ways: Integer); overload;
    procedure PutFora(IndexNo: Integer; BetTypeSign: String; tr: TXmlNode); overload;
    procedure PutFora(IndexNo: Integer; BetTypeSign, Value, Koef: String); overload;
    procedure PutTotal(IndexNo: Integer; BetTypeSign: String; tr: TXmlNode); overload;
    procedure PutTotal(IndexNo: Integer; BetTypeSign, Value, Koef: String); overload;
    procedure GetUnknownCounts(var USportCount, UTournirCount,
              UGamerCount: Integer);
    procedure GetUnknownSportsData(ClientDataSet: TClientDataSet);
    procedure AppendSportPart(ASportId, BookerId,
              ASportNewId: Integer; PartTxt: String);
    procedure AppendCountryPart(ASportId, BookerId: Integer;
              CountrySign, PartTxt: String);
    procedure AppendIgnorePart(ASportId, BookerId: Integer;
              PartTxt: String);
    procedure RecognizeTournirs;
    procedure DeleteBookersBet(BookerId: Integer);
    procedure AppendAGamer(ASportId: Integer; AGamerName, CountrySign: String;
              var AGamerId: Integer);
    procedure DeleteBGamer(BGamerId: Integer);
    procedure AppendBGamer(AGamerId, BookerId, ATournirId: Integer;
              BGamerName: String; TemporaryFlag: Boolean);
    procedure AppendATournir(ASportId: Integer; ATournirName, CountrySign: String;
              var ATournirId: Integer);
    function  NormalizeAGamerName(AGamerName, CountrySign: String): String;
    procedure DeleteBetsByBooker(BookerId: Integer);
    procedure CalculateSwim; overload;
    procedure CalculateSwim(Booker_Id: Integer); overload;
    procedure DeleteEmptyEvents;
    procedure CalcFromMin(Money: Single);
    procedure CalcFromMax(Money: Single);
    procedure UpdateBet(BetId: Integer; NewBetValue, NewBetKoef: String);
    procedure SaveSwim(SwimId: Integer; S1,SV1,S2,SV2: Extended);
    procedure ExcludeBet(EventId, BookerId, BetTypeId: Integer; BetValue: Single);
    procedure AlreadyBet(SwimId: Integer);
    procedure DeleteOldEvents(Dt: TDateTime);
    procedure ClearHistoryByTournir(ATournirId: Integer);
    procedure CloseATournir(ATournirId: Integer);
    procedure RenumTables;
    function GetBetsCount(BookerId: Integer): Integer;
  end;

var
  dmSwim: TdmSwim;
  Path: TvarList;
  vlRestore: TVarList;

const
  ctEventDtTm='EventDtTm';
  ctGamers='Gamers';
  ctGamer1='Gamer1';
  ctGamer2='Gamer2';
  btWin1='1';
  btWin2='2';
  btDraw='X';
  btNoLose1='1X';
  btNoDraw='12';
  btNoLose2='X2';
  ctTotV='TV';
  btTotLo='TL';
  btTotHi='TH';
  ctFora1V='F1V';
  btFora1='F1';
  ctFora2V='F2V';
  btFora2='F2';

{  nnSport='Sport';
    attBookmaker_Id='Bookmaker_Id'; attAbsSport_Id='AbsSport_Id';
    attSport_Name='Sport'; attSport_Id='Sport_Id';
    attTournir_Id='Tournir_Id'; attSex='Sex'; attCountry_Id='Country_Id';
    attAction='Action';
  nnHtml='Html';
   nnEvents='Events';
    nnEvent='Event';
     nnDate='Date';
       attId= 'Id';
     nnBets='Bets';
      nnBet='Bet'; attType='Type'; attWays='Ways'; attValue='Value';
}

  nnTable='Table';
   nnTr='tr';
    nnTd='td'; attTitle='Title';

type
  TCompareAction=(tcaEmpty, tcaNoEmpty, tcaEqualSt, tcaContainSt,
    tcaNoContainSt, tcaInteger, tcaNoInteger, tcaAttributeEq);

procedure CopyHeaderToAttribute(ndTable: TXmlNode; Row: Integer=0);
procedure FillAttrForCol(ndTable: TXmlNode; ColNo: Integer;
  AttributeName, AttributeValue: String;
  AttributeName2:String=''; AttributeValue2: String='');
procedure KillRowIfCol(ndTable: TXmlNode; ColNo: Integer;
  Action: TCompareAction; Value: String=''; AttributeName: String='');
procedure ClearCellIfCol(ndTable: TXmlNode; ConditionTitle: String;
  Action: TCompareAction; Value, AttributeName, ClearTitle: String);
procedure SplitCol(ndTable: TXmlNode; Title, Title2: String; KeyChar: TKeyChars); overload;
procedure SplitCol(ndTable: TXmlNode; Title, Title2, KeyString: String); overload;

function NormalizeName(Name: String): String;
function PrepareTournirName(Tournir_Name: String; Parazits: TStrings): String;
function PrepareGamerName(GamerName: String; Parazits: TStrings): String;

function CreateParazit(FName: String): TStringList;

procedure FindNearest(DataSet: TDataSet; FieldName, Value: String);

implementation

uses
  GvinFile, DateUtils, Math;

{$R *.dfm}

procedure TdmSwim.DataModuleCreate(Sender: TObject);
begin
{  if FileExists(Path['BackUp']) then
  begin
    if FileDateToDateTime(FileAge(Path['BackUp']))-1 > vlRestore.AsDateTime['DateOfBackup'] then
    begin
      RestoreDatabase;
    end;
  end;}
  with Database do
  begin
    if Connected then Close;
    DBName:= Path['Data']+'swim.fdb';
    ConnectParams.UserName:= 'sysdba';
    ConnectParams.Password:= 'masterkey';
    ConnectParams.CharSet:= 'CYRL';
    ConnectParams.RoleName:= 'admin';
    Connected:= true;
  end;
end;

function TdmSwim.GetASportId_byBSportName(BookerId: Integer;
      BSportName, TournirName: String; var CountrySign: String;
      var BSportId, TournirId, Ways: Integer): integer;
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Get_ASport_by_BSport_Nm');
    Params.ClearValues;
    ParamByName('i_Booker_Id').Value:= BookerId;
    ParamByName('i_BSport_Nm').Value:= BSportName;
    ParamByName('i_BTournir_Nm').Value:= TournirName;
    ExecProc;
    if (ParamByName('o_ASport_Id').IsNull) or
       (ParamByName('o_Ignore_Flg').Value = 1) then
    begin
      result:= -1;
      Ways:= -1;
    end
    else
    begin
      result:= ParamValue('o_ASport_Id');
      Ways:= ParamValue('o_Ways_Cnt');
    end;
    BSportId:= ParamValue('o_BSport_Id');
    TournirId:= ParamValue('o_BTournir_Id');
    if ParamByName('o_Country_Sgn').IsNull then
      CountrySign:= ''
    else
      CountrySign:= ParamValue('o_Country_Sgn');
  end;
end;

function TdmSwim.FillMemTable(MemTable: TMemTableEh; SQLStatement: String): Integer;
begin
  with DataSet do
  begin
    SelectSQL.Text:= SQLStatement;
    Open;
    try
      memTable.Tag:= 1;
      result:= MemTable.LoadFromDataSet(DataSet, -1, lmCopy, false);
      memTable.Tag:= 0;
      If Assigned(MemTable.AfterScroll) then
        MemTable.AfterScroll(MemTable);
    finally
      Close;
    end;
  end;
end;


procedure TdmSwim.FillComboBox(Combo: TDBComboBoxEh; SQLStatement: String;
  AddIgnore: Boolean);
begin
  Combo.ItemIndex:= -1;
  with DataSet do
  begin
    SelectSQL.Text:= SQLStatement;
    Open;
    try
      Combo.KeyItems.Clear;
      Combo.Items.Clear;
      if AddIgnore then
      begin
        Combo.KeyItems.Add('-1');
        Combo.Items.Add('_Ignore');
      end;
      While not eof do
      begin
        Combo.KeyItems.Add(Fields[0].AsString);
        Combo.Items.Add(Fields[1].AsString);
        Next;
      end;
    finally
      Close;
    end;
  end;
end;

procedure TdmSwim.FillVarList(VL: TVarList; SQLStatement: String);
begin
  with DataSet do
  begin
    SelectSQL.Text:= SQLStatement;
    Open;
    try
      VL.Clear;
      While not eof do
      begin
        VL[Fields[0].AsString]:= Fields[1].AsString;
        Next;
      end;
    finally
      Close;
    end;
  end;
end;

procedure TdmSwim.DataModuleDestroy(Sender: TObject);
begin
  vlRestore.SaveSectionToIniFile(ProjectIniFileName, 'Restore');
end;

procedure TdmSwim.PutBet(IndexNo: Integer; BetTypeSign: String; tr: TXmlNode;
          Ways: Integer);
var
  td: TXmlNode;
begin
  td:= tr.NodeByAttributeValue(nnTd, attTitle, BetTypeSign, false);
  if td=nil then exit;
  PutBet(IndexNo, BetTypeSign, td.ValueAsString, Ways);
end;

procedure TdmSwim.PutBet(IndexNo: Integer; BetTypeSign, Koef: String;
  Ways: Integer);
begin
  if Koef = '' then exit;
  Koef:= ReplaceAll(Koef, ',', DecimalSeparator);
  Koef:= ReplaceAll(Koef, '.', DecimalSeparator);
  if IsFloat(Koef) then
    FillBetParam(IndexNo, IntToStr(Ways)+BetTypeSign, 0, StrToFloat(Koef));
end;

procedure TdmSwim.PutTotal(IndexNo: Integer; BetTypeSign: String; tr: TXmlNode);
var
  td, ndTotalV: TXmlNode;
begin
  td:= tr.NodeByAttributeValue(nnTd, attTitle, BetTypeSign, false);
  if td=nil then exit;
  ndTotalV:= tr.NodeByAttributeValue(nnTd, attTitle, ctTotV, false);
  if ndTotalV=nil then exit;
  PutTotal(IndexNo, BetTypeSign, ndTotalV.ValueAsString, td.ValueAsString);
end;

procedure TdmSwim.PutTotal(IndexNo: Integer; BetTypeSign, Value, Koef: String);
begin
  if (Koef='') or (Value='') then exit;
  Koef:= ReplaceAll(Koef, ',', DecimalSeparator);
  Koef:= ReplaceAll(Koef, '.', DecimalSeparator);
  Value:= ReplaceAll(Value, ',', DecimalSeparator);
  Value:= ReplaceAll(Value, '.', DecimalSeparator);
  if IsFloat(Koef) and IsFloat(Value) then
    FillBetParam(IndexNo, '2'+BetTypeSign, StrToFloat(Value), StrToFloat(Koef));
end;

procedure TdmSwim.PutFora(IndexNo: Integer; BetTypeSign: String; tr: TXmlNode);
var
  td, ndForaV: TXmlNode;
begin
  td:= tr.NodeByAttributeValue(nnTd, attTitle, BetTypeSign);
  if td=nil then exit;
  ndForaV:= tr.NodeByAttributeValue(nnTd, attTitle, BetTypeSign+'V');
  if ndForaV=nil then exit;
    PutFora(IndexNo, BetTypeSign, ndForaV.ValueAsString, td.ValueAsString);
end;

procedure TdmSwim.PutFora(IndexNo: Integer; BetTypeSign, Value, Koef: String);
begin
  if (Koef='') or (Value='') then exit;
  Koef:= ReplaceAll(Koef, ',', DecimalSeparator);
  Koef:= ReplaceAll(Koef, '.', DecimalSeparator);
  Value:= ReplaceAll(Value, ',', DecimalSeparator);
  Value:= ReplaceAll(Value, '.', DecimalSeparator);
  if IsFloat(Koef) and IsFloat(Value) then
    FillBetParam(IndexNo, '2'+BetTypeSign, StrToFloat(Value), StrToFloat(Koef));
end;

procedure CopyHeaderToAttribute(ndTable: TXmlNode; Row: Integer=0);
var
  r, c, a, ColCount: Integer;
  th, tr, thn, td: TXmlNode;
  Name: String;
begin
  th:= ndTable.Nodes[Row];
  if th = nil then Exit;
  ColCount:= th.NodeCount;
  for r:= Row+1 to ndTable.NodeCount-1 do
  begin
    tr:= ndTable.Nodes[r];
    while tr.NodeCount<ColCount do tr.NodeNew(nnTd);
    For c:= 0 to ColCount-1 do
    begin
      thn:= th.Nodes[c];
      td:= tr.Nodes[c];
      For a:= 0 to thn.AttributeCount-1 do
      begin
        Name:= thn.AttributeName[a];
        td.AttributeByName[Name]:= thn.AttributeValue[a];
      end;
    end;
  end;
end;

procedure FillAttrForCol(ndTable: TXmlNode; ColNo: Integer;
  AttributeName, AttributeValue: String; AttributeName2:String=''; AttributeValue2: String='');
var
  td: TXmlNode;
  r: Integer;
begin
  For r:= 0 to ndTable.NodeCount-1 do
  begin
    td:= ndTable.Nodes[r].Nodes[ColNo];
    if td <> nil then
    begin
      td.writeAttributeString(AttributeName, AttributeValue);
      if AttributeName2<>'' then
        td.writeAttributeString(AttributeName2, AttributeValue2);
    end;
  end;
end;

procedure KillRowIfCol(ndTable: TXmlNode; ColNo: Integer;
  Action: TCompareAction; Value: String=''; AttributeName: String='');
var
  tr, td: TXmlNode;
  r: Integer;
  KillRow: Boolean;
begin
  For r:= ndTable.NodeCount-1 downto 0 do
  begin
    tr:= ndTable.Nodes[r];
    KillRow:= false;
    while tr.NodeCount<ColNo+1 do
      tr.NodeNew(nnTd);
    td:= tr.Nodes[ColNo];
    if td=nil then continue;
    Case Action of
      tcaEmpty,
      tcaEqualSt:
        KillRow:= trim(td.ValueAsString)=Value;
      tcaNoEmpty:
        KillRow:= trim(td.ValueAsString)<>Value;
      tcaContainSt:
        KillRow:= Pos(Value, td.ValueAsString)>0;
      tcaNoContainSt:
        KillRow:= Pos(Value, td.ValueAsString)=0;
      tcaAttributeEq:
        KillRow:= td.AttributeByName[AttributeName]=Value;
      tcaInteger:
        KillRow:= (td.ValueAsString<>'') and IsInteger(td.ValueAsString);
      tcaNoInteger:
        KillRow:= (td.ValueAsString<>'') and Not IsInteger(td.ValueAsString);
    end;
    if KillRow then
      tr.Delete;
  end;
end;

procedure ClearCellIfCol(ndTable: TXmlNode; ConditionTitle: String;
  Action: TCompareAction; Value, AttributeName, ClearTitle: String);
var
  tr, td: TXmlNode;
  r: Integer;
  ClearCell: Boolean;
begin
  For r:= ndTable.NodeCount-1 downto 0 do
  begin
    tr:= ndTable.Nodes[r];
    ClearCell:= false;
    td:= tr.NodeByAttributeValue(nnTd, attTitle, ConditionTitle);
    if td=nil then continue;
    Case Action of
      tcaEmpty,
      tcaEqualSt:
        ClearCell:= trim(td.ValueAsString)=Value;
      tcaNoEmpty:
        ClearCell:= trim(td.ValueAsString)<>Value;
      tcaContainSt:
        ClearCell:= Pos(Value, td.ValueAsString)>0;
      tcaNoContainSt:
        ClearCell:= Pos(Value, td.ValueAsString)=0;
      tcaAttributeEq:
        ClearCell:= td.AttributeByName[AttributeName]=Value;
      tcaInteger:
        ClearCell:= (td.ValueAsString<>'') and IsInteger(td.ValueAsString);
      tcaNoInteger:
        ClearCell:= (td.ValueAsString<>'') and Not IsInteger(td.ValueAsString);
    end;
    if ClearCell then
    begin
      td:= tr.NodeByAttributeValue(nnTd, attTitle, ClearTitle);
      if td<>nil then
        td.ValueAsString:= '';
    end;
  end;
end;


procedure SplitCol(ndTable: TXmlNode; Title, Title2: String; KeyChar: TKeyChars); overload;
var
  i, idx: Integer;
  tr, td, td2: TXmlNode;
  St: String;
begin
  td:= ndTable.NodeFindOrCreate(nnTr).NodeByAttributeValue(nnTd, attTitle, Title);
  if td=nil then Exit;
  idx:= td.IndexInParent;
  For i:= 0 to ndTable.NodeCount-1 do
  begin
    tr:= ndTable[i];
    td:= tr[idx];
    St:= td.ValueAsString;
    td.ValueAsString:= TakeFront5(St, KeyChar);
    td2:= tr.NodeNewAtIndex(idx+1, td.Name);
    td2.Assign(td);
    td2.ValueAsString:= St;
    td2.WriteAttributeString(attTitle, Title2);
  end;
end;

procedure SplitCol(ndTable: TXmlNode; Title, Title2, KeyString: String); overload;
var
  i, idx, p, lsp: Integer;
  tr, td, td2: TXmlNode;
  St: String;
begin
  td:= ndTable.NodeFindOrCreate(nnTr).NodeByAttributeValue(nnTd, attTitle, Title);
  if td=nil then Exit;
  idx:= td.IndexInParent;
  KeyString:= AnsiLowerCase(Keystring);
  lsp:= length(KeyString);
  For i:= 0 to ndTable.NodeCount-1 do
  begin
    tr:= ndTable[i];
    td:= tr[idx];
    St:= td.ValueAsString;
    p:= Pos(KeyString, AnsiLowerCase(St));
    if p>0 then
    begin
      td.ValueAsString:= Take(St, 1, p-1);
      Delete(St, 1, lsp);
    end
    else
      St:= '';
    td2:= tr.NodeNewAtIndex(idx+1, td.Name);
    td2.Assign(td);
    td2.ValueAsString:= st;
    td2.WriteAttributeString(attTitle, Title2);
  end;
end;


procedure PrepareLine(Line: TNativeXML; Bookmaker_Id: Integer);
begin
  Line.Clear;
  Line.Root.Name:= 'Root';
  Line.Root.WriteAttributeInteger('Bookmaker_Id', Bookmaker_Id);
end;

function NormalizeName(Name: String): String;
begin
  result:= ReplaceAll(Name, '.', '. ');
  result:= ReplaceAll(result, ',', ', ');
  result:= ReplaceAll(result, ')', ') ');
  result:= ReplaceAll(result, '(', ' (');
  result:= ReplaceAll(result, ' )', ')');
  result:= ReplaceAll(result, '( ', '(');
  result:= DeleteDoubleSpace(result);
  result:= ReplaceAll(result, ' .', '.');
  result:= ReplaceAll(result, ' ,', ',');
  result:= DeleteDoubleChar(result, '.');
  result:= DeleteDoubleChar(result, ',');
  result:= Trim(result);
  if LastChar(result) = '.' then TakeLastChar(Result);
  result:= Trim(Result);
end;

function KillParazits(St: String; Parazits: TStrings; ReplaceStr: Char): String;
var
  i: Integer;
begin
  Result:= St;
  For i:= 0 to Parazits.Count-1 do
  begin
    st:= Parazits[i];
    if st<>'' then
      Result:= DeleteDoubleChar(ReplaceAll(Result, st, ReplaceStr), ReplaceStr);
  end;
end;

function PrepareTournirName(Tournir_Name: String; Parazits: TStrings): String;
var
  i, LTN: integer;
begin
  Tournir_Name:= DeleteAllBE(Tournir_Name, '<', '>');
  LTN:= Length(Tournir_Name);
  For i:= LTN downto 2 do
    if (Tournir_Name[i] in ['�'..'�', '0'..'9']) and
       (Tournir_Name[i-1] in ['�'..'�']) then
       insert(' ', Tournir_Name, i);
  Tournir_Name:= NormalizeName(Tournir_Name);
  Tournir_Name:= KillParazits(Tournir_Name, Parazits, '.');
  result:= Trim(NormalizeName(Tournir_Name));
end;


function PrepareGamerName(GamerName: String; Parazits: TStrings): String;
begin
  result:= NormalizeName(GamerName);
  Result:= Trim(KillParazits(Result, Parazits, ' '));
end;

function MySort(List: TStringList; Index1, Index2: Integer): Integer;
var
  L1, L2: Integer;
  S1, S2: String;
begin
  S1:= List[Index1];
  S2:= List[Index2];
  L1:= Length(S1);
  L2:= Length(S2);
  if L1 > L2 then
    result:= -1
  else
  if L1 < L2 then
    result:= 1
  else
  if S1 > S2 then
    result:= -1
  else
  if S1 < S2 then
    result:= 1
  else
    result:= 0
end;

function CreateParazit(FName: String): TStringList;
begin
  Result:= TStringList.Create;
  if FileExists(FName) then
  begin
    result.LoadFromFile(FName);
    result.CustomSort(MySort);
    result.SaveToFile(FName);
  end;
end;

function TdmSwim.GetValuteKurs(ValuteSign: String): Single;
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Get_Valute_Kurs');
    Params.ClearValues;
    ParamByName('i_Valute_Sgn').Value:= ValuteSign;
    ExecProc;
    result:= ParamValue('o_Valute_Kurs');
  end;
end;

function TdmSwim.LoadComboBoxFromStream(Combo: TDBComboBoxEh;
  AbsSport_Id, Country_Id: Integer; Sex_Id: String): Boolean;
var
  FName: String;
  FStream: TFileStream;
begin
  FName:= Path['Cache']+Format('%2.2u_%3.3u_%1s.cache', [AbsSport_Id, Country_Id, Sex_Id]);
  result:= FileExists(FName);
  if result then
  begin
    FStream:= TFileStream.Create(FName, fmOpenRead);
    try
      Combo.ItemIndex:= -1;
      Combo.Items.Text:= ReadStringFromStream(FStream);
      Combo.KeyItems.Text:= ReadStringFromStream(FStream);
      Combo.ItemIndex:= -1;
    finally
      FStream.Free;
    end;
  end;
end;

procedure TdmSwim.WriteComboBoxToStream(Combo: TDBComboBoxEh;
  AbsSport_Id, Country_Id: Integer; Sex_Id: String);
var
  FName: String;
  FStream: TFileStream;
begin
  FName:= Path['Cache']+Format('%2.2u_%3.3u_%1s.cache', [AbsSport_Id, Country_Id, Sex_Id]);
  if FileExists(FName) then
    DeleteFile(FName);
  FStream:= TFileStream.Create(FName, fmCreate);
  try
    WriteStringToStream(FStream, Combo.Items.Text);
    WriteStringToStream(FStream, Combo.KeyItems.Text);
  finally
    FStream.Free;
  end;
end;


function TdmSwim.GetKursValuteRUR(ValuteSign: String): string;
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Get_Valute_Kurs_RUR');
    Params.ClearValues;
    ParamByName('i_Valute_Sgn').Value:= ValuteSign;
    ExecProc;
    result:= ParamValue('o_Kurs_RUR');
  end;
end;

procedure TdmSwim.SetKursValuteRUR(ValuteSign, Kurs: string);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Set_Valute_Kurs_Rur');
    Params.ClearValues;
    ParamByName('i_Valute_Sgn').Value:= ValuteSign;
    ParamByName('i_Kurs_RUR').Value:= Kurs;
    ExecProc;
  end;
end;

function TdmSwim.GetKursValuteBLR(ValuteSign: string): string;
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Get_Valute_Kurs_BLR');
    Params.ClearValues;
    ParamByName('i_Valute_Sgn').Value:= 'BLR';
    ExecProc;
    result:= ParamValue('o_Kurs_BLR');
  end;
end;

procedure TdmSwim.SetKursValuteBLR(ValuteSign, Kurs: string);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Set_Valute_Kurs_BLR');
    Params.ClearValues;
    ParamByName('i_Valute_Sgn').Value:= ValuteSign;
    ParamByName('i_Kurs_BLR').Value:= Kurs;
    ExecProc;
  end;
end;

procedure TdmSwim.ModifyBSport(ASportId, BookerId: Integer;
  BSportName: String; var BSportId: variant);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Modify_BSport');
    Params.ClearValues;
    ParamByName('i_ASport_Id').Value:= ASportId;
    ParamByName('i_Booker_Id').Value:= BookerId;
    ParamByName('i_BSport_Nm').Value:= BSportName;
    ParamByName('i_BSport_Id').Value:= BSportId;
    ExecProc;
    BSportId:= ParamValue('o_BSport_Id');
  end;
end;

procedure TdmSwim.ModifyASport(var ASportId: Integer; ASportName: String);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Modify_ASport');
    Params.ClearValues;
    ParamByName('i_ASport_Nm').Value:= ASportName;
    ParamByName('i_ASport_Id').Value:= IfThen(ASportId>0, ASportId, null);
    ExecProc;
    ASportId:= ParamValue('o_ASport_Id');
  end;
end;

procedure TdmSwim.OpenAGamersTable(ASportId: Integer; CountrySign: String);
begin
{  if    tblAGamers.Active
    and (ASportId = FAGamersSportId)
    and (CountrySign = FAGamersCountrySign) then Exit;
  if tblAGamers.Active then tblAGamers.Close;
  tblAGamers.SelectSQL.Text:= Format(
    'SELECT AGamer_Id, AGamer_Nm '+
    'FROM AGamers '+
    'WHERE ASport_Id = %u ',
    [ASportId]);
  if trim(CountrySign) <> '' then
    tblAGamers.SelectSQL.Add(Format(
      'AND Country_Sgn = %s', [QuotedStr(CountrySign)]));
  tblAGamers.SelectSQL.Append(
    'ORDER BY AGamer_Nm');
  tblAGamers.Open;}
end;


procedure TdmSwim.GetUnknownCounts(
   var USportCount, UTournirCount, UGamerCount: Integer);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Get_Unknown_Count');
    Params.ClearValues;
    ExecProc;
    USportCount:= ParamValue('o_BSports_Cnt');
    UTournirCount:= ParamValue('o_Tournirs_Cnt');
    UGamerCount:= ParamValue('o_BGamers_Cnt');
  end;
end;

procedure TdmSwim.GetUnknownSportsData(ClientDataSet: TClientDataSet);
begin

end;

procedure TdmSwim.AppendSportPart(ASportId, BookerId,
  ASportNewId: Integer; PartTxt: String);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Append_SportPart');
    Params.ClearValues;
    ParamByName('i_ASport_Id').Value:= ASportId;
    ParamByName('i_Booker_Id').Value:= BookerId;
    ParamByName('i_ASportNew_Id').Value:= ASportNewId;
    ParamByName('i_Part_Txt').Value:= PartTxt;
    ExecProc;
  end;
end;

procedure TdmSwim.AppendCountryPart(ASportId, BookerId: Integer;
  CountrySign, PartTxt: String);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Append_CountryPart');
    Params.ClearValues;
    ParamByName('i_ASport_Id').Value:= ASportId;
    ParamByName('i_Booker_Id').Value:= BookerId;
    ParamByName('i_Country_Sgn').Value:= CountrySign;
    ParamByName('i_Part_Txt').Value:= PartTxt;
    ExecProc;
  end;
end;

procedure TdmSwim.RecognizeTournirs;
begin
  Database.Execute('execute procedure recognize_tournirs');
end;

procedure TdmSwim.DeleteBookersBet(BookerId: Integer);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Delete_Bookers_Bets');
    Params.ClearValues;
    ParamByName('i_Booker_Id').Value:= BookerId;
    ExecProc;
  end;
end;

procedure TdmSwim.AppendAGamer(ASportId: Integer; AGamerName,
  CountrySign: String; var AGamerId: Integer);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Append_AGamer');
    Params.ClearValues;
    ParamByName('i_ASport_Id').Value:= ASportId;
    ParamByName('i_AGamer_Nm').Value:= AGamerName;
    ParamByName('i_Country_Sgn').Value:= CountrySign;
    ExecProc;
    AGamerId:= ParamValue('o_AGamer_Id');
  end;
end;

function TdmSwim.NormalizeAGamerName(AGamerName,
  CountrySign: String): String;
begin
  result:= DeleteDoubleSpace(AGamerName);
  result:= ReplaceAll(result, '.', '. ');
  result:= ReplaceAll(result, ',', ', ');
  result:= ReplaceAll(result, ' ,', ', ');
  result:= DeleteDoubleSpace(result);
  result:= trim(result);
  if (CountrySign<>'ANY') And
     (Pos('('+CountrySign+')', result)=0) then
  begin
    result:= result + ' ('+CountrySign+')';
  end;
end;

procedure TdmSwim.AppendATournir(ASportId: Integer; ATournirName,
  CountrySign: String; var ATournirId: Integer);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Append_ATournir');
    Params.ClearValues;
    ParamByName('i_ASport_Id').Value:= ASportId;
    ParamByName('i_ATournir_Nm').Value:= ATournirName;
    ParamByName('i_Country_Sgn').Value:= CountrySign;
    ExecProc;
    ATournirId:= ParamValue('o_ATournir_Id');
  end;
end;

procedure TdmSwim.AppendIgnorePart(ASportId, BookerId: Integer;
  PartTxt: String);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Append_IgnorePart');
    Params.ClearValues;
    ParamByName('i_ASport_Id').Value:= ASportId;
    ParamByName('i_Booker_Id').Value:= BookerId;
    ParamByName('i_Part_Txt').Value:= PartTxt;
    ExecProc;
  end;
end;

procedure TdmSwim.ClearBetParam;
var
  s: String[4];
  i: Integer;
begin
  For i:= 0 to 9 do
  begin
    s:= IntToStr(i);
    with spPutEvent do
    begin
      ParamByName('i_s_'+s).Value:= null;
      ParamByName('i_v_'+s).Value:= null;
      ParamByName('i_k_'+s).Value:= null;
    end
  end;
end;

procedure TdmSwim.FillBetParam(IndexNo: Integer; BetTypeSign: String;
  BetValue, BetKoef: Single);
var
  s: String[4];
begin
  s:= IntToStr(IndexNo);
  with spPutEvent do
  begin
    ParamByName('i_s_'+s).Value:= BetTypeSign;
    ParamByName('i_v_'+s).Value:= BetValue;
    ParamByName('i_k_'+s).Value:= BetKoef;
  end;
end;

procedure TdmSwim.FillEventParam(TournirId: Integer; EventDtTm: TDateTime;
  Gamer1Name, Gamer2Name: String);
var
  i: Integer;
begin
  with spPutEvent do
  begin
    StoredProcName:= UpperCase('Put_EventBets');
    Params.ClearValues;
    For i:= 0 to Params.Count - 1 do
      Params[i].Value:= null;
    ParamByName('i_BTournir_Id').AsInteger:= TournirId;
    ParamByName('i_Event_DTm').AsDateTime:= EventDtTm;
    ParamByName('i_BGamer1_Nm').AsString:= Gamer1Name;
    ParamByName('i_BGamer2_Nm').AsString:= Gamer2Name;
  end;
end;

function TdmSwim.PutEvent: Integer;
begin
  result:= -1;
  spPutEvent.ExecProc;
end;

procedure TdmSwim.AppendBGamer(AGamerId, BookerId, ATournirId: Integer;
  BGamerName: String; TemporaryFlag: Boolean);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Append_BGamer');
    Params.ClearValues;
    ParamByName('i_AGamer_Id').Value:= AGamerId;
    ParamByName('i_Booker_Id').Value:= BookerId;
    ParamByName('i_BGamer_Nm').Value:= BGamerName;
    ParamByName('i_ATournir_Id').Value:= ATournirId;
    ParamByName('i_Temporary_Flg').Value:= TemporaryFlag;
    ExecProc;
  end;
end;


procedure FindNearest(DataSet: TDataSet; FieldName: String;
  Value: String);
begin
  while Value <> '' do
  begin
    if DataSet.Locate(FieldName, Value, [loCaseInsensitive, loPartialKey]) then
      exit;
    Value:= Copy(Value, 1, Length(Value)-1);
  end;
end;

procedure TdmSwim.DeleteBetsByBooker(BookerId: Integer);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Delete_Bets_By_Booker');
    Params.ClearValues;
    ParamByName('i_Booker_Id').Value:= BookerId;
    ExecProc;
  end;
end;

procedure TdmSwim.DeleteEmptyEvents;
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Delete_Empty_Events');
    Params.ClearValues;
    ExecProc;
  end;
end;

procedure TdmSwim.CalculateSwim;
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Calc_Swims');
    Params.ClearValues;
    ExecProc;
  end;
end;

procedure TdmSwim.CalculateSwim(Booker_Id: Integer);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Calc_Swims_By_Booker');
    Params.ClearValues;
    ParamByName('i_Booker_Id').Value:= Booker_Id;
    ExecProc;
  end;
end;

procedure TdmSwim.CalcFromMax(Money: Single);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Calc_From_Max');
    Params.ClearValues;
    ParamByName('i_Money').Value:= Money;
    ExecProc;
  end;
end;

procedure TdmSwim.CalcFromMin(Money: Single);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Calc_From_Min');
    Params.ClearValues;
    ParamByName('i_Money').Value:= Money;
    ExecProc;
  end;
end;

procedure TdmSwim.UpdateBet(BetId: Integer; NewBetValue, NewBetKoef: String);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Update_Bet');
    Params.ClearValues;
    ParamByName('i_Bet_Id').Value:= BetId;
    ParamByName('i_Bet_Koef').Value:= NewBetKoef;
    ParamByName('i_Bet_Value').Value:= NewBetValue;
    ExecProc;
  end;
end;

procedure TdmSwim.SaveSwim(SwimId: Integer; S1, SV1, S2, SV2: Extended);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Save_Swim');
    Params.ClearValues;
    ParamByName('i_Swim_Id').Value:= SwimId;
    ParamByName('i_S1').Value:= S1;
    ParamByName('i_SV1').Value:= SV1;
    ParamByName('i_S2').Value:= S2;
    ParamByName('i_SV2').Value:= SV2;
    ExecProc;
  end;
end;



procedure TdmSwim.AlreadyBet(SwimId: Integer);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Append_Already_Bet');
    Params.ClearValues;
    ParamByName('i_Swim_Id').Value:= SwimId;
    ExecProc;
  end;
end;

procedure TdmSwim.ExcludeBet(EventId, BookerId, BetTypeId: Integer;
  BetValue: Single);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Append_Exclude_Bet');
    Params.ClearValues;
    ParamByName('i_Event_Id').Value:= EventId;
    ParamByName('i_Booker_Id').Value:= BookerId;
    ParamByName('i_BetType_Id').Value:= BetTypeId;
    ParamByName('i_Bet_Value').Value:= BetValue;
    ParamByName('i_Exclude_Bet_Flg').Value:= 1;
    ExecProc;
  end;
end;

procedure TdmSwim.DeleteOldEvents(Dt: TDateTime);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Delete_Events');
    Params.ClearValues;
    ParamByName('i_Event_Dtm').Value:= IncDay(Dt, -7);
    ExecProc;
  end;
end;

procedure TdmSwim.ClearHistoryByTournir(ATournirId: Integer);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Clear_History_By_Tournir');
    Params.ClearValues;
    ParamByName('i_ATournir_Id').Value:= ATournirId;
    ExecProc;
  end;
end;

procedure TdmSwim.CloseATournir(ATournirId: Integer);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Close_ATournir');
    Params.ClearValues;
    ParamByName('i_ATournir_Id').Value:= ATournirId;
    ExecProc;
  end;
end;

procedure TdmSwim.RenumTables;
var
  LastId: Integer;
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Renum_BGamers');
    Params.ClearValues;
    ExecProc;
    LastId:= ParamValue('o_BGamer_Id');
  end;
  Database.Execute(Format(
    'alter sequence GEN_BGAMER_ID restart with %u', [LastId]));
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Renum_AGamers');
    Params.ClearValues;
    ExecProc;
    LastId:= ParamValue('o_AGamer_Id');
  end;
  Database.Execute(Format(
    'alter sequence GEN_AGAMER_ID restart with %u', [LastId]));
end;

function TdmSwim.GetBetsCount(BookerId: Integer): Integer;

begin
  result:= Database.QueryValue('select count(bet_id) from bets where Booker_ID = :BookerId', 0, [BookerId]);
end;

procedure TdmSwim.DeleteBGamer(BGamerId: Integer);
begin
  with StoredProc do
  begin
    StoredProcName:= UpperCase('Delete_BGamer');
    Params.ClearValues;
    ParamByName('i_BGamer_Id').Value:= BGamerId;
    ExecProc;
  end;
end;

initialization
  Path:= TVarList.Create;
  Path.LoadSectionFromIniFile(ProjectIniFileName, 'Path');
  Path.Text:= StringReplace(Path.Text, '=.\', '='+ExtractFilePath(ParamStr(0)),[rfReplaceAll]);
  Path['Self']:= ExtractFilePath(ParamStr(0));
  vlRestore:= TVarList.Create;
  vlRestore.LoadSectionFromIniFile(ProjectIniFileName, 'Restore');
finalization
  vlRestore.Free;
  Path.Free;
end.
