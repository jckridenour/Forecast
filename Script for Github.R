rm(list=ls())

##### Gross Domestic Product #####

setwd("C:/Users/Joshua/Documents/Data/Election Data/My Data")

load("The Dataset.RData")
load("gdp.RData")

gdp<-gdp$gdpgr
reppct<-d1$reppct

summary(lm(reppct~gdp))

y = .5099323 + (-.0000811*(2.43))
y
# 0.51


##### Index of Consumer Sentiment #####

rm(list=ls())

#setwd("C:/Users/Joshua/Documents/Data/Election Data/My Data")

load("The Dataset.RData")

newdata<-d1[-c(1:4),]

ics<-c(99.6, 94.2, 93.2, 86, 64.5, 97.5, 93.7, 77.3, 93.6, 107.6, 95.2, 63.7, 76.6)

newdata$ics

summary(lm(reppct~ics, data=newdata))

y = .5069529 + .0002481*(91.4-100)
y
# 0.505


##### Unemployment Change #####

rm(list=ls())

load("empch.RData")

summary(lm(reppct~empch, data=empmodel))

y = .49995 + -.00154*(4.9-8.2)
y
# 0.505


##### International Conflicts #####

rm(list=ls())

setwd("C:/Users/Joshua/Documents/Data/Election Data/PRIO")

load("prio.RData")

conf<-prio

rm(prio)

conf$conflict<-rep(1, length(conf[,1]))

conf44<-sum(conf$conflict[conf$Year==1944])
conf45<-sum(conf$conflict[conf$Year==1945])
conf46<-sum(conf$conflict[conf$Year==1946])
conf47<-sum(conf$conflict[conf$Year==1947])
conf48<-sum(conf$conflict[conf$Year==1948])
conf49<-sum(conf$conflict[conf$Year==1949])
conf50<-sum(conf$conflict[conf$Year==1950])
conf51<-sum(conf$conflict[conf$Year==1951])
conf52<-sum(conf$conflict[conf$Year==1952])
conf53<-sum(conf$conflict[conf$Year==1953])
conf54<-sum(conf$conflict[conf$Year==1954])
conf55<-sum(conf$conflict[conf$Year==1955])
conf56<-sum(conf$conflict[conf$Year==1956])
conf57<-sum(conf$conflict[conf$Year==1957])
conf58<-sum(conf$conflict[conf$Year==1958])
conf59<-sum(conf$conflict[conf$Year==1959])
conf60<-sum(conf$conflict[conf$Year==1960])
conf61<-sum(conf$conflict[conf$Year==1961])
conf62<-sum(conf$conflict[conf$Year==1962])
conf63<-sum(conf$conflict[conf$Year==1963])
conf64<-sum(conf$conflict[conf$Year==1964])
conf65<-sum(conf$conflict[conf$Year==1965])
conf66<-sum(conf$conflict[conf$Year==1966])
conf67<-sum(conf$conflict[conf$Year==1967])
conf68<-sum(conf$conflict[conf$Year==1968])
conf69<-sum(conf$conflict[conf$Year==1969])
conf70<-sum(conf$conflict[conf$Year==1970])
conf71<-sum(conf$conflict[conf$Year==1971])
conf72<-sum(conf$conflict[conf$Year==1972])
conf73<-sum(conf$conflict[conf$Year==1973])
conf74<-sum(conf$conflict[conf$Year==1974])
conf75<-sum(conf$conflict[conf$Year==1975])
conf76<-sum(conf$conflict[conf$Year==1976])
conf77<-sum(conf$conflict[conf$Year==1977])
conf78<-sum(conf$conflict[conf$Year==1978])
conf79<-sum(conf$conflict[conf$Year==1979])
conf80<-sum(conf$conflict[conf$Year==1980])
conf81<-sum(conf$conflict[conf$Year==1981])
conf82<-sum(conf$conflict[conf$Year==1982])
conf83<-sum(conf$conflict[conf$Year==1983])
conf84<-sum(conf$conflict[conf$Year==1984])
conf85<-sum(conf$conflict[conf$Year==1985])
conf86<-sum(conf$conflict[conf$Year==1986])
conf87<-sum(conf$conflict[conf$Year==1987])
conf88<-sum(conf$conflict[conf$Year==1988])
conf89<-sum(conf$conflict[conf$Year==1989])
conf90<-sum(conf$conflict[conf$Year==1990])
conf91<-sum(conf$conflict[conf$Year==1991])
conf92<-sum(conf$conflict[conf$Year==1992])
conf93<-sum(conf$conflict[conf$Year==1993])
conf94<-sum(conf$conflict[conf$Year==1994])
conf95<-sum(conf$conflict[conf$Year==1995])
conf96<-sum(conf$conflict[conf$Year==1996])
conf97<-sum(conf$conflict[conf$Year==1997])
conf98<-sum(conf$conflict[conf$Year==1998])
conf99<-sum(conf$conflict[conf$Year==1999])
conf00<-sum(conf$conflict[conf$Year==2000])
conf01<-sum(conf$conflict[conf$Year==2001])
conf02<-sum(conf$conflict[conf$Year==2002])
conf03<-sum(conf$conflict[conf$Year==2003])
conf04<-sum(conf$conflict[conf$Year==2004])
conf05<-sum(conf$conflict[conf$Year==2005])
conf06<-sum(conf$conflict[conf$Year==2006])
conf07<-sum(conf$conflict[conf$Year==2007])
conf08<-sum(conf$conflict[conf$Year==2008])
conf09<-sum(conf$conflict[conf$Year==2009])
conf10<-sum(conf$conflict[conf$Year==2010])
conf11<-sum(conf$conflict[conf$Year==2011])
conf12<-sum(conf$conflict[conf$Year==2012])
conf13<-sum(conf$conflict[conf$Year==2013])
conf14<-sum(conf$conflict[conf$Year==2014])
conf15<-sum(conf$conflict[conf$Year==2015])

