myrisk <- id1 + id2 + id3 + id4
if(myrisk < '4'){
    risk.RSV <- '16.8%'
} else {
  if(myrisk=='4'){
    risk.RSV <- '23.4%'
  } else {
    risk.RSV <- '32.0%'
  }
}