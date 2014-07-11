{-# LANGUAGE OverloadedStrings #-}
module Page.Home where

import Import
import Text.Blaze.Html4.Strict              as H
import Text.Blaze.Html4.Strict.Attributes   as A

homePage :: Page
homePage = do
    uri <- showURL About
    ok $ toResponse $ layout [] $ do
        a ! href (toValue uri) $ "hehe"
