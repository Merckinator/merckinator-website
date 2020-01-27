{-# LANGUAGE OverloadedStrings #-}
module Main where

import Lib
import System.Environment (getEnv)
import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import Web.Scotty

main :: IO ()
main = do
    port <- getEnv "PORT"
    scotty (read port) $ do
        notFound $ do
            html "<h1>Coming soon!</h1>"
