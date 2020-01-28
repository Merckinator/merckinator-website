{-# LANGUAGE OverloadedStrings #-}
module View
    ( renderView
    , underConstruction
    , landingPage
    ) where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text
import StyleSheet
import Web.Scotty as S

renderView = S.html . renderHtml

underConstruction :: Html
underConstruction = do
    html5Boilerplate "Under Construction" $ do
        H.div ! A.id "container" $ h1 "Under Construction"

landingPage :: Html
landingPage = do
    html5Boilerplate "Home" $ do
        H.div ! A.id "container" $ h1 "Merckinator.com"

navBar :: Html
navBar = do
    H.div ! A.id "nav" $ do
        H.div ! A.id "menu" $ do
            a ! href "/" $ "Home"
            a ! href "/about" $ "About"
            a ! href "/contact" $ "Contact"

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
        H.body $ do
            navBar
            body