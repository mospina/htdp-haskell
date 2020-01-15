module Main where

import System.Environment
import Lib

main :: IO ()
main = do
    ticketPrice:_ <- getArgs
    let result = profit $ read ticketPrice  
    print result  
