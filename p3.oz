% Find the K'th element of a list. (Remember that lists in oz are 1-indexed)

declare
fun {FindKElement X K}
   if K == 1 then X.1
   else
      {FindKElement X.2 K-1}
   end
end

{Browse {FindKElement [1 2 3 4] 3}}

% Alternatively using Built in functions

{Browse {Nth [1 2 3 4] 3}}