allpre<-c((conf44+conf45+conf46+conf47), (conf48+conf49+conf50+conf51),
			(conf52+conf53+conf54+conf55), (conf56+conf57+conf58+conf59),
			(conf60+conf61+conf62+conf63), (conf64+conf65+conf66+conf67),
			(conf68+conf69+conf70+conf71), (conf72+conf73+conf74+conf75),
			(conf76+conf77+conf78+conf79), (conf80+conf81+conf82+conf83),
			(conf84+conf85+conf86+conf87), (conf88+conf89+conf90+conf91),
			(conf92+conf93+conf94+conf95), (conf96+conf97+conf98+conf99),
			(conf00+conf01+conf02+conf03), (conf04+conf05+conf06+conf07),
			(conf08+conf09+conf10+conf11))

latest<-conf12+conf13+conf14+conf15

setwd("C:/Users/Joshua/Documents/Data/Election Data/My Data")

load("The Dataset.RData")

reppct<-d1$reppct

summary(lm(reppct~allpre))

y = .5080 + 0.00001056*(160)
y
# 0.51


##### Voting Eligible Population and Turnout #####

## RECODING PORTION -- DO NOT USE FOR ANALYSIS ##

rm(list=ls())

setwd("C:/Users/Joshua/Dropbox/University of Arizona/2016-2017/Fall 2016/POL 683 - Methods/Midterm Project/Newest")

load("election data since 1980.RData")

mod_vepto<-c(.542, .552, .528, .581, .517, .542, .601, .616, .580) #US Elections Project
mod_vep<-c(159635102, 167701904, 173579281, 179655523, 186347044, 194331436, 203483455, 213313508, 222474111) # US Elections Project

plot(data_mod$year, data_mod$vepto, xlab="Election Year", ylab="VEP Turnout", ylim=c(.4, .7))
lines(data_mod$year, data_mod$vepto)

data_mod$veptoch<-NA

for(i in 2:9){
	data_mod[i,7]<-data_mod[i,5] - data_mod[i-1,5]
}

data_mod[1,7]<- data_mod[1,5]-.548

veptoch16<-mean(data_mod$veptoch)
vepto16<-data_mod[9,5] - veptoch16

data_mod$vepch<-NA

