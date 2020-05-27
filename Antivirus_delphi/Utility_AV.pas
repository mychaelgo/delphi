
UNIT Utility_AV;

{ ==============================================================================
  Utility Antivirus (Metode Hasting CRC32)
  ==============================================================================
  kode di tulis oleh  : Ali

  Kontak Saya :
  Web-Site               : http://www.geocities.com/alisoftprg
  E-Mail                 : ali.programmer@telkom.net atau alisoftprg@yahoo.com
  Telp atau SMS          : +6285-694-348-790

  ==============================================================================
  Copyright � Ali Software - Delphi Source Code. All Rights Reserved.
  ==============================================================================
}


INTERFACE

  USES
    Windows,sysUtils,ShlObj;

  TYPE

    TInteger8 = Int64;     // Untuk Delphi 4 sampai 7


  Type
   TOnCariFile = Procedure (Path:String) of Object;

  PROCEDURE CalcCRC32 (p:  pointer; ByteCount:  DWORD; VAR CRCvalue:  DWORD);

  PROCEDURE HitungFileCRC32 (FromName:  STRING; VAR CRCvalue:  DWORD;
              VAR TotalBytes:  TInteger8;
              VAR error:  WORD);
              
 Procedure CariFile(Dir:String;SubFolder:Boolean;Ext:String;var CallBack:TOnCariFile);Stdcall;
 function BrowseDialog(const Hwn:HWND;Title: string): string;Stdcall;
 Function MsgBox(Const Hwn:HWND;Title,Text:String;Button:Integer=0):Integer;Stdcall;
 function DriveSiap(Root: string): Boolean;Stdcall;
 
 Var
  BerhentiMencari : Boolean;

 Const
//=============================================
(*        Message box Button Const           *)
YesNo           =4; //Yes or No
OkOnly          =0; // Ok Only
OKCancel        =1; // Ok or Cancel
YesNoCancel     =3; // Yes, No or Cancel
RetryCancel     =5; // Retry or Cancel
Question        =32; // Question
Information     =64; // Information
Exclamation     =48; //Exclamation
Critical        =16; //Critical
AbortRetryIgnore =2; //Abort, Retry or Ignore
//=============================================
(*        Message box Button CallBack         *)
Yes     = 6; // Yes Click
No      = 7; // NO Click
Ok      = 1; // OK Click
Abort   = 3; // Abort Click
Ignore  = 5; //Ignore Click
Retry   = 4; // Retry Click
CANCEL  = 2; // Cancel Click
//==============================================
 
