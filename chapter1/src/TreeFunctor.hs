module MyTreeFunctor where
import Data.Char

----これは型構築子Treeを宣言している

data Tree a = Empty | Node a (Tree a) (Tree a)


