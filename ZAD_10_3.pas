Program Zad_10_3; 
var i,j : integer;
A : array [1..8,1..8] of integer;
B : array [1..8] of integer;
begin
  for i := 1 to 8 do begin
    Writeln;
    for j := 1 to 8 do begin
      A[i,j] := random(8) + 2;
      write (A[i,j]:2);
    end;
    for j := 1 to 7 do begin
      B[i] := -1;
      if A[i,j]+A[i,j+1] = 7 then begin
        B[i] := 1;
        break;
      end;
    end;
  end;
  writeln;
  writeln(B);
end.