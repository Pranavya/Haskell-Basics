--Given a list, repeat each element in the list N amount of times.


f :: Int -> [Int] -> [Int]
f n arr = concat $ map (replicate n) arr

main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
