NB. Solutions to http://rosalind.info

NB. http://rosalind.info/problems/dna/
NB. match each symbol with each of 'ACGT'
NB.   and sum up each row
dna =: +/"1 @: ('ACGT'=/])

NB. http://rosalind.info/problems/rna/
NB. 'U' if symbol = 'T', return itself otherwise
rna =: (] ` (]&'U') @. ('T'=]))"0

NB. http://rosalind.info/problems/revc/
NB. Get the index of the symbol in 'AGTC'
NB.   and fetch that character of 'TCAG' (effectively mapping them)
NB.   then reverse the entire string
revc =: |. @ ('TCAG' {~ 'AGTC' i."1 ])