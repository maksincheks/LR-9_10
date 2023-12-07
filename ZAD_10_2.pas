Program Zad_10_2; 
var i,j : integer;
A : array [1..8,1..6] of integer;
B : array [1..8] of integer;
begin
  for i := 1 to 8 do begin
    Writeln;
    for j := 1 to 6 do begin
      A[i,j] := random(20) +- 5;
      write (A[i,j]:3);
    end;
    for j := 1 to 5 do begin
      B[i] := 1;
      if A[i,j] < 0 then begin
        B[i] := -1;
        break;
      end;
    end;
  end;
  writeln;
  writeln(B);
end.