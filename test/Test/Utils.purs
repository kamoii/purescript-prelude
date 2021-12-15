module Test.Utils where

import Prelude

type AlmostEff = Unit -> Unit

assert :: String -> Boolean -> AlmostEff
assert msg condition = if condition then const unit else throwErr msg

foreign import throwErr :: String -> AlmostEff
foreign import data MainLike :: Type
foreign import mkMainLike :: forall a. (Unit -> Unit) -> MainLike
