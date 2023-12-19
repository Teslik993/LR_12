const
  FileName = 'textfile.txt';
var
  S: string;
  F: text;
begin
  // Ввод строки S
  writeln('Введите строку:');
  readln(S);
  
  // Открытие файла в режиме добавления
  Assign(F, 'c:\По учёбе\text 2.txt');
  Append(F);
  
  // Запись строки S в конец файла
  writeln(F, S);
  
  // Закрытие файла
  Close(F);
end.