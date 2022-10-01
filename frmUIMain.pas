unit frmUIMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TUIMain = class(TForm)
    btnStart: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
  private
    { Private declarations }
    procedure DoLongRunningWork;
  public
    { Public declarations }
  end;

var
  UIMain: TUIMain;

implementation

uses
  System.IOUtils
, frmUISecondOne
  ;

{$R *.dfm}

procedure TUIMain.FormCreate(Sender: TObject);
begin
  self.top := 0;
  self.Left := 0;
end;

procedure TUIMain.btnStartClick(Sender: TObject);
begin
  SecondForm.Show;
  DoLongRunningWork;
end;

procedure TUIMain.DoLongRunningWork;
var
  I: Integer;
  lTop: integer;
begin
  lTop := 10;
  SecondForm.ShowProgress;
  for I := 1 to lTop do
    begin
      SecondForm.UpdateMsg('Processing item ' + inttostr(I) + ' of ' + inttostr(lTop));
      sleep(1000);
    end;
  SecondForm.StopProgress;
  SecondForm.close;
end;

end.
