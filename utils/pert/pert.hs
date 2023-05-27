module Main where

import Text.Read (readMaybe)

calculateExpectedTime :: Float -> Float -> Float -> Float
calculateExpectedTime optimisticTime pessimisticTime realisticTime = (optimisticTime + (4 * realisticTime) + pessimisticTime) / 6

calculateStandardDeviation :: Float -> Float -> Float -> Float
calculateStandardDeviation optimisticTime pessimisticTime _realisticTime = (pessimisticTime - optimisticTime) / 6

main :: IO ()
main = do
    putStrLn "Enter optimistic time estimate: "
    optimisticTimeStr <- getLine
    let optimisticTime = case readMaybe optimisticTimeStr of
                            Just val -> val
                            Nothing -> error "Invalid input"
    putStrLn "Enter realistic time estimate: "
    realisticTimeStr <- getLine
    let realisticTime = case readMaybe realisticTimeStr of
                            Just val -> val
                            Nothing -> error "Invalid input"
    putStrLn "Enter pessimistic time estimate: "
    pessimisticTimeStr <- getLine
    let pessimisticTime = case readMaybe pessimisticTimeStr of
                            Just val -> val
                            Nothing -> error "Invalid input"
    let expectedTime = calculateExpectedTime optimisticTime pessimisticTime realisticTime
        standardDeviation = calculateStandardDeviation optimisticTime pessimisticTime realisticTime
    putStrLn $ "Expected time: " ++ show expectedTime ++ " days"
    putStrLn $ "Standard deviation: " ++ show standardDeviation ++ " days"
