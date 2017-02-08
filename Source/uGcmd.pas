unit uGcmd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DosCommand, uBatchCreator, ShellAPI;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    pnl1: TPanel;
    edtfile: TEdit;
    btn1: TButton;
    btn2: TButton;
    dscmnd1: TDosCommand;
    btn3: TButton;
    btn4: TButton;
    flpndlg1: TFileOpenDialog;
    btn5: TButton;
    pnl2: TPanel;
    lbl1: TLabel;
    btn6: TButton;
    btn7: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  if flpndlg1.Execute then
    edtfile.Text := flpndlg1.FileName;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  dscmnd1.CommandLine := edtfile.Text;
  dscmnd1.OutputLines := mmo1.Lines;
  dscmnd1.Execute;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  mmo1.Clear;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  mmo1.Lines.SaveToFile('export.txt');
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  dscmnd1.Stop;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  ShellExecute(self.WindowHandle,'open',PChar('https://github.com/Inforcer25'),nil,nil, SW_SHOWNORMAL);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  frmbatchcreator.Show;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  edtfile.Text := path;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  btn1.SetFocus;
end;

end.
