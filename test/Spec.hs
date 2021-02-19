import Test.Hspec
import Lib

objetivo :: Objetivo
objetivo = "bolsa de entrenamiento"

main :: IO()
main = hspec $ do
   describe "golpe" $ do
      it "presion de golpes normales consecutivos sobre 'bolsa de entrenamiento' = 81" $ do
         golpe horasGolpesNormalesConsecutivos "bolsa de entrenamiento" `shouldBe` 81

      it "presion de gomu gomu elephant gatling sobre 'bolsa de entrenamiento' = 61" $ do
         golpe horasGomuGomuElephantGatling "bolsa de entrenamiento" `shouldBe` 61

      it "presion de golpe de 200 horas de entrenamiento sobre 'bolsa de entrenamiento' = 68" $ do
         golpe 200 "bolsa de entrenamiento" `shouldBe` 68

   describe "objetivoDificil" $ do
      it "el objetivo 'bolsa de entrenamiento ES dificil' " $ do
         objetivoDificil "bolsa de entrenamiento" `shouldBe` True
      
      it "el objetivo 'gatito' NO ES dificil" $ do
         objetivoDificil "gatito" `shouldBe` False

   describe "accesibilidadObjetivo" $ do
      it "la accesibilidad de 'bolsa de entrenamiento' es = 25" $ do
         accesibilidadObjetivo "bolsa de entrenamiento" `shouldBe` 25

      it "la accesibilidad de 'gatito' es = 30" $ do
         accesibilidadObjetivo "gatito" `shouldBe` 30