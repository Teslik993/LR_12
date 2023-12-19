var
filetext: text;
a: string;
i: integer;
begin
assign(filetext, 'c:\По учёбе \text.txt');
rewrite(filetext);
for i := 1 to 10 do
begin
str(i, a);  // преобразуем число в строку
writeln(filetext, a);  // записываем строку в файл
end;
close(filetext);

reset(filetext);
for i := 1 to 10 do
begin
readln(filetext, a);  // считываем строку из файла
writeln(a);  // выводим строку на экран
end;
close(filetext);
end.