module PolarRose
    ( getFloatRange
    , polarRose ) where

type Pos = (Float, Float) --(x, y)

getFloatRange :: Float -> Float -> Int -> [Float]
getFloatRange start stop n = let r = stop - start
                                 increment = r / (fromIntegral n :: Float)
                             in [start, start + increment .. stop]

-- r = a cos(k theta)
polarRose :: Float -> Float -> [Float] -> [Pos]
polarRose a k evals = let xs = map (\x -> a * cos (k * x) * cos x) evals
                          ys = map (\y -> a * cos (k * y) * sin y) evals
                      in zip xs ys
