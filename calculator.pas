unit calculator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
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
    Button17: TButton;
    Button18: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a, b, c, d:Double;
  operator:char;
  s:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if s = '0' then s := '1' //заполнение численного значения
  else s := s + '1'; //добавляем цифру к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if s = '0' then s := '2' //заполнение численного значения
  else s := s + '2'; //добавляем цифру к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if s = '0' then s := '3' //заполнение численного значения
  else s := s + '3'; //добавляем цифру к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if s = '0' then s := '4' //заполнение численного значения
  else s := s + '4'; //добавляем цифру к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if s = '0' then s := '5' //заполнение численного значения
  else s := s + '5'; //добавляем цифру к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if s = '0' then s := '6' //заполнение численного значения
  else s := s + '6'; //добавляем цифру к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if s = '0' then s := '7' //заполнение численного значения
  else s := s + '7'; //добавляем цифру к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if s = '0' then s := '8' //заполнение численного значения
  else s := s + '8'; //добавляем цифру к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if s = '0' then s := '9' //заполнение численного значения
  else s := s + '9'; //добавляем цифру к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  if s = '0' then s := '0' //заполнение численного значения
  else s := s + '0'; //добавляем цифру к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  operator := '*'; // выбор операции
  if a = 0 then a := StrToFloat(s); // сохранение численного значения
  s := ''; // стираем первое число
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  operator := '/';  // выбор операции 
  if a = 0 then a := StrToFloat(s); // сохранение численного значения
  s := ''; // стираем первое число
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  operator := '+'; // выбор операции
  if a = 0 then a := StrToFloat(s); // сохранение численного значения
  s := ''; // стираем первое число
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  operator := '-'; // выбор операции
  if a = 0 then a := StrToFloat(s); // сохранение численного значения
  s := ''; // стираем первое число
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  s := Edit1.Text;
  b := StrToFloat(s); // сохранение второго числа
  case operator of
    '*': c := a * b;
    '/': begin
           if b = 0 then ShowMessage('Error') // запрет деления на ноль
           else c := a / b;
         end;
    '+': c := a + b;
    '-': c := a - b; //проведение операции
  end;
  Edit1.Text := FloatToStr(c);// запись ответа
  a := c; //соранение ответа в переменную
  s := '';//обнуления 
end;

procedure TForm1.Button16Click(Sender: TObject);
begin //обнуляем все числа
  s := '0';
  Edit1.Text := s;
  a := 0;
  b := 0;
  c := 0;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  s := Edit1.Text; //добавление минуса к числу
  a := StrToFloat(s) * (-1); //меняем значение на отрицательное
  s := FloatToStr(a);
  Edit1.Text := s; //записание числа в строковую переменную
  s := '';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  if TryStrToFloat(s + ',', d) then //заполнение запятой в значение
  s := s + ','; //добавляем запятую к числу
  Edit1.Text := s; //записание числа в строковую переменную
end;

end.
