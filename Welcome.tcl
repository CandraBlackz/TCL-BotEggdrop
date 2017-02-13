####################################
## WeLCoMe.TcL v1.0 By Blackz 	  ##
## © Sep 2010, TheFreakyNight     ##
## #stauvit irc.allnetwork.org 	  ##
####################################

###################
##[ KONFIGURASI ]##
###################
# 0 - di channel
# 1 - di PM
set mode_pesan 0

###################
##[ PESAN SALAM ]##
###################
# <nick> - Nick, <chan> - Channel
set pesan_salam {
"Hy <nick>! met datang di <chan> ya :)"
"Wow.. <nick> ini temennya Linus Trovalds sang pembuat Linux :)"
"<nick> ini pernah nyaingin Kevin Midnick nih :D"
"Robey Pointer bersama <nick> udah bikin eggdrop/gua wkwkwk"
"webee <nick> :D"
"Selamat Datang <nick> :)"
"Wew.. Xeaxeaxea.. <nick> pa kabar?"
"Baru OL ya <nick>?"
"Lah.. <nick> darimana ajah?"
"Met datang di <chan>, <nick>"
"Hadaaah.. <nick> baru bangun tidur y? Cuci muka dulu sana.."
"hai <nick>!"
"Wah.. Master <nick> dateng nih.."
"<nick> dah mandi blon?"
"baru join y <nick>?"
"<nick>, ada yg nyariin tuh.."
"<nick>, td kemana aja?"
"ngpn aja barusan <nick>?"
"<nick> dah makan blom?"
"hmm.. <nick> udah mulai beraksi ne kayaknya"
"kamu baik deh <nick>"
"<nick> udah siyap2 dg aksinya.."
"<nick>, kamu cuakep deh.."
"aku seneng liat <nick>.. orgnya ramah, baik, cakep lagi."
"nicknya bagus loh <nick>.."
"<nick>, senyummu bikin hatiku berdebar.."
"wow.. <nick> ini salah satu dedengkot IRC neh.."
"asyiiik.. master <nick> dateng.."
"awas, <nick> adalah hacker yg pernah jatuh cinta sama cracker"
"hadah.. wkwkwk.. ada <nick>.. baru aja diomongin.."
"<nick>, wes mangan?"
"wah.. dimana-mana ada <nick>"
"gmn kabarnya <nick>?"
"dah maem blom <nick>?"
"Asyiik.. si <nick> dateng"
"blom bobo toh <nick>?"
"Btw, <nick> ini adalah Carder terkaya didunia.."
"Waduwh, <nick> kok baru join?"
"Ada yg bilang <nick> jago hacking, benarkah? ajarin domz.."
"wah.. <nick> td dicari staff tuh, katanya <nick> abis ngeflood.."
"Tolong donk <nick>.. ga bisa dibuka nih.."
"tolooong.. <nick> nyari aku sampai ke <chan>.."
"Wedew.. <nick> ini nyang suka nyebarin Virus rupanya.."
"Leh nalan ga <nick>?"
"Wow.. <nick> ini yg masuk infotainment kemaren yah?"
"<nick>, asl donk.."
"<nick>, nm km siapa seh?"
"chan <chan> jd rame klo ada si <nick>"
"kpn neh ketemuannya <nick>?"
"maaf ya <nick>, aku td ga sengaja ngintip kamu.."
"btw, <nick> udah kul apa masih skul?"
"wb <nick>, km anak mana neh?"
"tmn2 semua dah kenal <nick>, kan?"
"siapa sih yg g knal ma <nick>?"
"WoW <nick>, kok dah lama ga OL?"
"udah nyuci piring td <nick>?"
"<nick>, ada yg lebih bagus dari HIT ga?"
"ngapain aja di pasar tadi <nick>?"
"kayaknya km blom bruntung deh <nick>"
"<nick> blom ngantuk y?"
"weleh2, <nick> udah beraksi nih.."
"hai boss <nick>, bagi2 donk pulsanya! kikikiki.."
"leh nalan ga <nick>?"
"<nick> lucu deh.. wkwkwkwk.."
"hayyah,, baru OL ya <nick>? xeaxeaexa"
"wah.. ternyata.. <nick> ini belum mandi.. wkwkwk"
"ew.. xixi.. baru oL tha <nick>?"
"yee..<nick> telat.. yg nyariin kamu barusan part.. xixixi.."
"<nick> km ada fs ma fb ga?"
"wiw.. <nick> anak angkatnya Billy Sehan"
}

###############
##[ BINDING ]##
###############
bind join * * salam_gabung

################
##[ PROSEDUR ]##
################
proc salam_gabung {nick uhost hand chan} {
  global botnick mode_pesan pesan_salam
  if {$nick != $botnick} {
    set salam [lindex $pesan_salam [rand [llength $pesan_salam]]]
    regsub -all "<nick>" $salam $nick salam
    regsub -all "<chan>" $salam $chan salam
    if { $mode_pesan == 0 } {
      putserv "PRIVMSG $chan :$salam"
    } else {
      putserv "PRIVMSG $nick :$salam"
    }
  } 
}

################################################################
putlog "0,12«0,1 WeLCoMe.TcL v1.0 (By Blackz) 0,12» LoaDeD"
################################################################
