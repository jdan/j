load'viewmat'

NB. set our rule
rule =: 60

NB. left-pads the binary representation with 0s (length 8)
padb =: |. @ (8&{.) @ |. @ #:

NB. match a given binary triple to a new (center) cell
match =: {&(padb rule) @ (#. @: -.)

NB. wrap with 0 on left and right
NB. add an extra 0 to the right (grow the array by 1)
NB. scan each (overlapping) 3 items and apply match
next =: 3 match\ (0:, ], 0:, 0:)

init =: 1

NB. show it
NB. viewmat next^:(i.200) init

viewmat (3 ({&(|.8{.|.#:60)@#.@:-.)\0:,],0:,0:)^:(i.200) 1