module Util where

import System.Directory 
import Data.Time.Clock (getCurrentTime)
import System.IO (withFile, IOMode(..))

touchFile :: String -> IO ()
touchFile file = do
  exits <- doesFileExist file

  if exits then do
    now <- getCurrentTime  
    setModificationTime file now 
  else 
    withFile file WriteMode $ \_ -> pure ()
