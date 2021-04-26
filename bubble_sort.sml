fun length [] = 0
  | length (x::xt) = 1 + length xt;


fun bubblesort [] = []
  | bubblesort (x::xt) =
      let 
        val n = length (x::xt)
        fun MoveBubble [] = []
    | MoveBubble (y::nil)  = [y]
    | MoveBubble (x::y::yt) =  if(x<y) then x::(MoveBubble (y::yt)) 
  else y:: (MoveBubble (x::yt))
  
        fun Bsort (x::xt) 1 = (x::xt) |Bsort [] n = []
    | Bsort (x::xt) n = Bsort (MoveBubble (x::xt)) (n-1)
      
      in
        Bsort (x::xt) n
    end
