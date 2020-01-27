{-# LANGUAGE OverloadedStrings #-}
module StyleSheet
    ( globalStyleSheet
    ) where


import Clay


centered :: Css
centered = do
    width        (px 800)
    boxSizing    borderBox
    paddingTop   (px 200)
    sym margin   auto

-- globalStyleSheet :: text-1.2.3.1:Data.Text.Internal.Lazy.Text
globalStyleSheet = render $ do
    body ? do
        background black
        fontColor  white
    "#container" ? do
        centered
        width          (px 250)
        textAlign      (alignSide sideCenter)
        textTransform  uppercase