{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( getPort
    ) where

import System.Environment (lookupEnv)

getPort :: IO Int
getPort = do
    port <- lookupEnv "PORT"
    case port of
        Nothing -> return 8000 :: IO Int
        Just x  -> return $ read x
