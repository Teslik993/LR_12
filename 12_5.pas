program FindMinMax;

var
  inputFile, outputFile: text;
  currentNumber, minNumber, maxNumber: real;

begin
  Assign(inputFile, 'input.txt');
  Assign(outputFile, 'output.txt');

  Reset(inputFile);
  Rewrite(outputFile);

  // Инициализация переменных
  Readln(inputFile, currentNumber);
  minNumber := currentNumber;
  maxNumber := currentNumber;

  // Поиск минимального и максимального числа
  while not Eof(inputFile) do
  begin
    Readln(inputFile, currentNumber);

    if currentNumber < minNumber then
      minNumber := currentNumber;

    if currentNumber > maxNumber then
      maxNumber := currentNumber;
  end;

  // Запись результатов в файл
  Writeln(outputFile, 'Минимальное число: ', minNumber);
  Writeln(outputFile, 'Максимальное число: ', maxNumber);

  Close(inputFile);
  Close(outputFile);
end.
