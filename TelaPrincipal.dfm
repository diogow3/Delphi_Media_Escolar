object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Media Escolar'
  ClientHeight = 554
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblMedia: TLabel
    Left = 48
    Top = 352
    Width = 53
    Height = 25
    Caption = 'M'#233'dia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblNota1: TLabel
    Left = 48
    Top = 27
    Width = 63
    Height = 30
    Caption = 'Nota 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblNota2: TLabel
    Left = 48
    Top = 94
    Width = 63
    Height = 30
    Caption = 'Nota 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblNota3: TLabel
    Left = 48
    Top = 171
    Width = 63
    Height = 30
    Caption = 'Nota 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblAprocavao: TLabel
    Left = 48
    Top = 408
    Width = 90
    Height = 25
    Caption = 'Aprova'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtNota1: TEdit
    Left = 48
    Top = 56
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtNota2: TEdit
    Left = 48
    Top = 123
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtNota3: TEdit
    Left = 48
    Top = 200
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object btnCalcular: TButton
    Left = 48
    Top = 280
    Width = 121
    Height = 25
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
