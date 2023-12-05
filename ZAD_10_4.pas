Program Zad_10_4; 
var i,j,sr,arifm : integer; str : string;
A : array [1..8,1..8] of integer;
B : array [1..8] of integer;
begin
  str := 'Массив не содержит своё среднее арифмитическое';
  for i := 1 to 8 do begin
    Writeln;
    for j := 1 to 8 do begin
      A[i,j] := random(8) + 2;
      write (A[i,j]:2);
    end;
    B[i] := A[i,1];
    for j := 1 to 8 do begin
      if B[i] > A[i,j] then B[i] := A[i,j];
    end;
  end;
  Writeln;
  Writeln (B);
  arifm := B.sum() div 8;
  for i := 1 to 8 do begin
    if arifm = B[i] then begin
      str := 'Массив содержит своё среднее арифметическое';
      break
    end;
  end;
  writeln ('Среднее арифметическое равно ', arifm);
  writeln (str);
end.