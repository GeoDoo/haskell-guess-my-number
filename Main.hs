turn :: Int -> String -> IO ()
turn n guess = do
  if n > (read guess :: Int)
    then do
      putStrLn "Too low!"
      guessmynumber n
    else do
      putStrLn "Too high!"
      guessmynumber n

guessmynumber :: Int -> IO ()
guessmynumber n = do
  putStr "Enter your guess: "
  guess <- getLine
  if n == (read guess :: Int)
    then putStrLn ("You guessed right this time! My number was " ++ show n)
    else turn n guess