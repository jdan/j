NB. https://fivethirtyeight.com/features/will-the-grasshopper-land-in-your-yard/
NB. From Diarmuid Early, a daily dose puzzle:
NB.
NB. You and your spouse each take two gummy vitamins every day. 
NB. You share a single bottle of 60 vitamins, which come in two 
NB. flavors. You each prefer a different flavor, but it seems
NB. childish to fish out two of each type (but not to take gummy
NB. vitamins). So you just take the first four that fall out and
NB. then divide them up according to your preferences. For example,
NB. if there are two of each flavor, you and your spouse get the
NB. vitamins you prefer, but if three of your preferred flavor come
NB. out, you get two of the ones you like and your spouse will get 
NB. one of each.
NB. 
NB. The question is, on average, what percentage of the vitamins 
NB. you take are the flavor you prefer? (Assume that the bottle 
NB. starts out with a 50-50 split between flavors, and that the 
NB. four selected each day are selected uniformly at random.)

simulate =: 3 : 0
	NB. n ? n produces a random permutation of i.n
	NB. # ? # (a fork) produces a random permutation of i.#
	NB. a { b takes the ath element of b
	NB. b {~ a takes the ath element of b
	NB. 
	NB. {~ # ? # creates the hook ((# ls) ? (# ls)) { ls
	shuffle =. {~ # ? #

	NB. Take y/2 0s and y/2 1s, and shuffle them
	vitamins =. shuffle y $ 0 1

	NB. Split them into non-overlapping groups of 4
	takes =. _4 ]\ vitamins

	NB. For each take, what % are vitamins we actually want?
	percentages =. +/"1 takes % 4

	NB. Average out all percentages
	(+/ % #) percentages
)

simulate 60  NB. => 0.5

