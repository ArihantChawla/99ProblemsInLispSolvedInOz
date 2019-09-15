% Flatten a nested list structure.

declare
fun {App A B}
   if {List.is A} then
     if {List.is B} then
	 {Append A B}
      else
	 {Append A [B]}
      end
   else
      if {List.is B} then
	 {Append [A] B}
      else
	 {Append [A] [B]}
      end
   end
end
fun {Flat X}
   {FoldR X App nil}
end
{Browse {Flat [1 [2 3] 4 [5 6 7 8] 9]}}

% Alternatively Using Built in Functions

{Browse {List.flatten [1 [2 3] 4 [5 6 7 8] 9]}}