for(i in 2:9){
	data_mod[i,8]<-data_mod[i,6] - data_mod[i-1,6]
}

data_mod[1,8] <- 7854876

vep16<-data_mod[9,6] + mean(data_mod$vepch)


## Analysis Component -- START HERE FOR ANALYSIS ##

rm(list=ls())

setwd("C:/Users/Joshua/Dropbox/University of Arizona/2016-2017/Fall 2016/POL 683 - Methods/Midterm Project/Data")

load("election data since 1980.RData")

veptoch16<-mean(data_mod$veptoch)
vepto16<-data_mod[9,5] - veptoch16
vep16<-data_mod[9,6] + mean(data_mod$vepch)

reg<-lm(reppct~vep*vepto, data=data_mod)
y = reg$coefficients[1] + (vep16*reg$coefficients[2]) + (vepto16*reg$coefficients[3]) +(vep16*vepto16*reg$coefficients[4])
y
# 0.441


##### Further Testing of the Model #####

d1<-data_mod[-1,]
d2<-data_mod[-2,]
d3<-data_mod[-3,]
d4<-data_mod[-4,]
d5<-data_mod[-5,]
d6<-data_mod[-6,]
d7<-data_mod[-7,]
d8<-data_mod[-8,]
d9<-data_mod[-9,]

reg1<-lm(reppct~vep*vepto, data=d1)
reg2<-lm(reppct~vep*vepto, data=d2)
reg3<-lm(reppct~vep*vepto, data=d3)
reg4<-lm(reppct~vep*vepto, data=d4)
reg5<-lm(reppct~vep*vepto, data=d5)
reg6<-lm(reppct~vep*vepto, data=d6)
reg7<-lm(reppct~vep*vepto, data=d7)
reg8<-lm(reppct~vep*vepto, data=d8)
reg9<-lm(reppct~vep*vepto, data=d9)

a1<-reg1$coefficients[1]
a2<-reg2$coefficients[1]
a3<-reg3$coefficients[1]
a4<-reg4$coefficients[1]
a5<-reg5$coefficients[1]
a6<-reg6$coefficients[1]
a7<-reg7$coefficients[1]
a8<-reg8$coefficients[1]
a9<-reg9$coefficients[1]

bvep1<-reg1$coefficients[2]
bvep2<-reg2$coefficients[2]
bvep3<-reg3$coefficients[2]
bvep4<-reg4$coefficients[2]
bvep5<-reg5$coefficients[2]
bvep6<-reg6$coefficients[2]
bvep7<-reg7$coefficients[2]
bvep8<-reg8$coefficients[2]
bvep9<-reg9$coefficients[2]

bto1<-reg1$coefficients[3]
bto2<-reg2$coefficients[3]
bto3<-reg3$coefficients[3]
bto4<-reg4$coefficients[3]
bto5<-reg5$coefficients[3]
bto6<-reg6$coefficients[3]
bto7<-reg7$coefficients[3]
bto8<-reg8$coefficients[3]
bto9<-reg9$coefficients[3]

bint1<-reg1$coefficients[4]
bint2<-reg2$coefficients[4]
bint3<-reg3$coefficients[4]
bint4<-reg4$coefficients[4]
bint5<-reg5$coefficients[4]
bint6<-reg6$coefficients[4]
bint7<-reg7$coefficients[4]
bint8<-reg8$coefficients[4]
bint9<-reg9$coefficients[4]

### Predictions for each election ###

