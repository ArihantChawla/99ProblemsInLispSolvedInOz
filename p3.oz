% Reverse a list

local
   fun {Reverse Xs}
      case Xs
      of nil then Xs
      else
	 {Append {Reverse Xs.2} [Xs.1]} 
      end
   end
in
   {Browse {Reverse [1 2 3 4]}}
end
