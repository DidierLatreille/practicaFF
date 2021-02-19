module Lib where
type Objetivo = String

poderGolpe :: Int -> Int
poderGolpe = (15*)

fortalezaObjetivo :: Objetivo -> Int
fortalezaObjetivo = (2 *).length

-- mide la presion del golpe
golpe :: Int -> Objetivo -> Int
golpe horasEntrenamiento nombreObjetivo = div (poderGolpe horasEntrenamiento) (fortalezaObjetivo nombreObjetivo)

horasGolpesNormalesConsecutivos :: Int
horasGolpesNormalesConsecutivos = 240

horasGomuGomuElephantGatling :: Int
horasGomuGomuElephantGatling = 180

objetivoDificil :: Objetivo -> Bool
objetivoDificil = (100 >).golpe horasGomuGomuElephantGatling

focalizarObjetivo :: Objetivo -> String
focalizarObjetivo = take 7

accesibilidadObjetivo :: Objetivo -> Int
accesibilidadObjetivo = (flip div  10).((golpe horasGolpesNormalesConsecutivos).focalizarObjetivo)