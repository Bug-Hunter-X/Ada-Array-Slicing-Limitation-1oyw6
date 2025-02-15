```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   subtype My_Sub_Array is My_Array(1..5);
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Sub_Array;
   C : My_Array(1..5);
begin
   B := My_Sub_Array(A(1..5)); --Correct way to slice
   C := My_Array(1..5 => A(1..5)); --Alternative approach
end Example;
```