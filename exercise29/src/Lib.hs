module Lib
    ( profit
    ) where

attendees :: Float -> Int
attendees price = round $ 120 - ((price - 5) * (15 / 0.1))

revenue :: Float -> Float
revenue price = price * (fromIntegral $ attendees price)

cost :: Float -> Float
cost price = 180 + (0.04 * (fromIntegral $ attendees price))

profit :: Float -> Float
profit price = (revenue price) - (cost price)
