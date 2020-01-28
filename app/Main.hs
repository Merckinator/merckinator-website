{-# LANGUAGE OverloadedStrings #-}
module Main where

import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text
import Web.Scotty as S
import Lib
import View

renderView = S.html . renderHtml

main :: IO ()
main = do
    port <- getPort
    scotty (port) $ do
        notFound $ do
            renderView comingSoon
                