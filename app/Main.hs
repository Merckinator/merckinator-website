{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Scotty as S
import Lib
import View

main :: IO ()
main = do
    port <- getPort
    scotty (port) $ do
        get "/"  $ renderView landingPage
        notFound $ renderView underConstruction
                