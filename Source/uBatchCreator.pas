unit uBatchCreator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SynEdit, SynMemo, Vcl.ExtCtrls,
  SynEditHighlighter, SynHighlighterBat, Vcl.StdCtrls, SynEditMiscClasses,
  SynEditSearch;

type
  Tfrmbatchcreator = class(TForm)
    pnl1: TPanel;
    synm1: TSynMemo;
    synbtsyn1: TSynBatSyn;
    btn1: TButton;
    syndtsrch1: TSynEditSearch;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
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

procedure Tfrmbatchcreator.btn2Click(Sender: TObject);
begin
  synm1.Lines.SaveToFile('batchcreator.bat');
  path := 'batchcreator.bat';
  frmbatchcreator.Hide;
end;

procedure Tfrmbatchcreator.btn3Click(Sender: TObject);
begin
  synm1.Clear;
  synm1.Lines.Add('@echo off')
end;

procedure Tfrmbatchcreator.btn4Click(Sender: TObject);
begin
  synm1.Undo;
end;

end.
