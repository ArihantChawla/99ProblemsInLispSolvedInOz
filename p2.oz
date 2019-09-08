% Find the last but one box of a list

local
   fun {LastButOne Xs}
      if (Xs.2.2 == nil) then
	 [Xs.1 Xs.2.1]
      else
	 {LastButOne Xs.2}
      end
   end
in
   {Browse {LastButOne [1 2 3 4]}}
end

