{-# LANGUAGE OverloadedStrings #-}
module Main where

import Happstack.Lite (serve, dir)
import Control.Monad (msum)
import Routes (routes)
import Static (static)

main :: IO ()
main = serve Nothing $ msum 
    [ dir "/static" static
    , routes
    ]