IMPLEMENTATION

  USES
{$IFDEF StreamIO}
    SysUtils,
{$ENDIF}
    Dialogs,
    Classes;

  CONST
    table:  ARRAY[0..255] OF DWORD =
   ($00000000, $77073096, $EE0E612C, $990951BA,
    $076DC419, $706AF48F, $E963A535, $9E6495A3,
    $0EDB8832, $79DCB8A4, $E0D5E91E, $97D2D988,
    $09B64C2B, $7EB17CBD, $E7B82D07, $90BF1D91,
    $1DB71064, $6AB020F2, $F3B97148, $84BE41DE,
    $1ADAD47D, $6DDDE4EB, $F4D4B551, $83D385C7,
    $136C9856, $646BA8C0, $FD62F97A, $8A65C9EC,
    $14015C4F, $63066CD9, $FA0F3D63, $8D080DF5,
    $3B6E20C8, $4C69105E, $D56041E4, $A2677172,
    $3C03E4D1, $4B04D447, $D20D85FD, $A50AB56B,
    $35B5A8FA, $42B2986C, $DBBBC9D6, $ACBCF940,
    $32D86CE3, $45DF5C75, $DCD60DCF, $ABD13D59,
    $26D930AC, $51DE003A, $C8D75180, $BFD06116,
    $21B4F4B5, $56B3C423, $CFBA9599, $B8BDA50F,
    $2802B89E, $5F058808, $C60CD9B2, $B10BE924,
    $2F6F7C87, $58684C11, $C1611DAB, $B6662D3D,

    $76DC4190, $01DB7106, $98D220BC, $EFD5102A,
    $71B18589, $06B6B51F, $9FBFE4A5, $E8B8D433,
    $7807C9A2, $0F00F934, $9609A88E, $E10E9818,
    $7F6A0DBB, $086D3D2D, $91646C97, $E6635C01,
    $6B6B51F4, $1C6C6162, $856530D8, $F262004E,
    $6C0695ED, $1B01A57B, $8208F4C1, $F50FC457,
    $65B0D9C6, $12B7E950, $8BBEB8EA, $FCB9887C,
    $62DD1DDF, $15DA2D49, $8CD37CF3, $FBD44C65,
    $4DB26158, $3AB551CE, $A3BC0074, $D4BB30E2,
    $4ADFA541, $3DD895D7, $A4D1C46D, $D3D6F4FB,
    $4369E96A, $346ED9FC, $AD678846, $DA60B8D0,
    $44042D73, $33031DE5, $AA0A4C5F, $DD0D7CC9,
    $5005713C, $270241AA, $BE0B1010, $C90C2086,
    $5768B525, $206F85B3, $B966D409, $CE61E49F,
    $5EDEF90E, $29D9C998, $B0D09822, $C7D7A8B4,
    $59B33D17, $2EB40D81, $B7BD5C3B, $C0BA6CAD,

    $EDB88320, $9ABFB3B6, $03B6E20C, $74B1D29A,
    $EAD54739, $9DD277AF, $04DB2615, $73DC1683,
    $E3630B12, $94643B84, $0D6D6A3E, $7A6A5AA8,
    $E40ECF0B, $9309FF9D, $0A00AE27, $7D079EB1,
    $F00F9344, $8708A3D2, $1E01F268, $6906C2FE,
    $F762575D, $806567CB, $196C3671, $6E6B06E7,
    $FED41B76, $89D32BE0, $10DA7A5A, $67DD4ACC,
    $F9B9DF6F, $8EBEEFF9, $17B7BE43, $60B08ED5,
    $D6D6A3E8, $A1D1937E, $38D8C2C4, $4FDFF252,
    $D1BB67F1, $A6BC5767, $3FB506DD, $48B2364B,
    $D80D2BDA, $AF0A1B4C, $36034AF6, $41047A60,
    $DF60EFC3, $A867DF55, $316E8EEF, $4669BE79,
    $CB61B38C, $BC66831A, $256FD2A0, $5268E236,
    $CC0C7795, $BB0B4703, $220216B9, $5505262F,
    $C5BA3BBE, $B2BD0B28, $2BB45A92, $5CB36A04,
    $C2D7FFA7, $B5D0CF31, $2CD99E8B, $5BDEAE1D,

    $9B64C2B0, $EC63F226, $756AA39C, $026D930A,
    $9C0906A9, $EB0E363F, $72076785, $05005713,
    $95BF4A82, $E2B87A14, $7BB12BAE, $0CB61B38,
    $92D28E9B, $E5D5BE0D, $7CDCEFB7, $0BDBDF21,
    $86D3D2D4, $F1D4E242, $68DDB3F8, $1FDA836E,
    $81BE16CD, $F6B9265B, $6FB077E1, $18B74777,
    $88085AE6, $FF0F6A70, $66063BCA, $11010B5C,
    $8F659EFF, $F862AE69, $616BFFD3, $166CCF45,
    $A00AE278, $D70DD2EE, $4E048354, $3903B3C2,
    $A7672661, $D06016F7, $4969474D, $3E6E77DB,
    $AED16A4A, $D9D65ADC, $40DF0B66, $37D83BF0,
    $A9BCAE53, $DEBB9EC5, $47B2CF7F, $30B5FFE9,
    $BDBDF21C, $CABAC28A, $53B39330, $24B4A3A6,
    $BAD03605, $CDD70693, $54DE5729, $23D967BF,
    $B3667A2E, $C4614AB8, $5D681B02, $2A6F2B94,
    $B40BBE37, $C30C8EA1, $5A05DF1B, $2D02EF8D);




  PROCEDURE CalcCRC32 (p:  pointer; ByteCount:  DWORD; VAR CRCValue:  DWORD);

   VAR
    i:  DWORD;
    q:  ^BYTE;
  BEGIN
    q := p;
    FOR   i := 0 TO ByteCount-1 DO BEGIN
      CRCvalue := (CRCvalue SHR 8)  XOR
                  Table[ q^ XOR (CRCvalue AND $000000FF) ];
      INC(q)
    END
  END;



  PROCEDURE HitungFileCRC32 (FromName:  STRING; VAR CRCvalue:  DWORD;
            VAR TotalBytes:  TInteger8;
            VAR error:  WORD);
    CONST
     BufferSize = $8000;
    TYPE
      BufferIndex = 0..BufferSize-1;
      TBuffer     = ARRAY[BufferIndex] OF BYTE;
      pBuffer     = ^TBuffer;

    VAR
      BytesRead:  INTEGER;
      FromFile :  FILE;
      IOBuffer :  pBuffer;
  BEGIN
    New(IOBuffer);
    TRY
      FileMode := 0;
      CRCValue := $FFFFFFFF;
      ASSIGN (FromFile,FromName);
      {$I-} RESET (FromFile,1); {$I+}
      error := IOResult;
      IF   error = 0
      THEN BEGIN
        TotalBytes := 0;

        REPEAT

          {$I-}
          BlockRead (FromFile, IOBuffer^, BufferSize, BytesRead);
          {$I+}
          error := IOResult;
          IF   (error = 0) AND (BytesRead > 0)
          THEN BEGIN
            CalcCRC32 (IOBuffer, BytesRead, CRCvalue);
            TotalBytes := TotalBytes + BytesRead;
          END
        UNTIL (BytesRead = 0) OR (error > 0);

        CLOSE (FromFile)
      END;
      CRCvalue := NOT CRCvalue
    FINALLY
      Dispose(IOBuffer)
    END
  END;

