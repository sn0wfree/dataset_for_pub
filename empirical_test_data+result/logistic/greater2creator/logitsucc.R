library(lmtest)
Art<-subset(testdata,testdata['category_round']=='Art')     
Comics<-subset(testdata,testdata['category_round']== 'Comics')
Crafts<-subset(testdata,testdata['category_round']== 'Crafts')
Dance<-subset(testdata,testdata['category_round']== 'Dance')
Design<-subset(testdata,testdata['category_round']== 'Design')
Fashion<-subset(testdata,testdata['category_round']== 'Fashion')
FilmandVideo<-subset(testdata,testdata['category_round']== 'Film&Video')        
Food<-subset(testdata,testdata['category_round']== 'Food')     
Games<-subset(testdata,testdata['category_round']== 'Games') 
Journalism<-subset(testdata,testdata['category_round']== 'Journalism')       
Music<-subset(testdata,testdata['category_round']== 'Music')
Photography<-subset(testdata,testdata['category_round']== 'Photography')
Publishing<-subset(testdata,testdata['category_round']== 'Publishing')  
Technology<-subset(testdata,testdata['category_round']== 'Technology')     
Theater<-subset(testdata,testdata['category_round']== 'Theater')
#do logit model




logitDesign.model <- glm(project_state_code ~
                           passsucceed_level50+
                           backedg20+
                           createdg10+
                           duration+
                           log(goal_usd)+
                          
                           backers_count+
                           creator_friends_facebook_number+
                           has_a_video_d+
                           updates_number+
                           comments_count
                         ,family=binomial, data=Design)

logitFilmandVideo.model <- glm(project_state_code ~
                                 passsucceed_level50+
                                 backedg20+
                                 createdg10+
                                 duration+
                                 log(goal_usd)+
                                
                                 backers_count+
                                 creator_friends_facebook_number+
                                 has_a_video_d+
                                 updates_number+
                                 comments_count
                               ,family=binomial, data=FilmandVideo)

logitFood.model <- glm(project_state_code ~
                         passsucceed_level50+
                         backedg20+
                         createdg10+
                         duration+
                         log(goal_usd)+
                        
                         backers_count+
                         creator_friends_facebook_number+
                         has_a_video_d+
                         updates_number+
                         comments_count
                       ,family=binomial, data=Food)

logitGames.model <- glm(project_state_code ~
                          passsucceed_level50+
                          backedg20+
                          createdg10+
                          duration+
                          log(goal_usd)+
                         
                          backers_count+
                          creator_friends_facebook_number+
                          has_a_video_d+
                          updates_number+
                          comments_count
                        ,family=binomial, data=Games)

logitPublishing.model <- glm(project_state_code ~
                               passsucceed_level50+
                               backedg20+
                               createdg10+
                               duration+
                               log(goal_usd)+
                              
                               backers_count+
                               creator_friends_facebook_number+
                               has_a_video_d+
                               updates_number+
                               comments_count
                             ,family=binomial, data=Publishing)

logitMusic.model <- glm(project_state_code ~
                          passsucceed_level50+
                          backedg20+
                          createdg10+
                          duration+
                          log(goal_usd)+
                        
                          backers_count+
                          creator_friends_facebook_number+
                          has_a_video_d+
                          updates_number+
                          comments_count
                        ,family=binomial, data=Music)

logitFashion.model <- glm(project_state_code ~
                            passsucceed_level50+
                            backedg20+
                            createdg10+
                            duration+
                            log(goal_usd)+
                           
                            backers_count+
                            creator_friends_facebook_number+
                            has_a_video_d+
                            updates_number+
                            comments_count
                          ,family=binomial, data=Fashion)

logitTheater.model <- glm(project_state_code ~
                            passsucceed_level50+
                            backedg20+
                            createdg10+
                            duration+
                            log(goal_usd)+
                           
                            backers_count+
                            creator_friends_facebook_number+
                            has_a_video_d+
                            updates_number+
                            comments_count
                          ,family=binomial, data=Theater)

logitPhotography.model <- glm(project_state_code ~
                                passsucceed_level50+
                                backedg20+
                                createdg10+
                                duration+
                                log(goal_usd)+
                                
                                backers_count+
                                creator_friends_facebook_number+
                                has_a_video_d+
                                updates_number+
                                comments_count
                              ,family=binomial, data=Photography)

logitArt.model <- glm(project_state_code ~
                        passsucceed_level50+
                        backedg20+
                        createdg10+
                        duration+
                        log(goal_usd)+
                        
                        backers_count+
                        creator_friends_facebook_number+
                        has_a_video_d+
                        updates_number+
                        comments_count
                      ,family=binomial, data=Art)

logitComics.model <- glm(project_state_code ~
                           passsucceed_level50+
                           backedg20+
                           createdg10+
                           duration+
                           log(goal_usd)+
                          
                           backers_count+
                           creator_friends_facebook_number+
                           has_a_video_d+
                           updates_number+
                           comments_count
                         ,family=binomial, data=Comics)

logitTechnology.model <- glm(project_state_code ~
                               passsucceed_level50+
                               backedg20+
                               createdg10+
                               duration+
                               log(goal_usd)+
                              
                               backers_count+
                               creator_friends_facebook_number+
                               has_a_video_d+
                               updates_number+
                               comments_count
                             ,family=binomial, data=Technology)

logitCrafts.model <- glm(project_state_code ~
                           passsucceed_level50+
                           backedg20+
                           createdg10+
                           duration+
                           log(goal_usd)+
                           
                           backers_count+
                           creator_friends_facebook_number+
                           has_a_video_d+
                           updates_number+
                           comments_count
                         ,family=binomial, data=Crafts)

