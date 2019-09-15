% Duplicate the elements of a list

declare
fun {DupItems X}
   if X == nil then X else
      X.1|X.1|{DupItems X.2}
   end
end
{Browse {DupItems [1 2 3]}}
