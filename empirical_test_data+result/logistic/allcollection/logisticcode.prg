
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

equation {%i}.binary(d=l) PROJECT_STATE_CODE c BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION  GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER 
equation {%i}withgini.binary(d=l) PROJECT_STATE_CODE c BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION GINI_COEF GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER 
equation {%i}withengel.binary(d=l) PROJECT_STATE_CODE c BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION engel_coef GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER 
equation {%i}withceleft.binary(d=l) PROJECT_STATE_CODE c BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK CREATOR_HAS_BACKED__PROJ CREATOR_HAS_BUILT_PROJEC DURATION celeft GOAL_USD HAS_A_VIDEO_D  UPDATES_NUMBER 
'equation {%i}withengel.binary(d=l) PROJECT_STATE_CODE c passsucceed_  CREATOR_HAS_BUILT_PROJEC BACKERS_COUNT COMMENTS_COUNT CREATOR_FRIENDS_FACEBOOK DURATION GOAL_USD HAS_A_VIDEO_D engel_coef UPDATES_NUMBER

'freeze(result{%i})  {%i}
'freeze(result{%i}withallvar)  {%i}withallvar
'result{%i}.save(t=csv) W:\BitTorrentSync\kickstarter_dataset\data\empirical_test_data\logistic\greater2creator\logittest\result{%i}
'{%i}factorstats.save(t=csv) W:\BitTorrentSync\kickstarter_dataset\data\empirical_test_data\logistic\greater2creator\descriptive\descriptive{%i}
next
