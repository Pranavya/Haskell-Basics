--Find sum of odd elements from the given list

f arr = sum (filter (odd) arr)

main = do
   inputdata <- getContents
   putStrLn $ show $ f $ map (read :: String -> Int) $ lines inputdata
