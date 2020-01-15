module Lib
    ( initial
    , update
    , subscriptions
    , view
    , windowDims
    ) where

import Linear.V2 (V2(V2))

import Helm
import Helm.Color
import Helm.Engine.SDL (SDLEngine)
import Helm.Graphics2D

import qualified Helm.Cmd as Cmd
import qualified Helm.Mouse as Mouse


data Action = Idle | ChangePosition (V2 Double)
data Model = Model (V2 Double)

windowDims :: V2 Int
windowDims = V2 100 100

initial :: (Model, Cmd SDLEngine Action)
initial = (Model $ V2 50 0, Cmd.none)

update :: Model -> Action -> (Model, Cmd SDLEngine Action)
update model Idle = (model, Cmd.none)
update _ (ChangePosition pos) = (Model pos, Cmd.none)

subscriptions :: Sub SDLEngine Action
subscriptions = Mouse.moves (\(V2 x y) -> ChangePosition $ V2 (fromIntegral x) (fromIntegral y))

view :: Model -> Graphics SDLEngine
view (Model pos) = Graphics2D $ collage [move pos $ filled (rgb 1 0 0) $ circle 3]


