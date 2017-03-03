# - Simple public bind tcl script

# - Version 1.0 by capadesu

proc pub_comen {nick uhost hand chan args} {
putserv "NOTICE $nick : "0» Commands DuckHunt..!!"
putserv "NOTICE $nick : "4!dor » untuk menembak bebek"
  putserv "NOTICE $nick : "4!reload » untuk mengisi ulang peluru"
  putserv "NOTICE $nick : "4!lastduck » untuk melihat penerbangan bebek terakhir"
  putserv "NOTICE $nick : "4!duckstats » untuk melihat data pribadi dan pemburu lain"
  putserv "NOTICE $nick : "4!shop » untuk melakukan pembelian peluru atau amunisi di pistol"
  putserv "NOTICE $nick : "14Online Shop DuckHunt Visit » http://bit.ly/2lUV0gM"
  return 1
}
bind pub - !bebek pub_comen

putlog "help.tcl by CaPaDeSu"