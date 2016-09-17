for %i Design 	FilmandVideo	Food	Games	Publishing	Music Fashion Theater	Photography Art Technology Crafts Journalism Dance Comics
pageselect {%i}
freeze({%i}factorstats3) factor.stats
{%i}factorstats3.save(t=csv) C:\Users\c1506457\Desktop\result\large\stats\{%i}factorstats
freeze({%i}factorcor3) factor.cor
{%i}factorcor3.save(t=csv) C:\Users\c1506457\Desktop\result\large\cor\{%i}factorcor
freeze(result{%i}3)  {%i}
result{%i}3.save(t=csv) C:\Users\c1506457\Desktop\result\large\normal\{%i}
freeze(result{%i}wg3)  {%i}withgini
result{%i}wg3.save(t=csv) C:\Users\c1506457\Desktop\result\large\withgini\{%i}
'freeze(result{%i}we)  {%i}withengel
'result{%i}we.save(t=csv) C:\Users\c1506457\Desktop\result\large\withengel\{%i}
next