y80<- (a1 + (bvep1*data_mod[1,6]) + (bto1*data_mod[1,5]) + (bint1*data_mod[1,6]*data_mod[1,5]))
y84<- (a2 + (bvep2*data_mod[2,6]) + (bto2*data_mod[2,5]) + (bint2*data_mod[2,6]*data_mod[2,5]))
y88<- (a3 + (bvep3*data_mod[3,6]) + (bto3*data_mod[3,5]) + (bint3*data_mod[3,6]*data_mod[3,5]))
y92<- (a4 + (bvep4*data_mod[4,6]) + (bto4*data_mod[4,5]) + (bint4*data_mod[4,6]*data_mod[4,5]))
y96<- (a5 + (bvep5*data_mod[5,6]) + (bto5*data_mod[5,5]) + (bint5*data_mod[5,6]*data_mod[5,5]))
y00<- (a6 + (bvep6*data_mod[6,6]) + (bto6*data_mod[6,5]) + (bint6*data_mod[6,6]*data_mod[6,5]))
y04<- (a7 + (bvep7*data_mod[7,6]) + (bto7*data_mod[7,5]) + (bint7*data_mod[7,6]*data_mod[7,5]))
y08<- (a8 + (bvep8*data_mod[8,6]) + (bto8*data_mod[8,5]) + (bint8*data_mod[8,6]*data_mod[8,5]))
y12<- (a9 + (bvep9*data_mod[9,6]) + (bto9*data_mod[9,5]) + (bint9*data_mod[9,6]*data_mod[9,5]))

diff80<-abs(y80 - data_mod[1,2])
diff84<-abs(y84 - data_mod[2,2])
diff88<-abs(y88 - data_mod[3,2])
diff92<-abs(y92 - data_mod[4,2])
diff96<-abs(y96 - data_mod[5,2])
diff00<-abs(y00 - data_mod[6,2])
diff04<-abs(y04 - data_mod[7,2])
diff08<-abs(y08 - data_mod[8,2])
diff12<-abs(y12 - data_mod[9,2])

diff<-mean(diff80, diff84, diff88, diff92, diff96, diff00, diff04, diff08, diff12)
# 0.013354286, average absolute difference from prediction to observation using n - 1 regressions on n - 1 datasets

a = reg$coefficients[1]
bvep<-reg$coefficients[2]
bto<-reg$coefficients[3]
bint<-reg$coefficients[4]


p80<-a + bvep*(data_mod[1,6]) + bto*(data_mod[1,5]) + (bint*data_mod[1,6]*data_mod[1,5])
p84<-a + bvep*(data_mod[2,6]) + bto*(data_mod[2,5]) + (bint*data_mod[2,6]*data_mod[2,5])
p88<-a + bvep*(data_mod[3,6]) + bto*(data_mod[3,5]) + (bint*data_mod[3,6]*data_mod[3,5])
p92<-a + bvep*(data_mod[4,6]) + bto*(data_mod[4,5]) + (bint*data_mod[4,6]*data_mod[4,5])
p96<-a + bvep*(data_mod[5,6]) + bto*(data_mod[5,5]) + (bint*data_mod[5,6]*data_mod[5,5])
p00<-a + bvep*(data_mod[6,6]) + bto*(data_mod[6,5]) + (bint*data_mod[6,6]*data_mod[6,5])
p04<-a + bvep*(data_mod[7,6]) + bto*(data_mod[7,5]) + (bint*data_mod[7,6]*data_mod[7,5])
p08<-a + bvep*(data_mod[8,6]) + bto*(data_mod[8,5]) + (bint*data_mod[8,6]*data_mod[8,5])
p12<-a + bvep*(data_mod[9,6]) + bto*(data_mod[9,5]) + (bint*data_mod[9,6]*data_mod[9,5])

preds<-cbind(p80, p84, p88, p92, p96, p00, p04, p08, p12)

cdiff80<-abs(p80-data_mod[1,2])
cdiff84<-abs(p84-data_mod[2,2])
cdiff88<-abs(p88-data_mod[3,2])
cdiff92<-abs(p92-data_mod[4,2])
cdiff96<-abs(p96-data_mod[5,2])
cdiff00<-abs(p00-data_mod[6,2])
cdiff04<-abs(p04-data_mod[7,2])
cdiff08<-abs(p08-data_mod[8,2])
cdiff12<-abs(p12-data_mod[9,2])

avgcdiff<-mean(cdiff80, cdiff84, cdiff88, cdiff92, cdiff96, cdiff96, cdiff00, cdiff04, cdiff08, cdiff12)
# 0.006917939, Average distance between predicted and observed using "Good Model" for each n - 1 dataset

min(cdiff80, cdiff84, cdiff88, cdiff92, cdiff96, cdiff00, cdiff04, cdiff08, cdiff12)
# min: .006480969
# max: .05473805

