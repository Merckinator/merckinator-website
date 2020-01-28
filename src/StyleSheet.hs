{-# LANGUAGE OverloadedStrings #-}
module StyleSheet
    ( globalStyleSheet
    ) where

import Prelude hiding (div)
import Clay

fstColor :: Color
fstColor = red

centered :: Css
centered = do
    width        (px 800)
    boxSizing    borderBox
    sym margin   auto


globalStyleSheet = renderWith compact [] $ do
    body ? do
        background black
        fontColor  white
        textAlign  (alignSide sideCenter)
        sym margin (px 0)
    "#container" ? do
        centered
        fontSize       (em 3)
        paddingTop     (em 2)
        textTransform  uppercase
    "#nav" ? do
        background     (vGradient (fstColor +. 80) (fstColor -. 80))
        height         (em 3)
        textTransform  uppercase
        div <? do
            centered
            height     (pct 100)
            width      (px 530)
            textAlign  (alignSide sideCenter)
        a ? do
            lineHeight      (em 1.5)
            paddingRight    (px 25)
            transition      "color" (sec 0.4) ease (sec 0)
            textDecoration  none
            hover & color   black
            fontSize        (em 2)
            color           white
            lastOfType & paddingRight (px 0)