{-# LANGUAGE OverloadedStrings #-}
module Template (
    layout
) where

import Text.Blaze.Html4.Strict as H
import Text.Blaze.Html4.Strict.Attributes as A
import qualified Config as C

layout :: [Html] -> Html -> Html
layout headers content = docTypeHtml $ do
    H.head $ do
        H.title C.title
        H.meta ! A.httpEquiv "Content-Type"
               ! A.content "text/html;charset=utf-8"
        sequence_ headers
    H.body $ do
        content