a_all<-mean(a1, a2, a3, a4, a5, a6, a7, a8, a9)
bvep_all<-mean(bvep1, bvep2, bvep3, bvep4, bvep5, bvep6, bvep7, bvep8, bvep9)
bto_all<-mean(bto1, bto2, bto3, bto4, bto5, bto6, bto7, bto8, bto9)
bint_all<-mean(bint1, bint2, bint3, bint4, bint5, bint6, bint7, bint8, bint9)

all_1<-a_all + (bvep_all*data_mod[1,6]) + (bto_all*data_mod[1,5]) + (bint_all*data_mod[1,6]*data_mod[1,5])
all_2<-a_all + (bvep_all*data_mod[2,6]) + (bto_all*data_mod[2,5]) + (bint_all*data_mod[2,6]*data_mod[2,5])
all_3<-a_all + (bvep_all*data_mod[3,6]) + (bto_all*data_mod[3,5]) + (bint_all*data_mod[3,6]*data_mod[3,5])
all_4<-a_all + (bvep_all*data_mod[4,6]) + (bto_all*data_mod[4,5]) + (bint_all*data_mod[4,6]*data_mod[4,5])
all_5<-a_all + (bvep_all*data_mod[5,6]) + (bto_all*data_mod[5,5]) + (bint_all*data_mod[5,6]*data_mod[5,5])
all_6<-a_all + (bvep_all*data_mod[6,6]) + (bto_all*data_mod[6,5]) + (bint_all*data_mod[6,6]*data_mod[6,5])
all_7<-a_all + (bvep_all*data_mod[7,6]) + (bto_all*data_mod[7,5]) + (bint_all*data_mod[7,6]*data_mod[7,5])
all_8<-a_all + (bvep_all*data_mod[8,6]) + (bto_all*data_mod[8,5]) + (bint_all*data_mod[8,6]*data_mod[8,5])
all_9<-a_all + (bvep_all*data_mod[9,6]) + (bto_all*data_mod[9,5]) + (bint_all*data_mod[9,6]*data_mod[9,5])

all_df80<-abs(all_1 - data_mod[1,2])
all_df84<-abs(all_2 - data_mod[2,2])
all_df88<-abs(all_3 - data_mod[3,2])
all_df92<-abs(all_4 - data_mod[4,2])
all_df96<-abs(all_5 - data_mod[5,2])
all_df00<-abs(all_6 - data_mod[6,2])
all_df04<-abs(all_7 - data_mod[7,2])
all_df08<-abs(all_8 - data_mod[8,2])
all_df12<-abs(all_9 - data_mod[9,2])

all_diffavg<-mean(all_df80, all_df84, all_df88, all_df92, all_df96, all_df00, all_df04, all_df08, all_df12)
# 0.01354286, Average difference between predicted and observed using the Averaged n - 1 regression coefficients

diff<-abs(data_mod$reppct - reg$fitted.values)
# min: .006, max: .05


##### Graphics Portion #####

library(ggplot2)

ggplot(data_mod, aes(year, reppct))+ 
	geom_point(colour="#000000") +
	geom_point( aes(x = data_mod$year, y = reg$fitted.values, colour="#9900FF") +
	geom_line(data_mod, aes(x = data_mod$year, y = data_mod$reppct, colour=variable) +
	geom_line(data_mod, aes(x = data_mod$year, y = reg$fitted.values, colour=variable))))




plot(data_mod$year, data_mod$reppct, pch=19, cex=1, main="Republican Share of the Two-Party Vote", ylab="Proportion", xlab="Year", ylim=c(.4, .7), xlim=c(1980, 2016))
points(data_mod$year, reg$fitted.values, col="purple", pch=15)
lines(data_mod$year, data_mod$reppct, lty=1)
lines(data_mod$year, reg$fitted.values, col="purple", lty=2)
abline(.5, 0, col="dark green")

points(2016, .4406698, pch=18, col="blue", cex=2)
text(2013, .42, labels="2016: .44", col="blue", cex=1.1)





