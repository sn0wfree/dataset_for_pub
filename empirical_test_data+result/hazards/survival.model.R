library(survival)

hazardsdata<-hazardsdatapart

hazardstest<-coxph(Surv(SUCCESS,SURVIVALDAY)~
                     + firsttwodaypledgedrate+goalusd
                     + backercounts+HasavideoDummy
                     + commits
                     + update
                     + friends,data=hazardsdata)

testdataset<-c(hazardsdata$SUCCESS,     
               hazardsdata$SURVIVALDAY,         
               hazardsdata$HasavideoDummy,        
               hazardsdata$backercounts,          
               hazardsdata$categoryDummy,        
               hazardsdata$commits,               
               hazardsdata$firsttwodaypledgedrate,
               hazardsdata$friends,               
               hazardsdata$goalusd,              
               hazardsdata$pledgerate,           
               hazardsdata$update)

surdataset<-Surv(hazardsdata$SURVIVALDAY,hazardsdata$SUCCESS==1)

kmfit1 <- survfit(surdataset~1)

summary(kmfit1)
plot(kmfit1,xlab='survival time in days',ylab='survival probabilities')

sink("/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/hazards/coxsurvivaldistribution.txt")
kmfit14 <- survfit(surdataset~hazardsdata$FTDPR14_d)
kmfit12 <- survfit(surdataset~hazardsdata$FTDPR12_d)
kmfit34 <- survfit(surdataset~hazardsdata$FTDPR34_d)
summary(kmfit14)
plot(kmfit14,lty = c('solid', 'dashed'), col=c('red','blue'),xlab='survival time in days',ylab='survival probabilities')
legend('bottomleft', c('FTDPR14_d=0','FTDPR14_d=1'), lty=c('solid','dashed'),col=c('red','blue'))
summary(kmfit12)
summary(kmfit34)


sink()


plot(kmfit2, lty = c('solid', 'dashed'), col=c('red','blue'),
     xlab='survival time in days',ylab='survival probabilities')
legend('topright', c('oringinal','FTDPR14_d'), lty=c('solid','dashed'),
       col=c('red','blue'))
sink("/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/hazards/coxsurdiffresult.txt")
survdiff(Surv(SURVIVALDAY,SUCCESS)~FTDPR14_d, data=hazardsdata)
survdiff(Surv(SURVIVALDAY,SUCCESS)~FTDPR14_d+strata(UPDATES+ BACKERS +COMMENTS+ LOG(GOAL) + HASVIDEO+FRIENDS), data=hazardsdata)
survdiff(Surv(SURVIVALDAY,SUCCESS)~FTDPR12_d, data=hazardsdata)
survdiff(Surv(SURVIVALDAY,SUCCESS)~FTDPR12_d+strata(UPDATES+ BACKERS +COMMENTS+ LOG(GOAL) + HASVIDEO+FRIENDS), data=hazardsdata)
survdiff(Surv(SURVIVALDAY,SUCCESS)~FTDPR34_d, data=hazardsdata)
survdiff(Surv(SURVIVALDAY,SUCCESS)~FTDPR34_d+strata(UPDATES+ BACKERS +COMMENTS+ LOG(GOAL) + HASVIDEO+FRIENDS), data=hazardsdata)
sink()

# cox model
coxmodelnodummy<-coxph(surdataset~FTDPR,data=hazardsdata)
coxmodel14<- coxph(surdataset~FTDPR14_d,data=hazardsdata)
coxmodel12<- coxph(surdataset~FTDPR12_d,data=hazardsdata)
coxmodel34<- coxph(surdataset~FTDPR34_d,data=hazardsdata)

coxmodel14withothervar <- coxph(surdataset~ FTDPR14_d +UPDATES+ BACKERS +COMMENTS+ LOG(GOAL) + HASVIDEO+FRIENDS,data=hazardsdata)
coxmodel12withothervar<- coxph(surdataset~FTDPR12_d +UPDATES+ BACKERS +COMMENTS+ LOG(GOAL) + HASVIDEO+FRIENDS,data=hazardsdata)
coxmodel34withothervar<- coxph(surdataset~FTDPR34_d +UPDATES+ BACKERS +COMMENTS+ LOG(GOAL) + HASVIDEO+FRIENDS,data=hazardsdata)
sink("/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/hazards/coxresult.txt")
summary(coxmodel14)
summary(coxmodel12)
summary(coxmodel34)
summary(coxmodel14withothervar)
summary(coxmodel12withothervar)
summary(coxmodel34withothervar)
sink()


sink("/Users/sn0wfree/Dropbox/BitTorrentSync/kickstarter_dataset/data/empirical_test_data/hazards/coxresidualresult.txt")
(res.zph14 <- cox.zph(coxmodel14))
(res.zph12 <- cox.zph(coxmodel12))
(res.zph34 <- cox.zph(coxmodel34))
(res.zph14withothervar <- cox.zph(coxmodel14withothervar))
(res.zph12withothervar <- cox.zph(coxmodel12withothervar))
(res.zph34withothervar <- cox.zph(coxmodel34withothervar))
sink()


plot(res.zph14)
par(mfrow=c(3,3))
plot(res.zph14withothervar)
plot(res.zph12)
plot(res.zph12withothervar)
plot(res.zph34)
plot(res.zph34withothervar)
