import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 250 250 140 "rgb(175, 106, 69, 0.4)") ++
  (svgCircle 130 100 60 "rgb(175, 106, 69, 0.4)") ++ 
  (svgCircle 130 100 50 "rgb(254, 210, 198, 0.4)") ++ 
  (svgCircle 370 100 60 "rgb(175, 106, 69, 0.4)") ++ 
  (svgCircle 370 100 50 "rgb(254, 210, 198, 0.4)") ++
  (svgCircle 200 200 30 "rgb(0, 0, 0, 0.4)") ++
  (svgCircle 300 200 30 "rgb(0, 0, 0, 0.4)") ++
  (svgCircle 250 250 20 "rgb(254, 210, 198, 0.4)") ++
  (svgCircle 250 330 40 "rgb(0, 0, 0, 0.4)") ++ 
  (svgCircle 250 330 30 "rgb(254, 210, 198, 0.4)") ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
