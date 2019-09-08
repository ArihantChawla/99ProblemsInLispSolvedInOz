% Find the last box of a list.

local
   fun {Last Xs}
      if (Xs.2 == nil) then
	 Xs.1
      else
	 {Last Xs.2}
      end
   end
in
   {Browse {Last [1 2 3]}}
end
