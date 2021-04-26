fun insertionsort [] = []
  | insertionsort [hd] = [hd]
  | insertionsort (hd::tl) = 
        let
             fun insert x [] = x::nil 
            |    insert x (hd::tl) = 
                     if(x<hd) then (x::hd::tl)
                     else hd::(insert x tl)
        in
            insert hd (insertionsort tl)
        end
