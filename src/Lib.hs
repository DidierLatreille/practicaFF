module Lib where
type Objetivo = String

poderGolpe :: Int -> Int
poderGolpe = (15*)

fortalezaObjetivo :: Objetivo -> Int
fortalezaObjetivo = (2 *).length

-- prototipofunciongolpe
-- golpe :: Int -> Objetivo -> Int
-- golpe horasEntrenamiento nombreObjetivo = div ( 15 * horasEntrenamiento ) ( ( (2 *) . length ) nombreObjetivo )

-- mide la presion del golpe
golpe :: Int -> Objetivo -> Int
golpe horasEntrenamiento nombreObjetivo = div (poderGolpe horasEntrenamiento) (fortalezaObjetivo nombreObjetivo)

horasGolpesNormalesConsecutivos :: Int
horasGolpesNormalesConsecutivos = 240

horasGomuGomuElephantGatling :: Int
horasGomuGomuElephantGatling = 180

objetivoDificil :: String -> Bool
objetivoDificil = (100 >).golpe horasGomuGomuElephantGatling

focalizarObjetivo :: String -> String
focalizarObjetivo = take 7

accesibilidadObjetivo :: String -> Int
accesibilidadObjetivo = (flip div  10).((golpe horasGolpesNormalesConsecutivos).focalizarObjetivo)