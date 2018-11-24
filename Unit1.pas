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
    Button17: TButton;
    Button7: TButton;
    Edit2: TEdit;
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
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a, b, bb: string;
  c: integer = 0;
  f, t, tt: Int64;
implementation

{$R *.dfm}

 // Определение времени работы метода, секунды
procedure CalculateAndShowMethodTime(f, t, tt: Int64);
begin
  // QueryPerformanceFrequency(f) - количество тактов процессора в секунду
  // QueryPerformanceCounter(t) показания счётчиков такта перед выполннием метода
  // QueryPerformanceCounter(tt) показания счётчиков такта после выполнения метода

  // Расчёт времени и вывод на экран
  ShowMessage('Время вычисления, с: ' + FloatToStr((tt - t) / f));
end;

procedure Oper(aa, bb : string; c : integer; Edit1 : TEdit);
begin
   Edit1.Text := '';
 case c of // предыдущий операнд
  {не было} 0 : b := aa;
  {+} 1 : b := FloatToStr(StrToFloat(bb) + StrToFloat(aa));
  {-} 2 : b := FloatToStr(StrToFloat(bb) - StrToFloat(aa));
  {*} 3 : b := FloatToStr(StrToFloat(bb) * StrToFloat(aa));
  {/} 4 : if StrToFloat(aa) <> 0 then
               begin
                  b := FloatToStr(StrToFloat(bb) / StrToFloat(aa));
               end
               else
               begin
                  ShowMessage('Деление на ноль');
               end;
  end;
   bb := b; // почему-то b при выходе из функции возвращается в значение по умолчанию
   a := '';
   Edit1.Text := bb;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := a + '3';
  Edit1.Text := Edit1.Text + '3';
  Edit2.Text := Edit2.Text + '3';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := a + '4';
  Edit1.Text := Edit1.Text + '4';
  Edit2.Text := Edit2.Text + '4';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := a + '5';
  Edit1.Text := Edit1.Text + '5';
  Edit2.Text := Edit2.Text + '5';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := a + '6';
  Edit1.Text := Edit1.Text + '6';
  Edit2.Text := Edit2.Text + '6';

end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := a + '7';
  Edit1.Text := Edit1.Text + '7';
  Edit2.Text := Edit2.Text + '7';
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := a + '8';
  Edit1.Text := Edit1.Text + '8';
  Edit2.Text := Edit2.Text + '8';
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := a + '9';
  Edit1.Text := Edit1.Text + '9';
  Edit2.Text := Edit2.Text + '9';
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := a + '0';
  Edit1.Text := Edit1.Text + '0';
  Edit2.Text := Edit2.Text + '0';
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  a := a + '.'; // точка или запятая, зависит от настроек в панели управления ->
                // -> часы и регион -> региональные стандарты -> вкладка про числа
  Edit1.Text := Edit1.Text + '.';
  Edit2.Text := Edit2.Text + '.';
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

procedure TForm1.Button1Click(Sender: TObject); // +
begin
  Edit2.Text := Edit2.Text + ' + ';
  Oper(a, b, c, Edit1);
  c := 1;
end;

procedure TForm1.Button2Click(Sender: TObject); // -
begin
  Edit2.Text := Edit2.Text + ' - ';
  Oper(a, b, c, Edit1);
  c := 2;
end;

procedure TForm1.Button3Click(Sender: TObject); // /
begin
  Edit2.Text := Edit2.Text + ' / ';
  Oper(a, b, c, Edit1);
  c := 3;
 end;

procedure TForm1.Button4Click(Sender: TObject); // *
begin
  Edit2.Text := Edit2.Text + ' * ';
  Oper(a, b, c, Edit1);
  c := 4;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  QueryPerformanceFrequency(f);
  QueryPerformanceCounter(t);
  Oper(a, b, c, Edit1);
  QueryPerformanceCounter(tt);
  CalculateAndShowMethodTime(f, t, tt);
  Edit1.Text := Edit1.Text + '; '; // можно вводить новое выражени без очистки
  b := '';
end;


procedure TForm1.Button6Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := '';
  b := '';
  c := 0;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  ShowMessage(DateToStr(Date) + ' ' + TimeToStr(Time));
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := a + '1';
  Edit1.Text := Edit1.Text + '1';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Edit1.Text := '';
  a := a + '2';
  Edit1.Text := Edit1.Text + '2';
end;



procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

end.
