--Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, 
--there are exactly 6 routes to the bottom right corner.

--Find how many such routes are there through a 20×20 grid.

import Data.Array as Array

numPaths :: Int -> Int -> Integer
numPaths h w = countPaths h w
  where
    countPaths :: Int -> Int -> Integer
    countPaths 0 w = 1
    countPaths h 0 = 1
    countPaths h w = (cp ! (h - 1, w)) + (cp ! (h, w - 1))
    cp = Array.listArray bounds [countPaths x y | (x, y) <- Array.range (bounds)]
    bounds = ((0,0), (h, w))

euler15 :: Integer
euler15 = numPaths 20 20

main = print(euler15)
