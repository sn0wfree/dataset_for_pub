'equation comics.binary(d=l) PROJECT_STATE_CODE c BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION GINI_COEF GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER 
'comics
'equation filmandvideo.binary(d=l) PROJECT_STATE_CODE c BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION GINI_COEF GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER 
'equation comics.binary(d=l) PROJECT_STATE_CODE c BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION GINI_COEF GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER 
'GOAL_USD.stats
'{%PROJECT_STATE_CODE  BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION GINI_COEF GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER}.sheet
'group factor PROJECT_STATE_CODE  BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION GINI_COEF GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER
'factor.stats
'table(factor.stats)
'freeze(factorstats) factor.stats




'for %i Design 	Film&Video	Food	Games	Publishing	Music Fashion Theater	Photography Art Technology Crafts Journalism Dance Comics
'pageload(link) C:\Users\c1506457\Desktop\group\{%i}.csv ftype=ascii rectype=crlf skip=0 fieldtype=delimited delim=comma colhead=1 eoltype=pad badfield=NA @smpl @all
'next

for %i Design 	FilmandVideo	Food	Games	Publishing	Music Fashion Theater	Photography Art Technology Crafts Journalism Dance Comics
pageselect {%i}
group factor PROJECT_STATE_CODE  BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION GINI_COEF GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER
'freeze({%i}factorstats) factor.stats
equation {%i}.binary(d=l) PROJECT_STATE_CODE c BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION GINI_COEF GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER
'freeze(result{%i})  {%i}
'result{%i}.save(t=csv) C:\Users\c1506457\Desktop\grouplogitresult/logit/result{%i}
{%i}factorstats.save(t=csv) C:\Users\c1506457\Desktop\grouplogitresult/descriptive/descriptive{%i}
next 


