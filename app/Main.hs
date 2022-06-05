module Main where

import Graphics.Gloss
import PolarRose

main :: IO ()
main = display (InWindow "babbabouey" (1920, 1080) (10,10)) black (Color white $ line flower)

flower :: Path
flower = let evals = getFloatRange 0.0 (2.0 * pi) 100
       in polarRose 100.0 4.0 evals
