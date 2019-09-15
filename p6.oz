% Find out whether a list is a palindrome.

declare
fun {CheckEqual A B}
   A == B
end
fun {CheckPalindrome X}
   {FoldR {List.zip X {Reverse X} CheckEqual} fun {$ C D} C andthen D end true} 
end
{Browse {CheckPalindrome [1 2 3 34 2 1]}}

