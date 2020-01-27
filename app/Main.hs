{-# LANGUAGE OverloadedStrings #-}
module Main where

import Lib
import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text
import Web.Scotty as S


main :: IO ()
main = do
    port <- getPort
    scotty (port) $ do
        notFound $ do
            S.html . renderHtml $ do
                H.h1 "Coming soon!"
