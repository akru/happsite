{-# LANGUAGE OverloadedStrings #-}
module Config where

import Text.Blaze.Html4.Strict (Html)
import Data.Text (Text)

title :: Html
title = "My page"

copyright :: Html
copyright = "(c) YOU"

hostUrl :: Text
hostUrl = "http://localhost:8000"

relativePath :: Text
relativePath = ""
