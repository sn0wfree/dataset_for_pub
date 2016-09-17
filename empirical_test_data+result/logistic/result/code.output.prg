for %i Design 	FilmandVideo	Food	Games	Publishing	Music Fashion Theater	Photography Art Technology Crafts Journalism Dance Comics
pageselect {%i}
freeze({%i}factorstats2) factor2.stats
{%i}factorstats2.save(t=csv) C:\Users\c1506457\Desktop\result\small\stats\{%i}factorstats
freeze({%i}factorcor2) factor2.cor
{%i}factorcor2.save(t=csv) C:\Users\c1506457\Desktop\result\small\cor\{%i}factorcor
freeze(result{%i}2)  {%i}
result{%i}2.save(t=csv) C:\Users\c1506457\Desktop\result\small\normal\{%i}
freeze(result{%i}wg2)  {%i}withgini
result{%i}wg2.save(t=csv) C:\Users\c1506457\Desktop\result\small\withgini\{%i}
freeze(result{%i}we2)  {%i}withengel
result{%i}we2.save(t=csv) C:\Users\c1506457\Desktop\result\small\withengel\{%i}
freeze(result{%i}log)  {%i}log
result{%i}log.save(t=csv) C:\Users\c1506457\Desktop\result\small\log\{%i}
next
