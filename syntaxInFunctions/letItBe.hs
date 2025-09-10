cylinder :: (RealFloat a) => a -> a -> a
cylinder r h = 
    let sideArea r h = 2 * pi * r * h
        topArea r h = pi * r^2
    in sideArea r h + 2 * topArea r h

calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi | (w,h) <- xs, let bmi = w/h^2, bmi >= 25.0]