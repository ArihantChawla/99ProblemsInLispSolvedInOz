% Extract a slice from a list.

declare
fun {Slice X I K}
   if I == 1 then
      if K == 0 then nil
      else
	 X.1|{Slice X.2 I K-1}
      end
   else
      {Slice X.2 I-1 K-1}
   end
end
{Browse {Slice [1 2 3 4 5 6 7 8 9 10] 3 7}}
