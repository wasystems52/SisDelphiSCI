object Calendario: TCalendario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Calend'#225'rio'
  ClientHeight = 399
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -9
  Font.Name = 'Arial Narrow'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 13
  object MonthCalendar1: TMonthCalendar
    Left = 0
    Top = 0
    Width = 691
    Height = 399
    Align = alClient
    Date = 45458.000000000000000000
    TabOrder = 0
    WeekNumbers = True
    ExplicitTop = 8
  end
end
