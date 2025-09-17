data Person = Person {firstName :: String
    , lastName :: String
    , age :: Int
    } deriving (Eq, Show)

--data Bool = False | True deriving (Ord)
data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Eq, Ord, Show, Read, Bounded, Enum)