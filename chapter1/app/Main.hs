-- module Main where

-- import Lib

-- main :: IO ()
-- main = someFunc
--------------------------
-- mapの定義
map' _ [] = []
map' f (x:xs) = f x : map f xs

-- mapが関手である事を確認する
-- 射関数としての性質を確認する map g.mapf = map f.g

f :: Integer -> Integer
f x = x ^ 2

g :: Integer -> Integer
g x = x + 1

-- 型A,Bとf::A->Bをもらった時、map f :: [A] -> [B]が決まる。
-- map関手はAを[A]に写し、Bを[B]に写す。これは対象関数をしての役割であろう.(mapによって[]の型構築子をつけられる)
-- map :: Hom(A,B) -> Hom([A],[B]) となっており、これが射関数としての作用である。これで関手である事がわかる。

a = [0,1,2,3]

main = do
    print("map f. map g >")
    print(((map' f).(map' g)) a)
    print("map f.g >")
    print(map' (f.g) a)


