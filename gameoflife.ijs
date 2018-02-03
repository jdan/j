load'viewmat'

NB. 0 1 0
NB. 0 0 1
NB. 1 1 1
glider =: (3 3 $ (i.9)) e. 1 5 6 7 8

NB. Center our object on a 9x9 grid
R =: 6 (|."1) 6 |. 9 9 {. glider

NB. Compute a neighbor count for each cell (including itself)
NB. Rotate row-wise by _1, 0, and 1
NB.   and for each: rotate column-wise by _1, 0, and 1
NB. Sum up all 9 options
neighbors =: verb : '+/ y |.~ >, { (_1 0 1); (_1 0 1)'

NB. Compute the next generation
NB. Take a neighbor count
NB. Cells are alive in the next generation if either:
NB. - The have exactly 3 neighbors
NB. - The are alive and have exactly 4 neighbors
next =: verb : '(3&= +. (y&*.) @ (4&=)) neighbors y'

NB. Compute and plot the third generation
viewmat next^:3 R