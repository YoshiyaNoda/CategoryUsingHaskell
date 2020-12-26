module MyTreeFunctor where
import Data.Char

----これは型構築子Treeを宣言している
----構文規則のBN記法のようなもの
data Tree a = Empty | Node a (Tree a) (Tree a)

--instanceとは
instance (Show a) => Show (Tree a) where
    show x = show1 0 x