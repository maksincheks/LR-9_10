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
    if abs(A[i,1]) > 4 then
       B[i] := A[i,1]
     else 
       B[i] := 0;
  end;
  end;
  Writeln;
  Writeln(B);
end.