
for %i Design 	FilmandVideo	Food	Games	Publishing	Music Fashion Theater	Photography Art Technology Crafts Journalism Dance Comics
pageselect {%i}
group factor BACKEDG20 BACKERS_COUNT COMMENTS_COUNT CREATEDG10 CREATOR_FRIENDS_FACEBOOK DURATION GINI_COEF HAS_A_VIDEO_D PROJECT_STATE_CODE UPDATES_NUMBER log(GOAL_USD)

equation {%i}.binary(d=l) PROJECT_STATE_CODE c BACKEDG20 BACKERS_COUNT COMMENTS_COUNT CREATEDG10 CREATOR_FRIENDS_FACEBOOK DURATION  HAS_A_VIDEO_D  UPDATES_NUMBER log(GOAL_USD)
equation {%i}withgini.binary(d=l) PROJECT_STATE_CODE c BACKEDG20 BACKERS_COUNT COMMENTS_COUNT CREATEDG10 CREATOR_FRIENDS_FACEBOOK DURATION GINI_COEF HAS_A_VIDEO_D  UPDATES_NUMBER log(GOAL_USD) 
'freeze(result{%i})  {%i}
'result{%i}.save(t=csv) C:\Users\c1506457\Desktop\grouplogitresult/logit/result{%i}
'{%i}factorstats.save(t=csv) C:\Users\c1506457\Desktop\grouplogitresult/descriptive/descriptive{%i}
next
'freeze({%i}factorstats) factor.stats
