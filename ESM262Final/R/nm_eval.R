
# national monument designation evaluation



# this function calculates the "worthiness" of an area for national monument designation based on the total acreage of the proposed area, whether or not there is public interest, whether or not there is work actively being done to designate the area, and the number of endangered species in the proposed area.
nm_desig_eval = function(acres, pub_int, activity, es) {

  ## acres ranking
  if(acres < 500) {
    acres = 1
  }

  else if(acres >= 500 && acres <= 1000) {
    acres = 2
  }

  else if(acres >= 1000 && acres <= 5000) {
    acres = 3
  }

  else if(acres >= 5000 && acres <= 10000) {
    acres = 4
  }

  else if (acres > 10000) {
    acres = 5
  }


  ## public interest in designation
  if(pub_int == "Yes") {
    pub_int = 1
  }

  if(pub_int == "No"){
    pub_int = -1
  }


  ## are there groups working to get an area designated?
  if(activity == "Yes") {
    activity = 1
  }

  if(activity == "No") {
    activity = -1
  }


  ## endangered species ranking
  if(es < 10) {
    es = 1
  }

  else if(es >= 10 && es <= 20) {
    es = 2
  }

  else if(es >= 20 && es <= 30) {
    es = 3
  }

  else if(es >= 30 && es <= 40) {
    es = 4
  }

  else if(es > 50 ) {
    es = 5
  }

area_rank = acres + pub_int + activity + es

return(area_rank)
}


# likelihood of designation
# National Monuments are designated via the Antiquities Act which is an executive power. As such, the Sitting president in power ultimately has the decision for whether or not an area becomes a National Monument.

likelihood = function(area_rank, party, hist) {

  # political party
  if(party == "Democrat") {
    party = 1
  }

  if(party == "Republican") {
    party = -1
  }


  # Has this president previously designated national monuments via the Antiquities Act?
  if(hist == "Yes") {
    hist = 1
  }

  if(hist == "No") {
    hist = 0
  }
  # Not previously designating a national monument is not a negative point because it could be early in a president's first term and thus the opportunity has not arisen.

  total_score = area_rank + party + hist

  return(total_score)
}


## The higher the total_score, the higher likelihood that an area will be designated as a National Monument. The lower the score, the less likely an area will be designated.
