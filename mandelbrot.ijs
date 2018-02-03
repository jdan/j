load'viewmat'

size =: 100

NB. z_0 = C
NB. z_(n+1) = z_n**2 + C
NB. 
NB. We iterate this equation at most 20 times
NB.   but short-circuit out (and return inf "_") if the value is > 2
NB. Then we compute the magnitudes of every value
NB. And find the first result that is > 2
mandel =: 3 : '(2 > | (y + _&[`*: @.(2&>@:|))^:(i.20) y) i. 0'"0

plane =: (j.i.size) + (size, size) $ i.size
center =: (0.75 * size) j. (0.5 * size)
scale =: % 0.35 * size

NB. Run `mandel` over out coordinate plane and plot it
viewmat mandel scale * plane - center