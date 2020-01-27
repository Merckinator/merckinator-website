{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( getPort
    ) where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A
import System.Environment (lookupEnv)

getPort :: IO Int
getPort = do
    port <- lookupEnv "PORT"
    case port of
        Nothing -> return 8000 :: IO Int
        Just x  -> return $ read x

html5Boilerplate :: String -> Html -> Html
html5Boilerplate title body = do
    docTypeHtml $ do
        H.head $ do
            meta ! httpEquiv "X-UA-Compatible" ! content "IE=edge"
            meta ! charset "utf-8"
            if title == "home" then
                H.title "Merckinator.com"
            else
                H.title . toHtml $ "Merckinator.com - " ++ title
            meta ! name "description" ! content "A personal website trying out different tech"
            meta ! name "author" ! content "Jeff Merckens"
            meta ! name "viewport" ! content "width=device-width, initial-scale=1"
            link ! rel "stylesheet" ! href "#"
            -- html5 shim stuff
            -- <!--[if lt IE 9]>
            -- <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
            -- <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
            -- <![endif]-->
            link ! rel "shortcut icon" ! href "#"
        H.body body