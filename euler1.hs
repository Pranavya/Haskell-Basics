euler001 n = sum [x | x <- [0 .. n], x `mod` 3 == 0  || x `mod` 5 == 0]

main = putStrLn $ show (euler001 999)


