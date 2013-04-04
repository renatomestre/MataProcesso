object frmMain: TfrmMain
  Left = 455
  Top = 207
  Width = 466
  Height = 386
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Mata Processo v1.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblLanterna: TLabel
    Left = 336
    Top = 88
    Width = 80
    Height = 13
    Caption = 'Executando...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object btnFechar: TBitBtn
    Left = 296
    Top = 312
    Width = 153
    Height = 33
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Kind = bkClose
  end
  object btnOnOff: TBitBtn
    Left = 296
    Top = 8
    Width = 153
    Height = 57
    Caption = '&Ligar'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    OnClick = btnOnOffClick
    NumGlyphs = 2
  end
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 281
    Height = 337
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 2
    object lbl1: TLabel
      Left = 8
      Top = 16
      Width = 159
      Height = 20
      Caption = 'Comando do Windows'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 8
      Top = 80
      Width = 181
      Height = 16
      Caption = 'Par'#226'metros de execu'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 8
      Top = 104
      Width = 133
      Height = 20
      Caption = 'Nome do processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 8
      Top = 168
      Width = 246
      Height = 20
      Caption = 'Tamanho limite de uso de mem'#243'ria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 8
      Top = 224
      Width = 136
      Height = 20
      Caption = 'Usu'#225'rio do sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 88
      Top = 192
      Width = 21
      Height = 20
      Caption = 'KB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 280
      Width = 105
      Height = 20
      Caption = 'Tempo de loop'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblmilisegundos: TLabel
      Left = 96
      Top = 304
      Width = 90
      Height = 20
      Caption = '[s] segundos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtComando: TEdit
      Left = 8
      Top = 40
      Width = 73
      Height = 28
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'taskkill'
    end
    object edtNome: TEdit
      Left = 8
      Top = 126
      Width = 193
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'dllhost.exe'
    end
    object edtTamanho: TEdit
      Left = 8
      Top = 188
      Width = 73
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 2
      Text = '20000'
    end
    object edtUser: TEdit
      Left = 8
      Top = 245
      Width = 81
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'simaplic'
    end
    object edtTempo: TEdit
      Left = 8
      Top = 301
      Width = 81
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '60'
    end
  end
  object tmrTimer: TTimer
    Enabled = False
    Interval = 18000
    OnTimer = tmrTimerTimer
    Left = 352
    Top = 112
  end
end
