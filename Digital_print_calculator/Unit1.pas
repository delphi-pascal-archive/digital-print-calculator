// ===============================================================================
// |    THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF      |
// |    ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO    |
// |    THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A         |
// |    PARTICULAR PURPOSE.                                                    |
// |    Copyright (c)2001-2003  ADMINSYSTEM.NET                         |
// |
// | FILE: Unit.pas
// | SYNOPSIS: SAMPLE FILE FOR ANSMTP COM OBJECT (JScript.NET)
// |
// =================================================================================*/

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils;

type
  Tgun = class(TForm)
    btnSend: TButton;
    Label1: TLabel;
    txtBody: TMemo;
    Status: TLabel;

    procedure btnSendClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function  fnStringToWideString( const src: string ): PWideChar;
    { Private declarations }
    procedure CreateObjectInNeed();
    procedure SendEmail();
    { event handlers of OBJ of ANSMTP }
    procedure OnClosed(Sender: TObject);
    procedure OnSending(Sender: TObject; lSent: Integer; lTotal: Integer);
    procedure OnConnected(Sender: TObject);
    procedure OnAuthenticated(Sender: TObject);
    procedure OnError(Sender: TObject; lError: Integer; const ErrDescription: WideString);
  public
    { Public declarations }
  end;

var
  gun: Tgun;

  m_bError : Boolean;
  m_arAttachments : TStringList;
  SystemTime: TSystemTime;

implementation

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
// fnStringToWideString
////////////////////////////////////////////////////////////////////////////////
function Tgun.fnStringToWideString( const src: string): PWideChar;
var
  wPChar: PWideChar;
  nSize: Integer;
begin
  nSize := sizeof(WideChar)*Length(src) + 1;
  GetMem( wPChar, nSize );
  fnStringToWideString := StringToWideChar( src, wPChar, nSize );
end;

////////////////////////////////////////////////////////////////////////////////
// btnSendClick
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.btnSendClick(Sender: TObject);
begin
  if btnSend.Caption = 'Bagla' Then
  begin
    SendEmail();
  end
  else
  begin
   { m_oSmtp.Terminate();
    Status.Caption := 'Task has been cancelled';
    btnSend.Caption := 'Bagla';}
    halt(0);
  end
end;

////////////////////////////////////////////////////////////////////////////////
// SendEmail
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.SendEmail();
var
  vServerAddr: OleVariant;
  vUserName: OleVariant;
  vPassword: OleVariant;
  vSubject: OleVariant;
  vBody: OleVariant;
  vSenderAddr: OleVariant;
  vRecipients: OleVariant;
  vFileName: OleVariant;
  nCount, i: Integer;

begin

end;

////////////////////////////////////////////////////////////////////////////////
// CreateObjectInNeed
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.CreateObjectInNeed();
begin

end;

////////////////////////////////////////////////////////////////////////////////
// OnConnected
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.OnConnected(Sender: TObject);
begin
  Status.Caption := 'Connected';
end;

////////////////////////////////////////////////////////////////////////////////
// OnClosed
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.OnClosed(Sender: TObject);
begin
  if not m_bError then
  begin
    Status.Caption := 'Completed';
  end;
  btnSend.Caption := 'SON';
end;

////////////////////////////////////////////////////////////////////////////////
// OnError
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.OnError(Sender: TObject;
                          lError: Integer; const ErrDescription: WideString );
var
  vError: OleVariant;
begin
  vError := ErrDescription;
  m_bError := True;
  btnSend.Caption := 'Send';
  Status.Caption := vError;
end;

////////////////////////////////////////////////////////////////////////////////
// OnSending
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.OnSending(Sender: TObject; lSent: Integer; lTotal: Integer );
begin
  Status.Caption := 'Sending ' + IntToStr(lSent) + '/' + IntToStr(lTotal);
end;

////////////////////////////////////////////////////////////////////////////////
// OnAuthenticated
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.OnAuthenticated(Sender: TObject);
begin
  Status.Caption := 'Authenticated';
end;

////////////////////////////////////////////////////////////////////////////////
// btnClearClick
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.btnClearClick(Sender: TObject);
begin
  m_arAttachments.Clear();

end;

////////////////////////////////////////////////////////////////////////////////
// btnAddClick
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.btnAddClick(Sender: TObject);
var
  pFileDlg : TOpenDialog;
  fileName : string;
  tempName : string;
  i: Integer;
begin
  pFileDlg := TOpenDialog.Create(gun);
  if pFileDlg.Execute() then
  begin
    fileName := pFileDlg.FileName;
    m_arAttachments.Add( fileName );
    i := Length( fileName ) - 1;
    tempName := '';
    while (( i >= 0 ) and (AnsiMidStr( fileName, i, 1 ) <> '\' )) do
    begin
      tempName := tempName + AnsiMidStr( fileName, i, 1 );
      i := i - 1;
    end;
    tempName := AnsiReverseString( tempName );

  end;
  pFileDlg.Destroy();
end;

////////////////////////////////////////////////////////////////////////////////
// FormCreate
////////////////////////////////////////////////////////////////////////////////
procedure Tgun.FormCreate(Sender: TObject);
begin
  CreateObjectInNeed();

end;

procedure Tgun.FormShow(Sender: TObject);
begin
   GetLocalTime(SystemTime);
   if fileexists(datetostr(SystemTimeToDateTime(SystemTime))) then
  txtbody.Lines.LoadFromFile(datetostr(SystemTimeToDateTime(SystemTime)));
end;

end.
