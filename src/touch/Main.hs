module Main where

import Util
import System.Environment (getProgName, getArgs)

main = do
  let ver = "0.1" 
      usage = do
        prog <- getProgName 
        putStrLn $ "use: " ++ prog ++ " {--help|--version|-h|-v|-c} [FILES]"

  args <- getArgs
  
  case args of
    []         -> usage
    "--help":_ -> usage 
    "-h":_ -> usage 
    "--version":_ -> putStrLn ver 
    "-v":_ -> putStrLn ver 
    xs         -> mapM_ touchFile xs
    
  
