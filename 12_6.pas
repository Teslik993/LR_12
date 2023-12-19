program RemoveEmptyLines;

var
  inputFile, outputFile: text;
  line: string;

begin
  // Открываем входной файл
  Assign(inputFile, 'input.txt');
  Reset(inputFile);

  // Открываем выходной файл
  Assign(outputFile, 'output.txt');
  Rewrite(outputFile);

  // Обрабатываем каждую строку входного файла
  while not eof(inputFile) do
  begin
    ReadLn(inputFile, line);

    // Если строка не пустая, записываем её в выходной файл
    if line <> '' then
      WriteLn(outputFile, line);
  end;

  // Закрываем файлы
  Close(inputFile);
  Close(outputFile);
end.
