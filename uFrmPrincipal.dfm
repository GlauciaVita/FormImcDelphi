object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculo de IMC'
  ClientHeight = 297
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblAltura: TLabel
    Left = 56
    Top = 58
    Width = 67
    Height = 29
    Caption = 'Altura:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object LblPeso: TLabel
    Left = 56
    Top = 93
    Width = 52
    Height = 29
    Caption = 'Peso:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object LblGenero: TLabel
    Left = 56
    Top = 129
    Width = 79
    Height = 29
    Caption = 'Genero:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object BtnResultado: TButton
    Left = 141
    Top = 200
    Width = 97
    Height = 25
    Caption = 'Resultado'
    TabOrder = 0
    OnClick = BtnResultadoClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 453
    Height = 41
    Align = alTop
    Caption = 'Calculadora - Indice de Massa Corporal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 216
    ExplicitTop = 16
    ExplicitWidth = 185
  end
  object EdtAltura: TEdit
    Left = 141
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Digite sua altura'
  end
  object EdtPeso: TEdit
    Left = 141
    Top = 102
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Digite seu peso'
  end
  object CmBGenero: TComboBox
    Left = 141
    Top = 129
    Width = 121
    Height = 21
    Style = csDropDownList
    TabOrder = 4
    TextHint = ' Escolha o genero'
    Items.Strings = (
      'F'
      'M')
  end
end
