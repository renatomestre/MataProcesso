unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ShellAPI, StdCtrls, Buttons;

type
  TfrmMain = class(TForm)
    tmrTimer: TTimer;
    btnFechar: TBitBtn;
    btnOnOff: TBitBtn;
    pnl1: TPanel;
    edtComando: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtNome: TEdit;
    edtTamanho: TEdit;
    edtUser: TEdit;
    lbl6: TLabel;
    lblLanterna: TLabel;
    edtTempo: TEdit;
    Label1: TLabel;
    lblmilisegundos: TLabel;
    procedure tmrTimerTimer(Sender: TObject);
    procedure btnOnOffClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

  nome:     string;
  tamanho:  Integer;
  tempo:    Integer;
  user:     string;
  comando:  string;

implementation

{$R *.dfm}

procedure TfrmMain.tmrTimerTimer(Sender: TObject);
begin
  lblLanterna.Visible := not lblLanterna.Visible;
                                         
  WinExec(PChar(comando + ' /F /IM ' + nome + ' /FI "MEMUSAGE gt ' + IntToStr(tamanho) + '" /FI "username eq ' + user + '"'),SW_HIDE);
end;

procedure TfrmMain.btnOnOffClick(Sender: TObject);
begin
  if btnOnOff.Caption = '&Ligar' then
    begin
      comando := edtComando.Text;
      nome    := edtNome.Text;

      try
        tamanho := StrToInt(edtTamanho.Text);
      except
        tamanho := 1024;
      end;

      try
        tempo := StrToInt(edtTempo.Text);
      except
        tempo := 60;
      end;

      tmrTimer.Interval := tempo * 1000;

      user := edtUser.Text;

      edtNome.Enabled := False;
      edtTamanho.Enabled := False;
      edtTempo.Enabled := False;
      edtUser.Enabled := False;

      btnOnOff.Caption := '&Desligar';
      tmrTimer.Enabled := True;

      lblLanterna.Visible := True;
    end
  else
    begin
      edtNome.Enabled := True;
      edtTamanho.Enabled := True;
      edtTempo.Enabled := True;      
      edtUser.Enabled := True;

      btnOnOff.Caption := '&Ligar';
      tmrTimer.Enabled := False;

      lblLanterna.Visible := False;
    end;
end;

end.
