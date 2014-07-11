module Static where

import Happstack.Lite

static :: ServerPart Response
static = notFound $ toResponse ()
