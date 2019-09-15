% Split a list into two parts; the length of the first part is given.

declare
fun {Aux X N P}
   if N == 0 then
      {Append [P] [X]}
   else
      {Aux X.2 N-1 {Append P [X.1]}}
   end
end
fun {SplitList X N}
   {Aux X N nil}
end
{Browse {SplitList [1 2 3 4 5 6 7 8 9 10] 3}}
      