//================================= Pencarian File =============================
Function RightStr(Str:String;Count:Integer=1):String;
Var i:Integer;
Begin
  For i:=Length(Str) downto (Length(Str)+1)-(Count) do
   Result:=Str[i] + Result;
End;

Function IsFile(Const Data:String):Boolean;
Var Ext,Fln:String;
Begin
 Result:=False;
 Ext:=ExtractFileExt(Data);
 Fln:=RightStr(ExtractFileName(Data),Length(ExtractFileName(Data))-1);
 If ((Fln <> Ext) And FileExists(Data)) Then
  Result:=True;
End;

procedure FindFiles(StartDir, FileMask: string; var CallBack:TOnCariFile);
var
  SR: TSearchRec;
  DirList: TStringList;
  IsFound: Boolean;
  i: integer;
begin
  if StartDir[length(StartDir)] <> '\' then
    StartDir := StartDir + '\';


  IsFound :=  FindFirst(StartDir+FileMask, faAnyFile-faDirectory, SR) = 0;
  Repeat
   If (Sr.Attr <> faDirectory) Then
   Begin
    If Assigned(CallBack) then
     CallBack(StartDir + SR.Name);

    IsFound := FindNext(SR) = 0;
   End;
  Until Not IsFound or (BerhentiMencari);
  FindClose(SR);

  DirList := TStringList.Create;
  IsFound := FindFirst(StartDir+'*.*', faDirectory, SR) = 0;
  repeat
  if ((SR.Attr and faDirectory) <> 0) and (SR.Name[1] <> '.') then
      DirList.Add(StartDir + SR.Name);

    IsFound := FindNext(SR) = 0;
  Until Not IsFound or (BerhentiMencari);
  FindClose(SR);


  for i := 0 to DirList.Count - 1 do
    FindFiles(DirList[i], FileMask,callBack);

  FreeAndNil(dirList);
end;


Procedure CariFile(Dir:String;SubFolder:Boolean;Ext:String;var CallBack:TOnCariFile);
Var
 IsFound:Boolean;
 Sr:TSearchRec;
Begin

 If Not SubFolder Then Begin
   IsFound :=FindFirst(Dir+Ext, faAnyFile-faDirectory, SR) = 0;
    Repeat
     If IsFile(Dir + SR.Name) Then
     Begin
     If Assigned(CallBack) then
      CallBack(Dir + SR.Name);

     IsFound := FindNext(SR) = 0;
     End;
    Until Not IsFound or (BerhentiMencari);
   FindClose(SR);
 End
  Else Begin
   FindFiles(Dir,Ext,CallBack);
  End;
End;
//==============================================================================

function BrowseDialog(const Hwn:HWND;Title: string): string;
var
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  Result:='';
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  with BrowseInfo do begin
    hwndOwner := Hwn;
    pszDisplayName := @DisplayName;
    lpszTitle := PChar(Title);
    ulFlags := BIF_RETURNONLYFSDIRS;
  end;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then begin
    SHGetPathFromIDList(lpItemID, TempPath);
    Result := TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;

Function MsgBox(Const Hwn:HWND;Title,Text:String;Button:Integer=0):Integer;
Begin
 Result := MessageBox(Hwn,Pchar(Text),Pchar(Title),Button);
End;

function DriveSiap(Root: string): Boolean;
var
  Oem:      Cardinal;
  Dw1, Dw2: DWORD;
begin
  if Length(Root) = 1 then Root := Root + ':\';
  Result := GetVolumeInformation(PChar(Root), nil, 0, nil, Dw1, Dw2, nil, 0);
end;

END.