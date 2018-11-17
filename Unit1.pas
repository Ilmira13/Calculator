unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button18: TButton;
    Button19: TButton;
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a, b: string;
  c: integer;
  f, t, tt: int64;
implementation

{$R *.dfm}

 // ����������� ������� ������ ������, �������
procedure CalculateAndShowMethodTime(f, t, tt: Int64);
begin
  // QueryPerformanceFrequency(f) - ���������� ������ ���������� � �������
  // QueryPerformanceCounter(t) ��������� ��������� ����� ����� ���������� ������
  // QueryPerformanceCounter(tt) ��������� ��������� ����� ����� ���������� ������

  // ������ ������� � ����� �� �����
  ShowMessage('����� ����������, �: ' + FloatToStr((tt - t) / f));
end;


procedure TForm1.Button10Click(Sender: TObject);
begin
  a := a + '3';
  Edit1.Text := Edit1.Text + '3';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  a := a + '4';
  Edit1.Text := Edit1.Text + '4';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  a := a + '5';
  Edit1.Text := Edit1.Text + '5';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  a := a + '6';
  Edit1.Text := Edit1.Text + '6';
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  a := a + '7';
  Edit1.Text := Edit1.Text + '7';
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  a := a + '8';
  Edit1.Text := Edit1.Text + '8';
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  a := a + '9';
  Edit1.Text := Edit1.Text + '9';
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  a := a + '0';
  Edit1.Text := Edit1.Text + '0';
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  a := a + '.'; // ����� ��� �������, ������� �� �������� � ������ ���������� ->
                // -> ���� � ������ -> ������������ ��������� -> ������� ��� �����
  Edit1.Text := Edit1.Text + '.';
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  s: string;
  i: integer;
begin
  For i := 1 to Length(Edit1.Text) - 1 do
      s := s + Edit1.Text[i];
      Edit1.Text := s;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + ' + ';
  b := a;
  a := '';
  c := 1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + ' - ';
  b := a;
  a := '';
  c := 2;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + ' / ';
  b := a;
  a := '';
  c := 3;
 end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   case c of
     {+} 1 : Edit1.Text := Edit1.Text + ' = ' + FloatToStr(StrToFloat(a) + StrToFloat(b));
     {-} 2 :
             Edit1.Text := Edit1.Text + ' = ' + FloatToStr(StrToFloat(a) - StrToFloat(b));
     {/} 3 :
               if StrToFloat(b) <> 0 then
               begin
                 Edit1.Text := Edit1.Text + ' = ' + FloatToStr(StrToFloat(a) / StrToFloat(b));
               end
               else
               begin
               ShowMessage('��� �������� �� ���� ������?');
               end;
   end;



end;


procedure TForm1.Button6Click(Sender: TObject);
begin
  QueryPerformanceFrequency(f);
  QueryPerformanceCounter(t);
  Edit1.Text := '';
  QueryPerformanceCounter(tt);
  CalculateAndShowMethodTime(f, t, tt);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  a := a + '0';
  Edit1.Text := Edit1.Text + '0';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  a := a + '1';
  Edit1.Text := Edit1.Text + '1';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  a := a + '2';
  Edit1.Text := Edit1.Text + '2';
end;



end.
