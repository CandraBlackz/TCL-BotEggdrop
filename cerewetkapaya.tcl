#---------------------------------------------------------------------#
#             putlog "Cerewet Channel By TheFreakyNight"              #
#---------------------------------------------------------------------#


proc putchan {chan what} {
  putserv "privmsg $chan :$what"
}

# the bind command
proc cmd_bind {hand idx arg} {
  dccsimul $idx ".tcl bind $arg"
}
bind dcc n bind cmd_bind

# the unbind command
proc cmd_unbind {hand idx arg} {
  dccsimul $idx ".tcl unbind $arg"
}
bind dcc n unbind cmd_unbind

# make a dcc command called 'report' that is just an alias for 'status',
# but only requires +o to use
bind dcc o report *dcc:status

# respond to "gross" on a channel :)
proc pub_gross {nick uhost hand chan args} {
  putchan $chan "yeah, gross!"
  return 1
}
bind pub - gross pub_gross

# respond to "slap" on a channel :)
proc pub_slap {nick uhost hand chan args} {
  putchan $chan "Ngapain seh main slap segala?, kangen ya?"
  return 1
}
bind pub - *slap* pub_slap


#---------------------------------------------------------------------
# ZOE|
#---------------------------------------------------------------------

set zoebib {
{lum ada nohh}
{blum ada..kyp sohh???}
{hmmm..lum ada :)}
{blum ada.. cari akang nehh}
{yum da.. masih lajang}
{100% lajang ulea}
{status lajang kita}
{masih jomblo kita}
{masih jomblo..kypa so??}
(jangan bangapaya ngana.. )
}

bind pubm - *putry*da*paitua* pub_zoe
bind pubm - *putry*da*honey* pub_zoe
bind pubm - *da*cwo*putry* pub_zoe


