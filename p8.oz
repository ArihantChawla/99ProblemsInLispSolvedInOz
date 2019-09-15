% Eliminate consecutive duplicates of list elements

declare
fun {DeleteConsecDuplicates X}
   if {List.length X} < 2 then X else
      if X.1 == X.2.1 then
	 {DeleteConsecDuplicates X.2}
      else
	 X.1|{DeleteConsecDuplicates X.2}
      end
   end
end
{Browse {DeleteConsecDuplicates [1 1 2 2 2 2 3 4 4 5]}}