logitJournalism.model <- glm(project_state_code ~
                               passsucceed_level50+
                               backedg20+
                               createdg10+
                               duration+
                               log(goal_usd)+
                              
                               backers_count+
                               creator_friends_facebook_number+
                               has_a_video_d+
                               updates_number+
                               comments_count
                             ,family=binomial, data=Journalism)

logitDance.model <- glm(project_state_code ~
                          passsucceed_level50+
                          backedg20+
                          createdg10+
                          duration+
                          log(goal_usd)+
                         
                          backers_count+
                          creator_friends_facebook_number+
                          has_a_video_d+
                          updates_number+
                          comments_count
                        ,family=binomial, data=Dance)

#sink("/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/newtest/result/result.txt")
sink("/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/newtest/result/result.csv")

print ('state of Design')
summary(logitDesign.model)
#logitDesignold.model <- glm(project_state_code ~1 ,family=binomial, data=Design)
anova(object = logitDesign.model, test = 'Chisq')
lrtest(logitDesign.model)

print ('state of FilmandVideo')
summary(logitFilmandVideo.model)
anova(object = logitFilandVideo.model, test = 'Chisq')
lrtest(logitFilmandVideo.model)

print ('state of Food')
summary(logitFood.model)
anova(object = logitFood.model, test = 'Chisq')
lrtest(logitFood.model)

print ('state of Games')
summary(logitGames.model)
anova(object = logitGames.model, test = 'Chisq')
lrtest(logitGames.model)

print ('state of Publishing')
summary(logitPublishing.model)
anova(object = logitPublishing.model, test = 'Chisq')
lrtest(logitPublishing.model)

print ('state of Music')
summary(logitMusic.model)
anova(object = logitMusic.model, test = 'Chisq')
lrtest(logitMusic.model)

print ('state of Fashion')
summary(logitFashion.model)
anova(object = logitFashion.model, test = 'Chisq')
lrtest(logitFashion.model)

print ('state of Theater')
summary(logitTheater.model)
anova(object = logitTheater.model, test = 'Chisq')
lrtest(logitTheater.model)

print ('state of Photography')
summary(logitPhotography.model)
anova(object = logitPhotography.model, test = 'Chisq')
lrtest(logitPhotography.model)

print ('state of Art')
summary(logitArt.model)
anova(object = logitArt.model, test = 'Chisq')
lrtest(logitArt.model)

print ('state of Comics')
summary(logitComics.model)
anova(object = logitComics.model, test = 'Chisq')
lrtest(logitComics.model)

print ('state of Technology')
summary(logitTechnology.model)
anova(object = logitTechnology.model, test = 'Chisq')
lrtest(logitTechnology.model)

print ('state of Crafts')
summary(logitCrafts.model)
anova(object = logitCrafts.model, test = 'Chisq')
lrtest(logitCrafts.model)
print ('state of Journalism')
summary(logitJournalism.model)
anova(object = logitJournalism.model, test = 'Chisq')
lrtest(logitJournalism.model)

print ('state of Dance')
summary(logitDance.model)
anova(object = logitDance.model, test = 'Chisq')
lrtest(logitDance.model)

sink()

#/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group

#dataframe export
#large
#write.csv(Design,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Design.csv")
write.csv(Design,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Design.csv")
write.csv(FilmandVideo,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Film&Video.csv")
write.csv(Food,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Food.csv")
write.csv(Games,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Games.csv")
write.csv(Publishing,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Publishing.csv")
write.csv(Music,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Music.csv")
write.csv(Fashion,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Fashion.csv")
write.csv(Theater,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Theater.csv")
write.csv(Photography,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Photography.csv")
write.csv(Art,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Art.csv")
write.csv(Comics,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Comics.csv")
write.csv(Technology,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Technology.csv")
write.csv(Crafts,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Crafts.csv")
write.csv(Journalism,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Journalism.csv")
write.csv(Dance,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/group/Dance.csv")




#small
#/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group
write.csv(Design,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Design.csv")
write.csv(FilmandVideo,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Film&Video.csv")
write.csv(Food,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Food.csv")
write.csv(Games,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Games.csv")
write.csv(Publishing,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Publishing.csv")
write.csv(Music,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Music.csv")
write.csv(Fashion,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Fashion.csv")
write.csv(Theater,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Theater.csv")
write.csv(Photography,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Photography.csv")
write.csv(Art,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Art.csv")
write.csv(Comics,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Comics.csv")
write.csv(Technology,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Technology.csv")
write.csv(Crafts,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Crafts.csv")
write.csv(Journalism,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Journalism.csv")
write.csv(Dance,file="/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/group/Dance.csv")


#sink("/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/allcollection/newtest/result/describelstats.txt")
sink("/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/logistic/greater2creator/newtest/result/describelstats.txt")

print ('-----------------------')
print ('state of Design')
summary(Design)
print ('-----------------------')
print ('state of FilmandVideo')
summary(FilmandVideo)
print ('-----------------------')
print ('state of Food')
summary(Food)
print ('-----------------------')
print ('state of Games')
summary(Games)
print ('-----------------------')
print ('state of Publishing')
summary(Publishing)
print ('-----------------------')
print ('state of Music')
summary(Music)
print ('-----------------------')
print ('state of Fashion')
summary(Fashion)
print ('-----------------------')
print ('state of Theater')
summary(Theater)
print ('-----------------------')
print ('state of Photography')
summary(Photography)
print ('-----------------------')
print ('state of Art')
summary(Art)
print ('-----------------------')
print ('state of Comics')
summary(Comics)
print ('-----------------------')
print ('state of Technology')
summary(Technology)
print ('-----------------------')
print ('state of Crafts')
summary(Crafts)
print ('-----------------------')
print ('state of Journalism')
summary(Journalism)
print ('-----------------------')
print ('state of Dance')
summary(Dance)
sink()
