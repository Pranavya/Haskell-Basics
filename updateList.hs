--Update the values of a list with their absolute values

f arr =[if x < 0 then (x * (-1)) else x | x <- arr]

main = do
   inputdata <- getContents
   mapM_ putStrLn $ map show $ f $ map (read :: String -> Int) $ lines inputdata
