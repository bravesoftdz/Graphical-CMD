unit uBatchCreator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SynEdit, SynMemo, Vcl.ExtCtrls,
  SynEditHighlighter, SynHighlighterBat, Vcl.StdCtrls, SynEditMiscClasses,
  SynEditSearch, Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.Samples.Spin,
  Vcl.ExtDlgs;

type
  Tfrmbatchcreator = class(TForm)
    pnl1: TPanel;
    synm1: TSynMemo;
    synbtsyn1: TSynBatSyn;
    btn1: TButton;
    chk1: TCheckBox;
    SplitView1: TSplitView;
    img1: TImage;
    btnsave: TButton;
    btnclear: TButton;
    btnundo: TButton;
    lbl1: TLabel;
    se1: TSpinEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    chk2: TCheckBox;
    procedure btn1Click(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure btnundoClick(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure se1Change(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbatchcreator: Tfrmbatchcreator;
  path : string;

implementation

{$R *.dfm}

procedure Tfrmbatchcreator.btn1Click(Sender: TObject);
begin
  frmbatchcreator.Hide;
end;

procedure Tfrmbatchcreator.btnsaveClick(Sender: TObject);
begin
  synm1.Lines.SaveToFile('batchcreator.bat');
  path := 'batchcreator.bat';
  frmbatchcreator.Hide;
end;

procedure Tfrmbatchcreator.btnclearClick(Sender: TObject);
begin
  synm1.Clear;
  synm1.Lines.Add('@echo off')
end;

procedure Tfrmbatchcreator.btnundoClick(Sender: TObject);
begin
  synm1.Undo;
end;

procedure Tfrmbatchcreator.chk1Click(Sender: TObject);
begin
  if chk1.Checked then
    synm1.ActiveLineColor := clSilver
  else
    synm1.ActiveLineColor := clNone;
end;

procedure Tfrmbatchcreator.chk2Click(Sender: TObject);
begin
  if chk2.Checked then
    synbtsyn1.Enabled := True
  else
    synbtsyn1.Enabled := False;
end;

procedure Tfrmbatchcreator.FormShow(Sender: TObject);
begin
  synm1.SetFocus;
end;

procedure Tfrmbatchcreator.img1Click(Sender: TObject);
begin
  if SplitView1.Opened then
    SplitView1.Close
  else
    SplitView1.Open;
end;

procedure Tfrmbatchcreator.se1Change(Sender: TObject);
begin
  synm1.Font.Size := se1.Value;
end;

end.
