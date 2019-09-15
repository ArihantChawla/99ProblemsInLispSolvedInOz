% Find the number of elements of a list.

declare
fun {Len L}
   case L of nil then 0
   [] H|T then 1+{Len T}
   end
end
{Browse {Len [1 2 3]}}

% Alternatively using built in function

{Browse {List.length [1 2 3]}}
