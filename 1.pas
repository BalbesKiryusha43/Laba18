var 
  x, y: text; 
  z: integer; 
  n: array of integer; 
  i: integer; 
begin
  assign(x, '1.txt');
  reset(x); 
  while not eof(x) do 
  begin
    read(x, z);
    setLength(n, length(n) + 1); 
    n[high(n)] := z; 
  end; 
  close(x); 
  assign(y, '2.txt');
  rewrite(y); 
  for i := high(n) downto 0 do 
  begin
    write(y, n[i]); 
    writeln(y); 
  end; 
  close(y); 
end.