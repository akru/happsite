{-# LANGUAGE DeriveDataTypeable, GeneralizedNewtypeDeriving, TemplateHaskell #-}
module Sitemap (Sitemap(..), Page) where

import Happstack.Server (Response, ServerPartT, ServerPart)
import Web.Routes.TH (derivePathInfo)
import Web.Routes (RouteT)
import Data.Data (Data, Typeable)

data Sitemap
    = Home
    | About

    deriving (Eq, Ord, Read, Show, Data, Typeable)

$(derivePathInfo ''Sitemap)

type Page = RouteT Sitemap (ServerPartT IO) Response

