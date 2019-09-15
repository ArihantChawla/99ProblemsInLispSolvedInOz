% Replicate the elements of a list a given number of times.

declare
fun {AuxB A M}
   if M ==0  then nil else A|{Repeat A M-1} end
end
fun {AuxA X N}
   if X == nil then nil else {AuxB X.1 N}|{AuxA X.2 N} end
end
fun {Replicate X N}
   {FoldR {AuxA X N} fun {$ A B} {Append A B} end nil}
end

{Browse {Replicate [1 2 3 4] 3}}
