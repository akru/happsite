module Routes (routes) where

import Happstack.Server (Response, ServerPartT, ServerPart, ok, toResponse)
import Web.Routes (Site, RouteT, setDefault, runRouteT, mkSitePI)
import Web.Routes.Happstack (implSite)

import Config (hostUrl, relativePath)
import Sitemap (Sitemap(..), Page)

import Page.Home (homePage)
import Page.About (aboutPage)

route :: Sitemap -> Page
route url = case url of
    Home  -> homePage
    About -> aboutPage

site :: Site Sitemap (ServerPartT IO Response)
site = setDefault Home $ mkSitePI (runRouteT route)

routes :: ServerPart Response
routes = implSite hostUrl relativePath site

