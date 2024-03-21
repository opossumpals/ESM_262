
library(usethis)

usethis::use_package(ESM262Final)

# current presidential scenario
biden <- data.frame(party="Democrat", hist="Yes")

# alternate presidential scenario
trump <- data.frame(party="Republican", hist="No")

# all presidential scenarios for 2024-2028
pres_sce <- data.frame(name = c("Biden", "Trump"), party = c("Democrat", "Republican"), hist = c("Yes", "No"))




# data of different national monuments
molok_luyuk <- data.frame(acres = 13573, pub_int="Yes", activity="Yes", es=33)
chuckwalla <- data.frame(acres = 660000, pub_int="Yes", activity="Yes", es = 35)
sattitla <- data.frame(acres = 200000, pub_int="Yes", activity="Yes", es=31)
san_gab <- data.frame(acres=109000, pub_int="yes", activity="Yes", es=38)


# all potential california national monuments
cali_nm <- data.frame(names = c("molok luyuk", "chuckwalla", "sattitla", "san gab"),
                      acres = c(13573, 660000, 200000, 109000),
                      pub_int = c("Yes", "Yes", "Yes", "Yes"),
                      activity = c("Yes", "Yes", "Yes", "Yes"),
                      es = c(33, 35, 31, 38))


write.csv(cali_nm, "data")