proc pub_zoe {nick uhost handle chan args} {
   global zoebib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set zoeline [lindex $zoebib [rand [llength $zoebib]]]
      puthelp "PRIVMSG $chan :$zoeline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0


#---------------------------------------------------------------------
# Dodol
#---------------------------------------------------------------------

set ddlbib {
{bodok itu boleh mo makang ??}
{ngana stau yang bodok deng kuat ba ngapaya !!!}
}

bind pubm - *bodok* pub_ddl


proc pub_ddl {nick uhost handle chan args} {
   global ddlbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set ddlline [lindex $ddlbib [rand [llength $ddlbib]]]
      puthelp "PRIVMSG $chan :$ddlline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Thaw
#---------------------------------------------------------------------

set thawbib {
{sadikile kw jang dulu pamid msh mo minum kopii dulu...}
{yang pamid boneng wkwkwk..}
}

bind pubm - *pamid* pub_thaw
bind pubm - *pamit* pub_thaw
bind pubm - *pamiet* pub_thaw


proc pub_thaw {nick uhost handle chan args} {
   global thawbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set thawline [lindex $thawbib [rand [llength $thawbib]]]
      puthelp "PRIVMSG $chan :$thawline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Love|louph
#---------------------------------------------------------------------

set lvebib {
{ehem..ehem...suit..suit..piu..piu. cinta deng sayang kainn..}
{jiah..katakan cinta pa kita p bos jo wkwk..}
{waw.. sayang deng cinta itu boleh mo makang ???}
}

bind pubm - *love* pub_lve
bind pubm - *louph* pub_lve
bind pubm - *cinta* pub_lve
bind pubm - *sayang* pub_lve

proc pub_lve {nick uhost handle chan args} {
   global lvebib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set lveline [lindex $lvebib [rand [llength $lvebib]]]
      puthelp "PRIVMSG $chan :$lveline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# makian
#---------------------------------------------------------------------

set makianbib {
{Astajim..jgn b makee.. mo maso neraka ngoni..}
{astaga eee..!!! dari tadi kuat bamake, yahudi stau..!!}
{ewww.. sama deng homo kuat bamakee..}
}

bind pubm - *tahede* pub_makian
bind pubm - *pemai* pub_makian
bind pubm - *huangango* pub_makian
bind pubm - *kolaitmu* pub_makian
bind pubm - *kudacuki* pub_makian
bind pubm - *luji* pub_makian
bind pubm - *lolo* pub_makian
bind pubm - *pepe* pub_makian
bind pubm - *anjing* pub_makian

proc pub_makian {nick uhost handle chan args} {
   global makianbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set makianline [lindex $makianbib [rand [llength $makianbib]]]
      puthelp "PRIVMSG $chan :$makianline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Kangen
#---------------------------------------------------------------------

set kgnbib {
{mmm..sama kita le kangen wkwkwk?}
{tape bos le kangen p ngana..?}
{klo kangen jadian jo dank....}
}

bind pubm - *kangen* pub_kgn



proc pub_kgn {nick uhost handle chan args} {
   global kgnbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set kgnline [lindex $kgnbib [rand [llength $kgnbib]]]
      puthelp "PRIVMSG $chan :$kgnline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0


#---------------------------------------------------------------------
# Assalamu
#---------------------------------------------------------------------

set slmbib {
{Wa'alaikum Salam Warahmatullahi Wabarakatuh }
}

bind pubm - *assalam* pub_slm
bind pubm - *Assalam* pub_slm
bind pubm - *assalaam* pub_slm
bind pubm - *asalam* pub_slm

proc pub_slm {nick uhost handle chan args} {
   global slmbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set slmline [lindex $slmbib [rand [llength $slmbib]]]
      puthelp "PRIVMSG $chan :$slmline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Wassalamu
#---------------------------------------------------------------------

set wslmbib {
{Wassalamu alaikum wr. wb.}
}

bind pubm - *wassalam* pub_wslm
bind pubm - *Wassalam* pub_wslm
bind pubm - *wasalam* pub_wslm

proc pub_wslm {nick uhost handle chan args} {
   global wslmbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set wslmline [lindex $wslmbib [rand [llength $wslmbib]]]
      puthelp "PRIVMSG $chan :$wslmline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Sepi
#---------------------------------------------------------------------

set sepibib {
{sunyi skali le sama deng bos ebink p hati yg masih sunyi tanpa cinta wkwkwk..}
{iyo ee p sunyi.. di pasar stau ramee..}
{barame kw supaya ndk sunyi...}
}

bind pubm - *sepi* pub_sepi
bind pubm - *sunyi* pub_sepi


proc pub_sepi {nick uhost handle chan args} {
   global sepibib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set sepiline [lindex $sepibib [rand [llength $sepibib]]]
      puthelp "PRIVMSG $chan :$sepiline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Bot
#---------------------------------------------------------------------

set botbib {
{ngana stau yang bot wkwkwkwk..}
{nga yang bot,.bot besae lagii.. bot kapaya wkwkwk..}
{Bot... ???? bot cauu`agiwwww..}
}

bind pubm - *bot* pub_bot

proc pub_bot {nick uhost handle chan args} {
   global botbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set botline [lindex $botbib [rand [llength $botbib]]]
      puthelp "PRIVMSG $chan :$botline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# crwt
#---------------------------------------------------------------------

set jlkbib {
{besae mar ngana sayang toh ??? wkwkwk..}
{kk thata,thika deng nandha yg paling cerewet wkwkwkwk..?}
{ngana yang cerewet sama deng karlota..}
}

bind pubm - *besae* pub_jlk
bind pubm - *cerewet* pub_jlk

proc pub_jlk {nick uhost handle chan args} {
   global jlkbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set jlkline [lindex $jlkbib [rand [llength $jlkbib]]]
      puthelp "PRIVMSG $chan :$jlkline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Dc
#---------------------------------------------------------------------

set dcbib {
{so itu jang kuat ba dusta supaya ndk mo dc..}
{dc trus sama deng ingus kaluar maso wkwkwkwk..!}
}

bind pubm - *dc* pub_dc


proc pub_dc {nick uhost handle chan args} {
   global dcbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set dcline [lindex $dcbib [rand [llength $dcbib]]]
      puthelp "PRIVMSG $chan :$dcline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Sakit
#---------------------------------------------------------------------

set sakitbib {
{lebih baik sakit hati dari papa sakit gigi :P}
{kalau sakit minum komix wkwkwkk..}
{Sakit jiwa atau sakit hati ?}
}

bind pubm - *sakit* pub_sakit
bind pubm - *atit* pub_sakit
bind pubm - *cakit* pub_sakit

proc pub_sakit {nick uhost handle chan args} {
   global sakitbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set sakitline [lindex $sakitbib [rand [llength $sakitbib]]]
      puthelp "PRIVMSG $chan :$sakitline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Muach
#---------------------------------------------------------------------

set ciumbib {
{kuat ba ciong somo punung labeggg wkwkkwkwk...}
{kita lagi muach akang kw eee...}
}

bind pubm - *kiss* pub_cium
bind pubm - *cium* pub_cium
bind pubm - *muach* pub_cium
bind pubm - *mwah* pub_cium
bind pubm - *muwag* pub_cium
bind pubm - *mwag* pub_cium


proc pub_cium {nick uhost handle chan args} {
   global ciumbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set ciumline [lindex $ciumbib [rand [llength $ciumbib]]]
      puthelp "PRIVMSG $chan :$ciumline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Thanks
#---------------------------------------------------------------------

set thxbib {
{sama2 sayang :*}
}

bind pubm - *thx* pub_thx
bind pubm - *thanks* pub_thx
bind pubm - *tengkyu* pub_thx
bind pubm - *makasih* pub_thx
bind pubm - *tq* pub_thx


proc pub_thx {nick uhost handle chan args} {
   global thxbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set thxline [lindex $thxbib [rand [llength $thxbib]]]
      puthelp "PRIVMSG $chan :$thxline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Bobo
#---------------------------------------------------------------------

set bobobib {
{tidor jo klo manganto...}
{yang manganto mata busu....}
}

bind pubm - *bobo* pub_bobo
bind pubm - *tidur* pub_bobo
bind pubm - *ngantuk* pub_bobo
bind pubm - *mananto* pub_bobo
bind pubm - *manganto* pub_bobo


proc pub_bobo {nick uhost handle chan args} {
   global bobobib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set boboline [lindex $bobobib [rand [llength $bobobib]]]
      puthelp "PRIVMSG $chan :$boboline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0


#---------------------------------------------------------------------
# Cape
#---------------------------------------------------------------------

set cpaibib {
{Kalo cape ya istirahat, mau aku pijitin? Weeenak Ajaaa...}
{Gimana ga cape,orang kamu chatting seharian sampe ga mandi...dasar tukang chatting...}
{Minum dong irex, biar vit dan ga cape, kekekekke....promosi ni yeee}
}

bind pubm - *cape* pub_cpai
bind pubm - *capai* pub_cpai
bind pubm - *kesel* pub_cpai
bind pubm - *lelah* pub_cpai


proc pub_cpai {nick uhost handle chan args} {
   global cpaibib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set cpailine [lindex $cpaibib [rand [llength $cpaibib]]]
      puthelp "PRIVMSG $chan :$cpailine"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Perkosa
#---------------------------------------------------------------------

set pkosabib {
{Perkosa? coba sja kalu barani..!!!}
{jiah..spa yng perkosa.. nde nanti ini ngana}
{berani perkosa ane?? ane mo lapor ma bos zoe nna!}
}

bind pubm - *perkosa* pub_pkosa

proc pub_prks {nick uhost handle chan args} {
   global pkosabib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set pkosaline [lindex $pkosabib [rand [llength $pkosabib]]]
      puthelp "PRIVMSG $chan :$pkosaline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Tolong
#---------------------------------------------------------------------

set tlongbib {
{da yang bisa dibantu..}
{ke ingat eko ekh.. tulung..tulung..}
{cuek ah..beken apa mo ba tolong pa nna, :P~}
}

bind pubm - *tolong* pub_tlong
bind pubm - *tulung* pub_tlong
bind pubm - *help* pub_tlong

proc pub_tlong {nick uhost handle chan args} {
   global tlongbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set tlongline [lindex $tlongbib [rand [llength $tlongbib]]]
      puthelp "PRIVMSG $chan :$tlongline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0


#---------------------------------------------------------------------
# Psy
#---------------------------------------------------------------------

set psybib {
{kepingin zncnxa jga uwtiz...}
{minta dbikin znc donk..c :)}
{minta znc susah yee?beli donk.. mahale tau..}
}

bind pubm - *znc* pub_psy

proc pub_psy {ncick uhost handle chan args} {
   global psybib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set psyline [lindex $psybib [rand [llength $psybib]]]
      puthelp "PRIVMSG $chan :$psyline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Monyet
#---------------------------------------------------------------------

set monyetbib {
{ngana yang monyet! so bagitu sube lagi...}
{Loe kayak monyet yang di bantimurung sana :P~~~}
{Monyet, sini dong....napa ada pisang pa ane}
{eh.... ada monyet disini ihi kank.}
}

bind pubm - *monyet* pub_monyet
bind pubm - *monkey* pub_monyet

proc pub_monyet {nick uhost handle chan args} {
   global monyetbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set monyetline [lindex $monyetbib [rand [llength $monyetbib]]]
      puthelp "PRIVMSG $chan :$monyetline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Lucu
#---------------------------------------------------------------------

set lucubib {
{iyo lucu deng imut wkwkkwk.}
{yang lucu itu klo pas ngana samantara bajalang kong baku dapa deng mantan wkwk..!!}
}

bind pubm - *lucu* pub_lucu

proc pub_lucu {nick uhost handle chan args} {
   global lucubib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set luculine [lindex $lucubib [rand [llength $lucubib]]]
      puthelp "PRIVMSG $chan :$luculine"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# Pv
#---------------------------------------------------------------------

set pvebib {
{Eh..yang cew. pv an uwte.. !!}
{Asyikkk...lagi antrian pv nih.}
{Hooooiiii....pv ane utis!!}
{Tumben negh ..pnggil saia mau pv}
}

bind pubm - *pv* pub_pve
bind pubm - *peve* pub_pve


proc pub_pve {nick uhost handle chan args} {
   global pvebib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set pveline [lindex $pvebib [rand [llength $pvebib]]]
      puthelp "PRIVMSG $chan :$pveline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# personal
#---------------------------------------------------------------------

set personbib {
{jangan cumu homo p nama bekeng rasa muntah, uekkkk...}
}

bind pubm - *Leader* pub_person
bind pubm - *PunkRock* pub_person
bind pubm - *Ryan* pub_person


proc pub_person {nick uhost handle chan args} {
   global personbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set personline [lindex $personbib [rand [llength $personbib]]]
      puthelp "PRIVMSG $chan :$personline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# pribadi
#---------------------------------------------------------------------

set pribbib {
{bot nohh... dulu² stau}
{ew... bukang bot kita akhh}
{nga stau yg bot}
{sapa bilang kita bot}
{io au' ngo ee.. ja bilang kita bot}
{huhhh...mulai le ba bilang kita bot}
{kyapa sampe nga bilang kita bot??"}
{apa dpe alasan kita nga bilang bot?}
{bot??}
{wewwwwwwwww}
{bukg bot kita eee}
{woiiiii.. bukang bot kita}
{maeeeee... bukang bot qt akhh}
}

bind pubm - *putry*bot* pub_prib
bind pubm - *bot*putry* pub_prib
bind pubm - *putry*ni*bot* pub_prib
bind pubm - *putry*ni*bot* pub_prib


proc pub_prib {nick uhost handle chan args} {
   global pribbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set pribline [lindex $pribbib [rand [llength $pribbib]]]
      puthelp "PRIVMSG $chan :$pribline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# PPP|
#---------------------------------------------------------------------

set islbbib {
{sama2 homo ngoni jang baku gara wkwkkwk}

}

bind pubm - *homo* pub_isl



proc pub_isl {nick uhost handle chan args} {
   global islbib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set islline [lindex $islbib [rand [llength $islbib]]]
      puthelp "PRIVMSG $chan :$islline"
      set oldreplytime $replytime
   }
}

set oldreplytime 0

#---------------------------------------------------------------------
# 1
#---------------------------------------------------------------------

set 1bib {
{1 hati torang for calon bupati aph wkwkwk..}
{1 2 3 4 4 5 6 7 8 9 10}
{1 + 1 = 2}
{2}
{3}
{4}
}

bind pubm - *1* pub_1
bind pubm - *2* pub_1
bind pubm - *3* pub_1
bind pubm - *4* pub_1

proc pub_1 {nick uhost handle chan args} {
   global 1bib oldreplytime botnick 
   
   set replytime [unixtime]

   if { $replytime - $oldreplytime  > 7} {
      set 1line [lindex $iyabib [rand [llength $1bib]]]
      puthelp "PRIVMSG $chan :$1line"
      set oldreplytime $replytime
   }
}

set oldreplytime 0


#---------------------------------------------------------------------#
#             putlog "Cerewet Channel By ZoE|Satriani."               #
#---------------------------------------------------------------------#
   

