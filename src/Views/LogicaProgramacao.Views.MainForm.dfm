object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 324
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 447
    Height = 324
    ActivePage = tsExercicio01
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object tsExercicio01: TTabSheet
      Caption = 'Exerc'#237'cio 01'
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 83
        Height = 13
        Caption = 'Digite um n'#250'mero'
      end
      object eExercicio01: TEdit
        Left = 16
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object bExercicio01: TButton
        Left = 168
        Top = 33
        Width = 75
        Height = 25
        Caption = 'Calcular'
        TabOrder = 1
        OnClick = bExercicio01Click
      end
      object mExercicio01: TMemo
        Left = 16
        Top = 64
        Width = 409
        Height = 217
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
    object tsExercicio02: TTabSheet
      Caption = 'Exerc'#237'cio 02'
      ImageIndex = 1
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 83
        Height = 13
        Caption = 'Digite um n'#250'mero'
      end
      object Label3: TLabel
        Left = 168
        Top = 16
        Width = 95
        Height = 13
        Caption = 'Digite outro n'#250'mero'
      end
      object e01Exercicio02: TEdit
        Left = 16
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object bExercicio02: TButton
        Left = 344
        Top = 33
        Width = 75
        Height = 25
        Caption = 'Calcular'
        TabOrder = 2
        OnClick = bExercicio02Click
      end
      object mExercicio02: TMemo
        Left = 16
        Top = 64
        Width = 409
        Height = 217
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object e02Exercicio02: TEdit
        Left = 168
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 1
      end
    end
    object tsExercicio03: TTabSheet
      Caption = 'Exerc'#237'cio 03'
      ImageIndex = 2
      object Label4: TLabel
        Left = 16
        Top = 16
        Width = 83
        Height = 13
        Caption = 'Digite um n'#250'mero'
      end
      object eExercicio03: TEdit
        Left = 16
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object bExercicio03: TButton
        Left = 344
        Top = 33
        Width = 75
        Height = 25
        Caption = 'Calcular'
        TabOrder = 1
        OnClick = bExercicio03Click
      end
      object mExercicio03: TMemo
        Left = 16
        Top = 64
        Width = 409
        Height = 217
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
    object tsExercicio04: TTabSheet
      Caption = 'Exerc'#237'cio 04'
      ImageIndex = 3
      object bExercicio04: TButton
        Left = 16
        Top = 33
        Width = 75
        Height = 25
        Caption = 'Calcular'
        TabOrder = 0
        OnClick = bExercicio04Click
      end
      object mExercicio04: TMemo
        Left = 16
        Top = 64
        Width = 409
        Height = 217
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
    object tsExercicio05: TTabSheet
      Caption = 'Exerc'#237'cio 05'
      ImageIndex = 4
      object Label5: TLabel
        Left = 16
        Top = 16
        Width = 83
        Height = 13
        Caption = 'Digite um n'#250'mero'
      end
      object Label6: TLabel
        Left = 168
        Top = 16
        Width = 95
        Height = 13
        Caption = 'Digite outro n'#250'mero'
      end
      object e01Exercicio05: TEdit
        Left = 16
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object mExercicio05: TMemo
        Left = 16
        Top = 64
        Width = 409
        Height = 217
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object e02Exercicio05: TEdit
        Left = 168
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object bExercicio05: TButton
        Left = 350
        Top = 33
        Width = 75
        Height = 25
        Caption = 'Calcular'
        TabOrder = 2
        OnClick = bExercicio05Click
      end
    end
  end
end
