program InsertEmptyLine;

var
  inputFile, tempFile: Text;
  inputFileName, tempFileName: string;
  K, currentLineNumber: Integer;
  currentLine: string;

begin
  Write('Введите имя файла: ');
  ReadLn(inputFileName);

  Write('Введите номер строки K: ');
  ReadLn(K);

  Assign(inputFile, inputFileName);
  Assign(tempFile, 'temp.txt'); // временный файл

  try
    Reset(inputFile);
    Rewrite(tempFile);

    currentLineNumber := 0;

    // Читаем строки из исходного файла и записываем их во временный файл с вставкой пустой строки перед строкой K
    while not Eof(inputFile) do
    begin
      ReadLn(inputFile, currentLine);
      Inc(currentLineNumber);

      // Проверяем, нужно ли вставить пустую строку
      if currentLineNumber = K then
        WriteLn(tempFile); // вставляем пустую строку

      WriteLn(tempFile, currentLine); // записываем текущую строку во временный файл
    end;

    // Если строка с номером K отсутствует, ничего не меняем

    // Закрываем файлы
    Close(inputFile);
    Close(tempFile);

    // Переименовываем временный файл в оригинальный
    Erase(inputFile);
    Rename(tempFile, inputFileName);

    WriteLn('Пустая строка успешно вставлена перед строкой ', K);
  except
    on E: Exception do
      WriteLn('Произошла ошибка: ', E.Message);
  end;
end.
