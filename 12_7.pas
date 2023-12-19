program SumOfNumbersWithFiveDivisors;

var
  n, i, count, sum: UInt64;

function CountDivisors(num: UInt64): Integer;
var
  j: UInt64;
begin
  Result := 0;
  for j := 1 to num do
  begin
    if num mod j = 0 then
      Inc(Result);
  end;
end;

begin
  AssignFile(Input, 'z3in.txt');
  AssignFile(Output, 'z3out.txt');
  Reset(Input);
  Rewrite(Output);

  ReadLn(n);

  sum := 0;
  for i := 1 to n do
  begin
    count := CountDivisors(i);
    if count = 5 then
      sum := sum + i;
  end;

  WriteLn(sum);

  CloseFile(Input);
  CloseFile(Output);
end.
