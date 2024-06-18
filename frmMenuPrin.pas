unit frmMenuPrin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.AppEvnts;

type
  TmenuPrin = class(TForm)
    ImageList1: TImageList;
    ActionList1: TActionList;
    Cad_CliFor: TAction;
    Cad_Prof: TAction;
    Cad_Transp: TAction;
    Cad_Autor: TAction;
    Cad_Autoria: TAction;
    Logoff: TAction;
    Sair: TAction;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Estoque1: TMenuItem;
    Relatrios1: TMenuItem;
    Utilitrios1: TMenuItem;
    Ferramentas1: TMenuItem;
    ClientesFornecedores1: TMenuItem;
    Professores1: TMenuItem;
    ransportadoras1: TMenuItem;
    Autores1: TMenuItem;
    Autoria1: TMenuItem;
    N1: TMenuItem;
    Vendedores1: TMenuItem;
    abelasAuxiliares1: TMenuItem;
    N2: TMenuItem;
    Logoffde1: TMenuItem;
    SairdoPrograma1: TMenuItem;
    Cad_VendInt: TAction;
    Cad_VendExt: TAction;
    Tab_Ativ: TAction;
    Tab_Categ: TAction;
    Tab_Ufs: TAction;
    Cad_Livro: TAction;
    Cad_EntLiv: TAction;
    Ut_Calc: TAction;
    Ut_Calend: TAction;
    Ut_BlocoNot: TAction;
    Ut_WE: TAction;
    Ut_IE: TAction;
    Ft_Usuarios: TAction;
    Ft_Perfil: TAction;
    VendedoresInternos1: TMenuItem;
    VendedoresInternos2: TMenuItem;
    abeladeAtividades1: TMenuItem;
    abeladeCategorias1: TMenuItem;
    abeladeUnidadesFederativas1: TMenuItem;
    CadastrodeLivros1: TMenuItem;
    EntradadelivrosnoEstoque1: TMenuItem;
    Calculadora1: TMenuItem;
    Calendrios1: TMenuItem;
    BlocodeNotas1: TMenuItem;
    WindowsExplorer1: TMenuItem;
    InternetExplorer1: TMenuItem;
    Usurios1: TMenuItem;
    PerfisdeUsurios1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ImageList2: TImageList;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
    procedure Ut_CalcExecute(Sender: TObject);
    procedure Ut_BlocoNotExecute(Sender: TObject);
    procedure Ut_WEExecute(Sender: TObject);
    procedure Ut_IEExecute(Sender: TObject);
    procedure Ut_CalendExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menuPrin: TmenuPrin;

implementation

{$R *.dfm}

uses frmCalendario;

procedure TmenuPrin.ApplicationEvents1Hint(Sender: TObject);
begin
  StatusBar1.Panels[3].Text := ' ' + Application.Hint;
end;

procedure TmenuPrin.FormActivate(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := ' ' + formatdatetime(' hh:nn', Now);
  StatusBar1.Panels[1].Text :=
    formatdatetime(' dddd", "dd" de "mmmm" de "yyyy', Now);

end;

procedure TmenuPrin.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := ' ' + formatdatetime(' hh:nn', Now);
end;

procedure TmenuPrin.Ut_BlocoNotExecute(Sender: TObject);
begin
  winexec('C:\WINDOWS\system32\notepad.exe', SW_SHOWNORMAL);
end;

procedure TmenuPrin.Ut_CalcExecute(Sender: TObject);
begin
  winexec('C:\Windows\System32\calc.exe', SW_SHOWNORMAL);
end;

procedure TmenuPrin.Ut_CalendExecute(Sender: TObject);
begin
  Application.CreateForm(TCalendario, Calendario);
  Calendario.ShowModal;
  Calendario.Free;
end;

procedure TmenuPrin.Ut_IEExecute(Sender: TObject);
begin
  winexec('C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe',
    SW_SHOWNORMAL);
end;

procedure TmenuPrin.Ut_WEExecute(Sender: TObject);
begin
  winexec('C:\Windows\explorer.exe', SW_SHOWNORMAL);
end;

end.
