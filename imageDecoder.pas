uses GraphABC;
var
p:Picture;
t:text;
c:char;
begin
p:=Picture.Create('image.png');
p.Draw(250,250,128,128);
writeln('symbol?');
read(c);


assign(t,'test.txt');
t.Append();


for i:integer:= 0 to p.Height-1 do
begin
  for j:integer:= 0 to p.Width - 1 do
    write(t,(1.0 - (p.GetPixel(j,i).R / 255)):0:3, ' ');
  writeln(t, '');
end;
writeln(t,c);
t.Close();


writeln('done!');
window.Close();
end.
  