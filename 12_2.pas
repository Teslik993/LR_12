var
  N, K, i, j: Integer;
  outputFile: TextFile;

begin
  // Вводим значения N и K
  Write('Введите количество строк N: ');
  ReadLn(N);

  Write('Введите количество символов K: ');
  ReadLn(K);

  // Проверяем валидность введенных данных
  if (N <= 0) or (K <= 0) then
  begin
    WriteLn('Некорректные значения N и K. Пожалуйста, введите положительные числа.');
    Exit;
  end;

  // Создаем и открываем файл для записи
  AssignFile(outputFile, 'output.txt');
  Rewrite(outputFile);

  try
    // Заполняем файл N строками из K звездочек
    for i := 1 to N do
    begin
      for j := 1 to K do
        Write(outputFile, '*');

      WriteLn(outputFile); // Переходим на новую строку после каждой строки из звездочек
    end;

    WriteLn('Файл успешно создан и заполнен.');
  finally
    CloseFile(outputFile); // Закрываем файл после использования
  end;
end.