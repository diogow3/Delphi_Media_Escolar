unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math;

type
  TfrmPrincipal = class(TForm)
    edtNota1: TEdit;
    edtNota2: TEdit;
    edtNota3: TEdit;
    btnCalcular: TButton;
    lblMedia: TLabel;
    lblNota1: TLabel;
    lblNota2: TLabel;
    lblNota3: TLabel;
    lblAprocavao: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    function VerificarIntervalo(nota: double): boolean;
    function CalcularMedia(num1, num2, num3: double): double;
    function CalcularAprovacao(num: double): string;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  nota1: double;
  nota2: double;
  nota3: double;
  media: double;

begin
  if  (edtNota1.Text = '') or
      (edtNota2.Text = '') or
      (edtNota3.Text = '') then
  begin
    ShowMessage('Campos não podem ser vazios');
    exit;
  end;


  if  TryStrToFloat(edtNota1.Text, nota1) and
      TryStrToFloat(edtNota2.Text, nota2) and
      TryStrToFloat(edtNota3.Text, nota3) then
  else
  begin
    ShowMessage('Digite somente números');
    exit;
  end;

  if  VerificarIntervalo(nota1) or
      VerificarIntervalo(nota2) or
      VerificarIntervalo(nota3) then
  begin
    ShowMessage('A nota deve ser entre 0 e 10');
    exit;
  end;

  media := CalcularMedia(nota1, nota2, nota3);
  lblMedia.Caption := FloatToStr(media);

  lblAprocavao.Caption := CalcularAprovacao(media);

end;

function TfrmPrincipal.CalcularAprovacao(num: double): string;
begin
  if num < 5 then
    Result := 'Reprovado(a)'
  else if num < 7 then
    Result := 'Recuperação'
  else
    Result := 'Aprovado(a)';
end;

function TfrmPrincipal.CalcularMedia(num1, num2, num3: double): double;
var n: double;
begin
  n := (num1 + num2 + num3) / 3;
  Result := RoundTo(n, -2);
end;

function TfrmPrincipal.VerificarIntervalo(nota: double): boolean;
begin
  if (nota < 0) or (nota > 10) then
    Result := True
  else
    Result := False;
end;

end.
