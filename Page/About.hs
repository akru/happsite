{-# LANGUAGE OverloadedStrings #-}
module Page.About where

import Import

aboutPage :: Page
aboutPage = ok $ toResponse $ layout [] "AboutMe" 
