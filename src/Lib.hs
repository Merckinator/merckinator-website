{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( comingSoon
    , getPort
    , html5Boilerplate
    ) where


import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A
import StyleSheet
import System.Environment (lookupEnv)

comingSoon :: Html
comingSoon = do
    html5Boilerplate "Under Construction" $ do
                    H.div ! A.id "container" $
                        h1 "Coming soon!"


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
            H.style $ toHtml globalStyleSheet
            link ! rel "shortcut icon" ! href "#"
        H.body body