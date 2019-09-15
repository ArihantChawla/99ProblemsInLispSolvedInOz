% Drop every N'th element from a list.

declare
fun {Aux X K N}
   if X == nil then nil else
      if N==1 then
	 {Aux X.2 K K}
      else
	 X.1|{Aux X.2 K N-1}
      end
   end
end
fun {DropEveryNthElement X N}
   {Aux X N N}
end
{Browse {DropEveryNthElement [1 2 3 4 5 6 7 8 9 10] 3}}
   
