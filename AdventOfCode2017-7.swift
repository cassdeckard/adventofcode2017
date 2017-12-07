#!/usr/bin/swift

import Foundation

let example = """
pbga (66)
xhth (57)
ebii (61)
havc (66)
ktlj (57)
fwft (72) -> ktlj, cntj, xhth
qoyq (66)
padx (45) -> pbga, havc, qoyq
tknk (41) -> ugml, padx, fwft
jptl (61)
ugml (68) -> gyxo, ebii, jptl
gyxo (61)
cntj (57)
"""

let input = """
uwzmqi (57)
emlzcpy (106) -> pwmoihf, sdwnkb
oevnzwt (90)
imjhra (23)
uuimn (299)
xzpov (55)
kynja (73)
kggcnt (43)
qdxpkx (67)
wubltb (276) -> udcok, pihpjbp, hiifqwb
anifo (10)
zxdpmwl (57)
tkdmopp (44)
kdsbbcf (193) -> huyizg, evofb
pxfpf (235)
mjftixu (131) -> kwzsj, rspilzk, amtxw
dbtoizo (73)
fdqmg (124) -> kggcnt, dzekyo
egvfxip (23)
mpijek (63)
kkoitqr (70)
jgwvyp (29) -> hoagrj, swefql
guipj (25) -> sauwet, graedp, jdvya, bmlwb, eidmza, kmnmx
ayuhvb (216) -> bemhni, gvpac
unmxfe (91)
miwfyq (96)
loofhh (31)
liczn (12)
urvunmn (63) -> ddsmt, oablvt
jxdqhu (60)
pvqfa (174) -> pftmymi, vmrdwe
xrabl (82) -> ivyarjy, lhxinfd
rfvtfs (93)
qkrirn (129) -> ceztn, tqjmaxi, lwroef
epnny (85) -> xltlyvw, ctkjip
hlzyncx (85)
fyxdfod (82)
bawgh (7)
sxpqvwv (358) -> oziwd, rreoxyc, qntqokn, acibw
nogbp (119) -> psvkj, djyks
mgdhu (15) -> cfcbhku, fltdrlc
nsvan (1749) -> ahracx, dvoul, ecxayrz
gefrwix (99) -> sovfoi, vdqpuon, ghtdnrx
hfrtlx (57)
kyhace (12)
gbcfg (277) -> pzbgmxx, lysysqu, urvunmn, yiohbo, hqjlgre
uhwsavi (57)
fyynsgp (6)
wqobawc (67)
agjdl (61)
tkureky (247)
czalivu (28)
wykyl (64)
wqtbny (49)
wnhkac (18)
fuhbamv (81)
wqudy (238) -> dpkdpj, jmmticn, kpotsk, qtntw
latvu (35)
inpjzmh (23)
orawnkw (195) -> bsqlkiy, fhhzvwj
kwzsj (40)
ymfwoto (50)
kckucu (152) -> mnoaa, infll
fwlme (6)
xlyxjyx (302) -> lewizr, duxfof, uqazvo, mzbwym
aksgboa (93)
rxxqpi (920) -> gwwphk, xaskpny
gqqgsz (49)
rlbdave (27)
fuunnks (42) -> cstnc, dyxmvo, kwtszff, ittpbzy
bhcwhrf (88)
ppigbow (84)
bbzhhk (70) -> bjrfinh, lissl
hsael (60)
tcpdvk (33)
yvbgs (286) -> byaaoab, kebefwy, wpxxz
utjtx (8) -> rzlkr, ntfvgoj, qmvpgee
kdcyull (48)
ldakuz (45)
lcfpcst (92)
ufnpup (102) -> cewmc, uwzmqi
eavfy (87)
lufgbo (60)
sncjicb (102) -> xslucv, jbpvtf, gfltww
lydjsu (65)
aclnw (210)
fqdtzfy (221) -> zwfly, bidasc, mjfhodb
wavbwew (80)
sqwfq (59)
yeicqcy (46)
chzrjqp (90)
fhabfp (59)
wbijkw (19) -> zzdbn, pqxef, ikzqhu, dyqgl
gbhlxb (75)
zpimcy (83)
zmjzmyq (35)
pagsex (45)
onsjs (197)
gqiczm (61) -> gwsceo, ucocdl, hdqow, fjqccm, oxvqjeh
hmdqubz (16) -> juzol, txote, kynja
lzikkl (330) -> cdrjh, lwbcn
haadpw (65)
eeluucp (62) -> pxsmani, qdmop
nnsogp (60)
nezhs (94)
fqrwf (88) -> hujzcku, tkdmopp, ckgmjsg
zoszls (70)
uzlgko (56) -> loyjp, wwnkoz
uqazvo (39)
sphktgz (12)
sikpe (48)
rsjmc (53)
htyvy (17)
ylluriq (129) -> pawmnl, uhmnltu
mrsxl (18)
gbkubnt (45)
xdvwjb (70)
jguhhsb (9)
mfyivv (84)
etsxvmj (896) -> enlfaa, ymnichj, tuefd, zhkmnxk, vcllnn
cougztw (27)
ewifyk (25) -> sxino, vgwxuan
vwtxaci (78) -> nnkpuhp, haadpw
vwqof (64)
cewmc (57)
haztq (48)
wxyhyh (43)
dyxmvo (107) -> tnham, jsdvowc
zhcmvvm (90)
zdrwxqt (89)
bluacvc (26)
yxfysz (418) -> cfmcrf, ixbsb, kafyh, zouqjoo
hiifqwb (14)
knsphtv (74)
xrwnzgz (21)
xtbqb (82) -> bydmdru, awfnh
zngystc (140) -> gszlkf, inkfmx
gtktonk (92)
ukkph (17)
fzowmer (22)
gumpsin (34)
rynlaj (292)
wjhgb (48) -> icoic, hwhgi
ndvns (24)
cawzw (81)
kyphnel (51)
uawyee (22)
mzftrlb (70)
xfxsxh (71)
wzlonwk (65)
inkfmx (30)
vkkds (207) -> pvhdt, fshoj, dsuonma, vuazmuj
wdwgd (80)
licby (79)
ytlpe (77)
usddqi (170) -> fgokr, mdznc, psynxr
ychaa (47)
ztuswk (7)
rtchnfd (162) -> eptve, lejuo
bymrwvc (67)
xqusi (22) -> jdbmary, flrdpaj, iwysxj, tooduon
gyivxga (26) -> cldaf, lqgvx
eptve (37)
aflaj (35)
ghnldf (35)
oldfs (34)
bkdxl (85)
qsiqu (114) -> efvvtgo, hcfgf, fgayln, xzkzoq, isuevmr, xqyyni, rjfqyz
abjrozg (189) -> dlcep, rhwfl
fjemwxf (69) -> ofxdo, jjkns, mwvihj, vrhke
zuapfco (40)
tqcwn (50)
ouycck (1843) -> lmliqa, txtnweq
hkelse (71)
wifvw (68) -> cpoxc, btlczl, dqzsblu
cxfvbz (807) -> vazst, evquf, pvcpmx
quxtc (142) -> tcpdvk, npwrqsm
fltdrlc (90)
fivaym (45)
jdvro (43) -> wkkqsy, wdwgd
qinwdk (178) -> liueudh, zgtsnwk
zautz (48)
flmeo (338) -> auocy, uqkhzxt
zziuivt (78)
iooqbyk (1558) -> fuhbamv, dqrsxx
vumxuur (99)
awfnh (60)
woeabie (18)
xtqnalt (19)
xedlv (67)
jatrdb (229) -> njnyoek, ctvhcv, qsgjk
axjkbq (188) -> hgoruv, iimyku
hmenje (183) -> npefyxi, fwoyu, acueoez
zxwmd (96)
zapbrn (421) -> szzhp, jsvwb
tmwvxgi (179) -> egvfxip, gohxocn, wgvlq
fkagr (32)
wppgjkw (187) -> hlmdgp, usglf
wajnp (54)
hbgeak (92)
rnbvott (157) -> kaekzo, hbozym
haurusk (170) -> kxgrtg, ythbw
ylpvre (48)
zmuit (131) -> vrzrsz, uawyee, jbxllu
mnoaa (59)
zttpfsd (20)
solmej (193) -> wnhkac, gkjafru, cmfwb
lkzdum (33)
vhpjrh (64)
sqwejs (47)
xxufma (17)
eshjt (10)
vrzrsz (22)
pvhdt (23)
dtqyhj (96)
htmrm (85)
tbsmz (70)
hezjirm (54)
cozhzk (62) -> fkagr, dqyaco
jcrmny (70)
zpadu (96)
lfszf (50)
vpnfkw (80) -> ewzvs, jbitbzb
rphgr (895) -> gkfymj, rtchnfd, gtyfx, ujdhkyw
bmlwb (481)
mzaxe (52) -> itzntrm, wqtbny, jyhddhe, zgatapc
qxzhq (180) -> ezjqb, kiceppo, zkiotrm, gqqgsz
bkfxvy (1563) -> bkvuz, dbtoizo
utaxgw (57) -> bupugpv, gnqxls, rnvenxi
vcuizl (119) -> maklk, bxyvuvc
ydbzo (57)
lhagpts (737) -> utjtx, bcyipmu, vcuizl
dkbycez (131) -> vagyecy, fvzfdr
kdyuwjh (92)
udcok (14)
xssia (80)
hrzvmel (34)
dupdsj (81) -> hgsiz, yeicqcy, fncsm
gseohkk (29)
dllffsl (54)
ixbsb (104) -> gjbikl, cogziqp, gdibw
pqxpguz (22) -> tnpzf, zaxds, jvocm, eeluucp, zenvqu, ytqwzv
abfkpur (651) -> ppeumu, yuvpdk, kzimilx, wbwyvyu, dkwbhuk
khbth (270)
vpvab (76) -> evgvano, ibfbn, xovrzf, qzbet
iwotig (64)
nomlh (74)
oicxl (27)
gqjhcw (5)
cmfwb (18)
assqm (23)
tlyncze (36)
pqkzpq (35) -> gjpcufw, ocmac, hohsf, qdtdbl
zfxzq (58)
vhlon (80)
yiohbo (49) -> kwaqrgu, nezhs
tymahpb (87) -> ladkvis, rlrcvv, fciadzu, xpigis, kckucu, kdrswra, khbth
vcmntc (99)
beigkn (86)
pxzoq (16) -> mdimlja, hrufxbf, ufzrg
wuwag (65)
jdvya (385) -> zautz, haztq
jbxllu (22)
ashtupo (6)
xgdyhva (893) -> tkureky, solmej, yucxy
tooduon (92)
decdq (43)
ukhyz (95) -> ilnlkpv, bhzuzbt, agevvkl, byrfacr
pgscbge (77)
vdsjf (22)
zqdoieb (53)
sgtarpx (33)
yhiby (100) -> tzljrvn, ckezp
wdxfr (55)
owxgj (37)
uhmnltu (91)
lsbzpu (6)
ciwxuch (96)
qskbft (200)
gwwphk (79)
kbarp (60)
ygzas (55) -> ztyqti, nxapqfk
shifzsw (54)
huytmw (37) -> tsdfcgo, uqfbsti
atwtz (58)
ivcqfao (117) -> zqdoieb, bnmnak
wifwhkq (80)
ghtdnrx (1120) -> jcyxjwa, ftuvvv, nogbp
ztsajt (128) -> grvqyf, yxsvp
odmlf (60)
hocfv (70)
xegshds (53) -> upqkbq, hsdkmdv, ggxgmci, owjvny, gqiczm
efulo (213) -> lzcikn, tihjcht
jjkns (93)
fedhzki (61)
qtntw (294)
airlbu (71)
rzlkr (97)
ogujo (49)
jylgvd (165)
immcgrm (47)
hohsf (54)
knzffuc (11)
pwamvw (830) -> nvyaeal, tptcl, bbloz
nifptxs (90) -> zapbrn, vhxgbd, hmenje, hlzape, ugaxscf, fjemwxf, arnbvk
psvkj (81)
acsqtk (128) -> ykcivtj, bhcwhrf
ehgpqe (27)
knxtlig (57) -> lhqhx, alkysnc
sxino (50)
hwhgi (86)
glpwie (88) -> tzqux, uhwsavi, hfrtlx
mrkknr (34)
juxcxo (96)
pxpeniz (41)
buztc (76)
ewhzc (60)
bqpycy (253) -> snjfup, assqm
oynlkiy (25)
inful (168) -> knzffuc, ldgldpx
sybsbk (27)
towdptl (54)
yujhec (30) -> qkzgb, nmwrqbx, dktkg, rnbvott, etingr
nidvi (193) -> wjwit, dbuxj, rhpfhuc, ehyygbi
ttkqf (85)
iumsv (51)
ijvrlpz (95)
qqjvdh (76)
mwznhh (17)
ybwcod (63)
yulcus (24)
bcswm (96)
lfjpkw (216)
mjfhodb (18)
dbuxj (20)
ehyygbi (20)
lgdbaig (4976) -> lplhe, sznyfy, tjrecaq
odtgv (92)
falrf (97) -> zttpfsd, zfaog, sdezdnz
wyjnxf (12) -> bxipuq, ibosof
icdptj (42) -> onlnhb, ibqenc
lysysqu (237)
vltkp (33)
fwjufh (62)
uqkhzxt (60)
nbdfits (57)
mtsju (42) -> tzevrtu, wflxu
uxeyxk (88) -> ctmob, miwfyq, dtqyhj
krrxx (27)
tzevrtu (74)
tjmeqt (50) -> sinrdj, bbrsdwl
itzntrm (49)
ehjpn (291) -> opbaea, kvxtl
zayqjx (95) -> henlezn, vhpjrh
cvzsvf (15)
mmlsnw (63)
agwpt (84)
crfmd (70)
jjpnqsk (29)
otrlqy (56) -> hzbcp, qtcwngh
smkcc (147) -> yalqeoe, uzjoy
ztylsq (32)
dvzoq (17)
fyuitn (46) -> iumsv, fzmwc
zkiotrm (49)
ebhzgav (13) -> afooq, vihjl, xxoqrj, ipblpmy
wgtmwjd (682) -> lsoto, abqknn, uzlgko
kniivab (9) -> bymrwvc, aylzrt
oxrpu (63)
rsvcn (84)
hgbvgnn (96)
udlyr (227)
ktaso (28)
lmliqa (67)
rcpscka (117) -> eduizfz, sholtl
lzvpq (40)
sixlpmr (310) -> ttrvo, onsjs, ppujydt, zmuit, dfzbuxo
acibw (8)
ftpwtol (98) -> sstby, wduscx
pcfotkv (23) -> cszltz, pqdoti
eknyvq (97)
svxpx (66)
nhyhkq (68)
ttrvo (123) -> evpfdj, icdyfw
hlbhkkr (80)
bpuiaqr (96)
azykbk (80)
mnslyf (6) -> ouagp, wyjnxf, jxtzkel, vwtxaci, quxtc, yhiby, mgwiq
yfngcvd (59)
vfbhl (92)
fhcrud (62)
ggxgmci (66063) -> nsvan, qcbfbfz, anygv, gefrwix, kkeafw, jepbpw
dlcep (74)
aylzrt (67)
ghxwug (84)
auqfj (8)
kdajj (40)
wjjzh (96)
njnyoek (21)
lejuo (37)
abeinmv (961) -> tlfklor, izqbvna, sxpqvwv, foqjjt, xqusi
bkvaj (119) -> ktaso, ufqlean, czalivu
npwrqsm (33)
ysvbz (192) -> ekirg, lzvpq
unhnq (5580) -> rvkalxi, kabbsvt, jwptb
hqjlgre (47) -> jxxgurr, wvysxc
kpotsk (294)
nwand (344) -> vjtbtv, epnny, zdagr
xbxqoh (40)
ispeb (30)
lznlhjd (33) -> qqjvdh, ribswz, ndebha, vsojq
zlrboun (55)
ofxdo (93)
oxezpz (34)
uqfbsti (73)
zjljate (228) -> fzowmer, pcmgq
kbxvke (195)
uaxomk (87)
udawli (6) -> eiliwle, ijvrlpz
fnefss (348) -> qrtruk, ztsajt, aclnw
hbampcd (10)
czgws (57)
anygv (3678) -> tghfe, ybzqi, fabacam
qfxwzis (47)
ullsjlc (99)
yjarolt (69)
cfefqhk (84)
wflxu (74)
icroy (52)
ngkjtk (47)
oqsdfwt (43)
gswcnfo (93) -> gwnou, xedlv
mdznc (19)
zrdjlz (90)
btlczl (205) -> sjoxehw, ucrqw
xxyttn (228) -> dayjxl, melthx
qrunwtc (208) -> rzyuyv, gjisc, zrqzlvd, sqwtiaf, kgnuc, ufnpup, lfjpkw
hocvke (105) -> xzpov, btkih, kgijqnz
luswe (7)
whqrugy (77)
ikkatj (76)
hvdafm (590) -> gglig, nuorc, ioyesxg
kyjjz (210)
aqtgibg (84)
byrfacr (93)
tooqbdo (130) -> uaxsa, mcdpv, ccqsq
zbthq (88)
sboslk (27)
mwvihj (93)
ythbw (61)
kgnuc (76) -> iuzfnx, kylauj
xdnrao (194) -> wptxs, pdbtp
nszphks (60)
huyizg (24)
ujapot (76)
uycyz (2625) -> zzjwnh, ncirziy, icdptj
xuzskid (54)
xcvbgr (63)
macpvga (239) -> fdqmg, hyqrffw, rfytg, idnhoqh, dchobfa, kyjjz, aqahah
afrpf (29) -> ybbuy, uifanza
klqmcsw (185) -> zvzdrp, luswe
euglphc (165) -> jkyljso, abharn
heiejhm (48) -> ndyceo, nvoys
iulkkfp (112) -> pkwzp, cdzlq
ucrqw (73)
ivzps (58)
lyhgmwz (12)
ehwko (41)
hasbi (124)
pawmnl (91)
kbtogma (96)
dwwabne (6)
wjwit (20)
dktkg (232) -> ztuswk, iadezq, lhlyb
iimyku (59)
nlzohm (74)
owgrt (6) -> zpimcy, xconx
nyfdcz (61) -> zrdjlz, oevnzwt
crihz (75)
vehan (188)
ucocdl (11321) -> sixlpmr, yujhec, uryldo, bgltopb, tpreug, gwwjmo, pwamvw
urhawb (43)
ztyqti (71)
akmyzla (5)
hdtmmh (61)
vckxof (56) -> qpjgrr, lwejw
ctvhcv (21)
jdltlbx (92)
yxsvp (41)
xltlyvw (87)
fatxilu (17)
jljurl (14)
wfold (83) -> affnbx, fhcrud, gcfqnlw, fwjufh
mlavfvc (304)
mhwqim (70)
nemomq (62) -> jatrdb, nzrhtgr, ngyxxm, wnnnvgn, emlzcpy, haurusk, rynlaj
jdbmary (92)
icrilh (47) -> yolrh, cglbn
ybzqi (395) -> pcfotkv, ewifyk, uredmot
qvcpu (5)
qzbet (255) -> miunk, horfum
ckvji (42)
jpcurr (9)
stjxh (59)
kucnmn (50) -> incbyp, ogujo
vikstpo (80)
sdezdnz (20)
uticq (47)
yynji (85)
svnqa (313) -> nthqzh, uekit, hopiqm
xmufp (1476) -> cozhzk, xvjkwcd, yzjmm, jzsmrz, zuzkw
emdehy (42)
usixdl (84)
kgqhmx (27)
wjnibfh (12)
bvwdckm (47)
icoic (86)
aicos (78)
kabbsvt (1459) -> rwtva, wykyl
vuhehz (589) -> kdsmyax, tooqbdo, zizsy
lwbcn (64)
owjvny (68748) -> lgdbaig, yskay, uvftw
moxxiw (480) -> apyhkb, uakqow, tutfkbo, zmiyzin, hgwupie, thtnmkb
miunk (78)
tjrecaq (5) -> dzxkea, fsckdb, dreryps, svnqa, qfegd
twnon (66) -> ciwxuch, zpadu
fciadzu (152) -> rmnfq, tnxxb
pwmoihf (93)
vsbbr (61)
apyhkb (163) -> ixvot, dllffsl
dkwbhuk (1778) -> wavbwew, hlbhkkr
gnqxls (36)
dlglddh (98)
tlfklor (190) -> bwnvvei, thwgxk, thcth, gvphwwi
pwyspt (240)
eynrs (4953) -> gtvuq, vidgimw, fnefss, clmkbr, yxfysz, latvopy
ntfvgoj (97)
msxnd (45)
atwsafs (245)
incbyp (49)
ktiuc (1175) -> mzaxe, xxyttn, tmwvxgi, azcuz, szkgky, beaubot, ffvahj
hikmxhb (6)
ctmob (96)
zmiyzin (94) -> ryrig, sqwfq, mbpgrbi
gjauauy (12)
asymmuf (33) -> bwsbj, tfiynwo, zideon, xvkcms, jezdog, twnon, raloti
aoscisa (12) -> mnyokhx, ppigbow, eubqww
jbitbzb (54)
wwnkoz (62)
picati (50)
kmnmx (481)
lmdsuz (34)
nqohnyo (99)
rcvol (76)
ccqsq (27)
bsxjp (70) -> xcvbgr, gdidwas, hrhcwn
uakqow (237) -> advexy, zkvrxb
eckgtt (234) -> sofrfdv, nxygf, dbcrmjt
azcuz (64) -> vetib, jirva
hegyu (282) -> mfmrv, zwqpx, fyynsgp, hikmxhb
ppbvdzh (47)
snjfup (23)
yjlzh (23)
qcako (11)
lplhe (1375) -> qrklawm, avytp, fqrwf
gtyfx (110) -> vgvfksg, mmlsnw
jsdvowc (76)
beaubot (118) -> rscnige, dzjwel
wgvlq (23)
gjisc (192) -> liczn, lyhgmwz
jdqmr (10)
fjouck (19)
xreip (84)
ooeypdy (134) -> kgqhmx, vrvzkc
beiih (2781) -> wuwag, xbhexk
nroory (31)
hswdm (45)
kexrse (40)
ahracx (1289) -> mhgdq, homcnz
aksev (153) -> oqctx, cvzsvf
hmzal (155) -> hsael, wltyw
cldaf (97)
iscnnvh (606) -> fzzyjt, xtbqb, vyzhqx, owtdq
ibosof (98)
lhkoebz (67) -> jnenlog, jblnqb
slnoqn (21)
ulhmjq (34)
noqbv (8)
xeppuz (7)
fxpic (304)
gktepby (64)
gjkbf (67)
qaugj (61)
bbloz (51) -> icroy, rshqkfx
pjiicj (67)
ucqpz (39) -> dlglddh, tvhui
rwgpcs (57)
uzxovd (33)
jqougaa (59)
vrhke (93)
kkeafw (1602) -> gbcfg, uodmc, mnslyf
dcpqyp (6) -> soxzrwm, zxbirr
ceztn (37)
zwfly (18)
yfriw (59) -> xdvwjb, crfmd
gefbk (139) -> ivzps, atwtz
dpkdpj (126) -> mfyivv, aqtgibg
xpgzcxc (71)
rymvvbq (118) -> qjtldq, bawgh
bkpxd (20)
tqjmaxi (37)
phqyeg (90)
xnzhkrn (54)
niydyxq (33)
upqkbq (26244) -> dfnak, szsny, ehkrs, eynrs, cbpsyx, bbixr, zsckv
zcrgoy (17)
zuphhfa (199) -> ospcnv, pkagrvq
snhlzkk (428) -> iriyw, qdlcvk, mhium
qtcwngh (67)
jirva (92)
nyqju (66) -> nszphks, kbarp, guivwse, nnsogp
zdjxp (716) -> hhjdf, woiqeq, wfold
schym (20) -> fgyndgv, hlqed
ngyxxm (96) -> viqhzr, yylvwtf
woiqeq (149) -> jslpd, pfjvzzw
sthyxh (235)
xbhexk (65)
wnnnvgn (152) -> suqxa, wmhjbm
xzixh (71) -> wdnjs, hlzyncx
hwqhsc (235) -> akmyzla, tlekuus
bidasc (18)
pzbgmxx (156) -> vsevm, dwztnh, sybsbk
ckjdqr (49)
qdtdbl (54)
dvoul (816) -> yfriw, klqmcsw, ueepet
jkyljso (51)
ugqjxlt (43)
uazvt (57)
qovrrvg (172) -> eboizv, rrqfy
wgvxebc (62)
iwysxj (92)
gmtzu (30)
rwtva (64)
uulig (24) -> cqifjd, abjrozg, lgurkym, lznlhjd, lskrih
nefive (168) -> opkjkav, kyphnel
qsgjk (21)
kgpymt (18)
avytp (154) -> mdbixwm, mshht
yskay (47) -> asymmuf, gnjkpwf, tlmnwl, iyekup, rphgr, mfohmwu
mmyiwt (61)
wfilxtb (50)
iibjdbp (76)
amtxw (40)
ndyceo (86)
vbqsm (250) -> jdqmr, hbampcd
ttstqws (38)
ybbuy (87)
bfrmpr (101) -> dsjirbh, latvu
vagyecy (52)
rwlchj (73)
vdqpuon (868) -> pykcpw, yioxr, lcgym, wbijkw, dupdsj
zegoosj (36)
emcstpe (71)
pykcpw (168) -> bdkmsdy, mwznhh, zcrgoy
ymnichj (909) -> jfhpd, xvedp, phswa, udawli, tjmeqt
wlibbwd (5) -> nogjxu, bapvb, azykbk
bncsnst (12)
uxbnnor (76)
zbodhfq (56)
qhezs (93)
drhmhn (18)
hcfgf (197) -> tpfcmlm, xxxauxt, plcxnz
cbomeum (35)
qpjgrr (66)
dsjirbh (35)
lkoagx (58)
szsny (5431) -> yvbgs, lcepfsw, exfeog, rxxqpi, fuunnks
ytlzs (251) -> xnzhkrn, hezjirm, xuzskid, mwdqdbu
dzxkea (322) -> cwevfy, mepeg, bvnfacp, tygpx
xikuc (10)
rmnfq (59)
qfaubqr (82)
sauwet (445) -> bsieig, mrsxl
pdzfg (134) -> qfxwzis, ppbvdzh, rzwkjvu, sqwejs
quryyds (78) -> tfshhr, wdxfr
jvmuid (62)
cpwfem (93)
wratzd (22)
fhdkp (232) -> sbhcx, kdcyull, sikpe
agevvkl (93)
xadsoxv (71) -> whqrugy, fmlyuv, yerfxa
gvpac (51)
ipsfv (211) -> bkpxd, xivvpur
zprquyv (97) -> vrnxiui, htmrm
akobg (1607) -> vcsdacf, udfmh, ambgac
phxtzgu (78) -> exfffna, ewhzc, lufgbo, odmlf
rreoxyc (8)
jmmticn (24) -> chzrjqp, zhcmvvm, phqyeg
woxpci (80)
cvchqoz (24)
qxnuj (70)
tpfcmlm (20)
hewjj (263) -> dwwabne, iwhazt
adxox (79)
bxyvuvc (90)
opbaea (26)
xcbliim (404) -> wonyy, drhmhn, kgpymt
kzimilx (328) -> qmttkg, hpobvlt, pdzfg, zkborz, sbanx
mtvoxu (54)
qfggzok (67)
vxtfjhq (23)
hixeb (80)
bkvuz (73)
npozpo (98)
uqhnekk (17)
rhpfhuc (20)
ribswz (76)
mnyokhx (84)
oleuqo (43)
usbjyly (907) -> mjftixu, vldursw, ipsfv, pqkzpq, fkdauwn
nkbtsr (19)
szzhp (10)
hgwbjzo (83) -> pnhxqna, zxwmd
bubhosg (45)
lxxkjb (45)
yolrh (14)
cdzlq (96)
mbpgrbi (59)
lqvrx (85)
mmaqp (159) -> fsdlnh, ypmvfz
ekirg (40)
mdimlja (36)
cxynfb (183) -> wcqsimj, kwxpb, jprkymy, yjlzh
kgijqnz (55)
bapvb (80)
oqctx (15)
bemhni (51)
lcgym (199) -> anifo, eshjt
hopiqm (31)
ujdhkyw (136) -> yccqn, wfilxtb
ygbphkw (2416) -> eujnekp, utaxgw, jylgvd
occtbf (11)
vhdke (7) -> wqtbb, buztc, trzjoi, brubv
hpobvlt (186) -> lmdsuz, gumpsin, xpzzkdb, oxezpz
bdprpzc (38)
xcuid (26)
txayxeg (146) -> ngkjtk, uticq
ftuvvv (89) -> juxcxo, onmghy
vgysxct (103) -> cygpuh, svxpx
nxapqfk (71)
kylauj (70)
amyymhg (52)
jjpco (92)
mgmoe (45)
sinrdj (73)
rzclv (91)
ahcjog (59) -> yhhob, rvbbn, cawzw
saqcb (64)
cfmcrf (126) -> phmqb, xeppuz
uluavyz (311)
rzyuyv (182) -> uqhnekk, yqpivvl
ckezp (54)
ljihfp (71)
plcxnz (20)
uguqde (18)
scdvmta (40)
sofrfdv (28)
sahfob (87)
lzcikn (30)
gdidwas (63)
xqyyni (227) -> sjiaux, dwkkssy
yoibok (50)
wjgdz (54)
uifanza (87)
ufzrg (36)
kwxpb (23)
vmrdwe (13)
yucxy (65) -> mpedpht, jhzoyme
xuzvwcg (23) -> bluacvc, xcuid
wrbtgkb (45)
abqknn (142) -> kialkdr, xtqnalt
dklrle (46)
lhqbgck (632) -> ykcxtea, zjljate, ysvbz, qovrrvg
smzpa (114) -> jugwirf, ttborca, tmuuyka
fwoyu (86)
dgkhq (64)
tvhui (98)
clyht (10)
sspem (80)
pgpvnb (39)
zkborz (322)
liueudh (63)
myrlvj (63)
cszltz (51)
ambgac (34)
pwznn (120) -> cougztw, krrxx
iwhazt (6)
hgoruv (59)
gglig (156) -> saqcb, mubenp, vwqof
bwnvvei (50)
ezjgtbp (71)
xzkzoq (73) -> gtktonk, odtgv
qkzgb (219) -> ukkph, zrsya
cphgovc (269) -> nnqghfo, ohjvf
bdkmsdy (17)
hzbcp (67)
btkih (55)
ejyho (96)
ecagt (7)
vhxgbd (267) -> lkoagx, vrjfn, zfxzq
estka (47)
tihjcht (30)
tcaemi (171)
bnmnak (53)
jtendcr (85)
uekit (31)
jbpvbc (168) -> caukzx, pjiicj
pdbtp (91)
gjpcufw (54)
bvnfacp (21)
dqzsblu (91) -> wzlonwk, ywxkr, iggqobg, lydjsu
fjekad (48)
juzol (73)
dfzbuxo (17) -> fdrki, ufmlfmj, jxdqhu
dombfx (57) -> oxrpu, ybwcod
eidmza (481)
advexy (17)
ddleaoo (71)
bcyipmu (229) -> aflaj, cbomeum
rsttknu (97) -> bsxjp, bmzeddf, ndwvmg, glpwie, exbgy
tnham (76)
zideon (236) -> occtbf, hmltq
gfltww (51)
eduizfz (79)
fsdlnh (54)
jugwirf (51)
yylvwtf (98)
npefyxi (86)
gszlkf (30)
wptxs (91)
amntev (61)
hlqed (76)
rvbbn (81)
sygyji (6)
wcqsimj (23)
fjqccm (14455) -> tymahpb, ouycck, ehazo
gcfqnlw (62)
nnbokwt (194) -> mngea, hcajnu
bxipuq (98)
izqbvna (250) -> zoszls, kkoitqr
zxbirr (83)
nkipkdo (72)
yuvpdk (1257) -> gswcnfo, vceutc, kahwlj
eiliwle (95)
ohjvf (99)
cvkmmqc (54)
cdvscgo (44) -> tjmyc, phxtzgu, ayuhvb, eckgtt, wubltb
trzjoi (76)
zzdbn (50)
wonyy (18)
woxmeo (56)
enohjb (206) -> bkdxl, ttkqf
sznyfy (1243) -> xkfxnp, aoscisa, bbzhhk
phbapzv (50)
gkfymj (92) -> fbvhl, nkipkdo
hmltq (11)
kafyh (36) -> eincbt, amyymhg
pbkmeod (78) -> estka, ychaa
fgyndgv (76)
kunhp (19) -> rqpbivd, kdyuwjh
vruhp (227) -> woxpci, hixeb, sspem
jirnr (24)
kaekzo (48)
dsuonma (23)
xdxhzm (893) -> sncjicb, mmvhi, brchwcm, gefbk
bxpfs (92)
qdzbmhn (1640) -> xrabl, pwznn, dvzguq
aplke (19)
veuqzjh (25)
tpreug (377) -> axjkbq, hegyu, nyqju
fpmvb (17)
hlmdgp (78)
wbgwke (19)
dzjumb (43)
clmkbr (482) -> hasbi, pxzoq, ecfquya, coezio
affnbx (62)
ignblg (123) -> txeege, owxgj
ehqlqj (40)
vulynlf (18)
tghfe (89) -> usddqi, zuphhfa, rjzbhh
mdbixwm (33)
fdrki (60)
ggxhzhd (10) -> masck, amntev
obejsk (99)
eubqww (84)
auocy (60)
pqxef (50)
lhlyb (7)
tfiynwo (174) -> emdehy, zgtzox
jezdog (58) -> wvxvu, picati, tnisesh, yoibok
zizsy (89) -> hdtmmh, mmyiwt
ufmlfmj (60)
maklk (90)
oxvqjeh (17638) -> xscyb, wzjsbdm, lzikkl, xlyxjyx, flmeo, xcbliim
mmvhi (113) -> xpgzcxc, ddleaoo
yalqeoe (38)
ecfquya (32) -> vlfpib, dklrle
sagihe (940) -> bicpqwm, dyfptec, kbxvke, mgdhu
kiceppo (49)
tnpzf (114) -> ewrcce, jqougaa
vceutc (29) -> nqohnyo, vumxuur
uzdzkal (32)
csotuo (34)
xlufw (93)
hdqow (10132) -> uulig, macpvga, bkfxvy, zdjxp, akobg, vjboadc
rfqquyg (92)
sqwtiaf (30) -> aksgboa, qhezs
lamrqdl (59)
ittpbzy (101) -> jrkbskn, tqxfj
vjboadc (1160) -> dombfx, aksev, huytmw
iriyw (193) -> vxzgkqa, fjouck
hiftfo (88)
bsqlkiy (20)
hzkeiu (16)
arnbvk (329) -> zbodhfq, woxmeo
pxsmani (85)
jfapwfu (28) -> qhsptw, oqsdfwt, rsaitjm, decdq
jrkbskn (79)
zouqjoo (140)
wduscx (86)
vetib (92)
qtfroa (112) -> pxpeniz, ehwko, ujfmq
wgqnrc (30)
nvyaeal (29) -> mpijek, myrlvj
vsevm (27)
cdxwbv (23)
tzqux (57)
qkqgwsl (19)
ykcivtj (88)
tsdfcgo (73)
aqahah (68) -> airlbu, tgvqqn
jddzj (11)
zuzkw (16) -> sqfue, zlrboun
rdizbi (30)
lhxinfd (46)
sjiaux (15)
zfaog (20)
tgsdks (18)
dreryps (38) -> rfqquyg, jdltlbx, obqactw, hbgeak
xkfxnp (72) -> ejyho, hgbvgnn
qrtruk (63) -> ckjdqr, dtmhqm, tzdntld
mgwiq (16) -> wjjzh, kbtogma
sjoxehw (73)
jbpvtf (51)
gjtpl (48)
hrhcwn (63)
igkso (40) -> tqfzh, gbhlxb
cygpuh (66)
fckfbce (105) -> jtendcr, fcutr
yerfxa (77)
vjtbtv (77) -> unmxfe, rzclv
ppujydt (23) -> pujhjf, lvwwxt
qmvpgee (97)
kdrswra (102) -> xreip, ghxwug
oablvt (87)
latvopy (38) -> smmnc, quryyds, vyptki, hgchigs, vckxof
uaxsa (27)
lissl (97)
xovrzf (331) -> ehqlqj, scdvmta
homcnz (62)
crsjegg (21) -> iooqbyk, qrunwtc, bumibye, lhqbgck, sagihe, vpvab
pkagrvq (14)
thcth (50)
nogjxu (80)
hhjdf (207) -> wgvxebc, jvmuid
ipblpmy (46)
qmttkg (94) -> ohohls, zxdpmwl, czgws, ydbzo
qjtldq (7)
iggqobg (65)
hhfgih (152) -> wratzd, vdsjf, tbynt, hlzzxi
xvjkwcd (40) -> oleuqo, urhawb
fabacam (305) -> dlcxjg, dlactl, falrf
xvrgg (77)
fshoj (23)
uredmot (55) -> zmjzmyq, ghnldf
psynxr (19)
dtiprc (61)
pevdihc (135) -> rbmoj, hiftfo
jxtzkel (132) -> bdprpzc, ptfeyky
uvftw (1277) -> hvdafm, xgdyhva, vvndbk, gwkfb, cdvscgo, lhagpts
jvocm (114) -> lamrqdl, stjxh
zgtzox (42)
fzmwc (51)
aopwj (77)
vgeln (89)
nvwknv (47)
vrvzkc (27)
sholtl (79)
guivwse (60)
gjbikl (12)
kdsmyax (51) -> vhlon, vikstpo
dyqgl (50)
uqjsosg (67)
kahwlj (79) -> nlzohm, nomlh
lqgvx (97)
sstby (86)
sgcmty (77)
hgchigs (34) -> djktoc, aopwj
ouagp (24) -> lcfpcst, bxpfs
tsahe (106) -> gjkbf, uqjsosg
psjbb (86)
vrjfn (58)
rjzbhh (91) -> sarppfb, nhyhkq
melthx (10)
nuorc (40) -> ytlpe, fvhfru, xvrgg, kbdbe
mubenp (64)
mqtxqmz (12) -> lqvrx, chczyg
ypmvfz (54)
txote (73)
vxzgkqa (19)
bbrsdwl (73)
xconx (83)
enlfaa (479) -> djquz, sthyxh, hkuay, hmdqubz, qxccjtw, vgysxct
wbwyvyu (13) -> hmzal, fckfbce, fqdtzfy, hgwbjzo, hewjj, rcpscka, cxynfb
cvrph (145) -> dbdrdzo, acdahz
izsgfu (64)
jcexcl (18)
oacoxb (1336) -> msazzkr, jbpvht
acdahz (83)
afooq (46)
fkdauwn (187) -> aynknet, uzdzkal
mpedpht (91)
lcepfsw (218) -> schym, pbkmeod, ntodfz, owgrt, dcpqyp
xscyb (458)
pujhjf (87)
jtankmh (190)
pxctb (71)
tqfzh (75)
jzsmrz (126)
nzrhtgr (150) -> ezjgtbp, xfxsxh
tnxfqf (34)
djquz (211) -> fwlme, lsbzpu, ashtupo, gbauyfh
jyhddhe (49)
wdnjs (85)
byaaoab (186) -> ikhsv, pgpvnb
bumibye (997) -> xzixh, kdsbbcf, nyfdcz
frffchv (33)
cogziqp (12)
brchwcm (27) -> uxbnnor, iibjdbp, qupaz
fbvvzp (304)
tnisesh (50)
henlezn (64)
kbdbe (77)
vojpfo (43)
psxqu (61)
fvzfdr (52)
rvkalxi (77) -> vlzbp, jbpvbc, muvvvu, xadsoxv, ahcjog
abharn (51)
gegdmus (42)
hfdjtw (43)
zoqmn (54)
vgwxuan (50)
pjukxu (76) -> ikkatj, ujapot, rcvol
oziwd (8)
evgvano (411)
evquf (195)
gkjafru (18)
ygwxr (144) -> ylpvre, cabbtti
dniumoe (83) -> wajnp, mtvoxu, towdptl, kmiax
tlekuus (5)
mrchmw (43) -> xssia, wifwhkq
ueepet (113) -> ugoetwf, hfdjtw
znzsgk (98)
cabbtti (48)
cbpsyx (1290) -> nifptxs, oxzecjg, uycyz
ulqnjx (18)
ezjqb (49)
xvkcms (212) -> vxtfjhq, imjhra
kxgrtg (61)
hxtbym (50)
pqdoti (51)
lizkruo (15)
zzjwnh (130) -> ehgpqe, oicxl
mzbwym (39)
nkixmeh (32)
xxxauxt (20)
caukzx (67)
zenvqu (124) -> sboslk, fwudfax, rlbdave, onqnmbp
ivyarjy (46)
ldgldpx (11)
grvqyf (41)
hlzzxi (22)
jsvwb (10)
cglbn (14)
swefql (99)
zgtsnwk (63)
hlzape (373) -> fatxilu, htyvy, fpmvb, xxufma
lqylns (82) -> inful, igkso, mtsju, otrlqy, jtankmh, vorviq
iouzha (161) -> slnoqn, gmmkqp
kwtszff (119) -> bkfqmqn, tbsmz
rqpbivd (92)
bupugpv (36)
zaxds (66) -> ygywjq, pusxipi
onmghy (96)
jnenlog (78)
sovfoi (97) -> uluavyz, vhdke, kuivtq, ylluriq, cvrph, pevdihc
cfcbhku (90)
tgvqqn (71)
ncirziy (48) -> ulhmjq, zwoqof, hrzvmel, vrbss
obqactw (92)
udfmh (34)
hgsiz (46)
bicpqwm (177) -> sygyji, bjfou, qsche
jslpd (91)
pcmgq (22)
graedp (89) -> npozpo, znzsgk, jxvses, teikos
pnhxqna (96)
cwwdl (73)
msazzkr (28)
mngea (23)
gohxocn (23)
qfqnrvt (4602) -> ptwedjj, xdxhzm, qsiqu
rsaitjm (43)
lwroef (37)
jbpvht (28)
wjovhv (35) -> gokngb, vczph, phbapzv, tqcwn
nsabyg (99)
tvbswr (45)
fwbly (134) -> dzjumb, ugqjxlt
hrufxbf (36)
wltyw (60)
ptfeyky (38)
jwptb (1539) -> yulcus, ndvns
qxccjtw (178) -> wbgwke, arqqbb, qkqgwsl
ewrcce (59)
oxzecjg (2983) -> eknyvq, myypsh
dwkkssy (15)
gnxiznu (126) -> nroory, loofhh
bejncv (38)
qcbfbfz (2322) -> vuhehz, lqylns, wgtmwjd
pkwzp (96)
owtdq (103) -> frffchv, lkzdum, sgtarpx
mdauzot (240)
alkysnc (73)
gtvuq (898) -> zuapfco, kexrse
eewbbvo (70)
jfhpd (196)
mshht (33)
sbanx (204) -> fhabfp, yfngcvd
pusxipi (83)
mwbvrhn (182)
fbvhl (72)
ulvmck (1649) -> bfrmpr, tcaemi, gkvrrq
yproaz (18)
bgltopb (866) -> bpbik, kniivab, quyasfd
nnkpuhp (65)
bhzuzbt (93)
tcbrhdi (87)
guzycwt (34)
jdabb (61)
fsckdb (268) -> yjarolt, dewtepm
yfkyv (45)
hyqrffw (146) -> ztylsq, nkixmeh
ctkjip (87)
vularzu (93)
ygywjq (83)
xzjcf (1843) -> mmaqp, euglphc, smzpa, zprquyv
jblnqb (78)
dbcrmjt (28)
dewtepm (69)
zdagr (249) -> gqjhcw, qvcpu
jepbpw (383) -> tgwmbza, wifvw, nwand, tyjrdme, snhlzkk
duxfof (39)
tzljrvn (54)
smmnc (20) -> agwpt, cfefqhk
vgvfksg (63)
ugaxscf (289) -> vtneuhy, bfcab
tbynt (22)
hkuay (121) -> bejncv, fpqpmca, ttstqws
eujnekp (7) -> licby, adxox
exfeog (853) -> crihz, xuzvwcg, icrilh
gmmkqp (21)
qfegd (228) -> vgeln, zdrwxqt
lewizr (39)
teikos (98)
bwsbj (216) -> xrwnzgz, hydfd
frzwdkn (11)
fgokr (19)
cwevfy (21)
dzekyo (43)
tmuuyka (51)
njppj (23)
eboizv (50)
gvphwwi (50)
vidgimw (534) -> dsstjf, fyuitn, kucnmn
wmhjbm (70)
zkvrxb (17)
gwnou (67)
pihpjbp (14)
lwejw (66)
fmlyuv (77)
rtstdkd (47)
kmiax (54)
vyptki (98) -> mgmoe, msxnd
gwkfb (1238) -> ggxhzhd, rymvvbq, wvwiwua
wvwiwua (108) -> wjnibfh, exiwwbx
shilhu (67)
bpbik (97) -> cdxwbv, zchxtxj
hssgk (14)
hujzcku (44)
tjmyc (258) -> gmtzu, rdizbi
vhjfcw (191) -> yproaz, tgsdks
ewzvs (54)
qsche (6)
rxwtoee (30)
muvvvu (167) -> gbkubnt, lxxkjb, vjdrrnk
sbhcx (48)
vvndbk (953) -> jgwvyp, udlyr, vhjfcw
nnqghfo (99)
coezio (70) -> jcexcl, woeabie, uguqde
zchxtxj (23)
rfytg (142) -> oldfs, mrkknr
ndtsa (7)
qrklawm (78) -> emcstpe, pxctb
ladkvis (99) -> nbdfits, uazvt, rwgpcs
ewiugad (167) -> uzxovd, vltkp, niydyxq, yxknolf
yioxr (150) -> njppj, inpjzmh, nbfpp
exfffna (60)
rrqfy (50)
sdwnkb (93)
rshqkfx (52)
fvhfru (77)
tutfkbo (187) -> ckvji, gegdmus
vlfpib (46)
lsoto (148) -> fwjnm, hzkeiu
ecxayrz (63) -> wutzd, vbqsm, nefive, ftpwtol, hocvke
urexzjf (187) -> wxyhyh, vojpfo
nbfpp (23)
rspilzk (40)
zgatapc (49)
vcsdacf (34)
rnvenxi (36)
mcdpv (27)
oieuzv (25)
txtnweq (67)
sarppfb (68)
wpxxz (20) -> fedhzki, vsbbr, psxqu, jdabb
usglf (78)
ujfmq (41)
fpqpmca (38)
yxknolf (33)
ppeumu (517) -> mrchmw, bkvaj, iouzha, knxtlig, jdvro, afrpf, kunhp
acueoez (86)
foqjjt (294) -> fjekad, gjtpl
dyfptec (105) -> ispeb, wgqnrc, rxwtoee
idnhoqh (70) -> mzftrlb, qxnuj
vrnxiui (85)
tgwmbza (1064) -> aplke, tqnqxx, nkbtsr
mhgdq (62)
yccqn (50)
bbixr (4503) -> xmufp, moxxiw, nemomq
aynknet (32)
cdrjh (64)
hgwupie (115) -> aicos, zziuivt
fwjnm (16)
qhsptw (43)
ptwedjj (33) -> xdnrao, enohjb, uxeyxk, qxzhq, fhdkp
jxvses (98)
xvedp (50) -> cwwdl, rwlchj
jxxgurr (95)
etingr (217) -> ulqnjx, vulynlf
bsieig (18)
mhium (203) -> hssgk, jljurl
vlzbp (286) -> auqfj, noqbv
suqxa (70)
dlcxjg (17) -> mhwqim, jcrmny
xpigis (270)
ehkrs (11) -> ulvmck, dhujegl, fngfnuz, qdzbmhn, usbjyly
xxoqrj (46)
rscnige (65)
dhujegl (34) -> mlavfvc, fxpic, fbvvzp, qinwdk, acsqtk, pjukxu, iulkkfp
qgufw (74)
cznqutl (99)
evpfdj (37)
pfjvzzw (91)
ffvahj (47) -> qdxpkx, vmvjl, qfggzok
yfouoak (56) -> vfbhl, jjpco
qntqokn (8)
kebefwy (246) -> jguhhsb, jpcurr
hbozym (48)
infll (59)
wvysxc (95)
ospcnv (14)
nvoys (86)
efvvtgo (185) -> zegoosj, tlyncze
lhqhx (73)
yqpivvl (17)
hcajnu (23)
tgtjhg (25)
viqhzr (98)
yygyfi (155) -> jddzj, qcako, frzwdkn
yzjmm (36) -> ldakuz, fivaym
kialkdr (19)
gdibw (12)
rdngdrd (80)
lgurkym (337)
ddsmt (87)
rkdopb (82) -> todbu, sahfob, uaxomk
xslucv (51)
bfcab (76)
gnjkpwf (947) -> zayqjx, smkcc, lhkoebz, ivcqfao
iadezq (7)
ckgmjsg (44)
tqxfj (79)
nmwrqbx (55) -> obejsk, nsabyg
mepeg (21)
iuzfnx (70)
bfphqmo (99)
myypsh (97)
ykcxtea (86) -> cpwfem, vularzu
yhhob (81)
fcutr (85)
rjfqyz (71) -> rfvtfs, xlufw
ryrig (59)
fzzyjt (202)
tyjrdme (321) -> zngystc, jfapwfu, qskbft, pvqfa
ywxkr (65)
vjdrrnk (45)
tptcl (61) -> krxpma, rtstdkd
tnxxb (59)
zrsya (17)
jprkymy (23)
icdyfw (37)
iovan (1882) -> wppgjkw, rkdopb, ehjpn
qeijcl (12)
izfqx (47)
mwdqdbu (54)
txeege (37)
onqnmbp (27)
isuevmr (221) -> sphktgz, gjauauy, bncsnst
ohohls (57)
kwaqrgu (94)
mfmrv (6)
dzjwel (65)
ibfbn (75) -> hquuw, sreeeqf, usixdl, rsvcn
uzjoy (38)
jhzoyme (91)
loyjp (62)
vazst (45) -> ymfwoto, hxtbym, lfszf
jkhruz (15)
ioyesxg (132) -> wjgdz, cvkmmqc, shifzsw, zoqmn
veyvaoh (7)
cpoxc (217) -> wqobawc, shilhu
zvzdrp (7)
hydfd (21)
tygpx (21)
juvwvsn (53)
phswa (176) -> xikuc, clyht
fhhzvwj (20)
vldursw (145) -> rsjmc, juvwvsn
ocmac (54)
dchobfa (12) -> ullsjlc, cznqutl
onlnhb (71)
ftolbk (183) -> pagsex, wrbtgkb
flrdpaj (92)
vmvjl (67)
kqcog (48) -> bcswm, bpuiaqr
cstnc (79) -> bubhosg, tvbswr, hswdm, yfkyv
vuazmuj (23)
eincbt (52)
wzjsbdm (62) -> sytjgl, tfuuzgi, bfphqmo, vcmntc
dvyohbc (85)
zwoqof (34)
wqtbb (76)
gkvrrq (77) -> izfqx, bvwdckm
xivvpur (20)
jxzyc (141) -> nvwknv, immcgrm
ufqlean (28)
todbu (87)
qdmop (85)
thtnmkb (95) -> adjfke, zbthq
ikzqhu (50)
jcyxjwa (98) -> agjdl, dtiprc, qaugj
horfum (78)
dayjxl (10)
vczph (50)
alpas (17) -> dgkhq, izsgfu, gktepby, iwotig
dqrsxx (81)
ixvot (54)
hoagrj (99)
dwztnh (27)
uodmc (727) -> atwsafs, hwqhsc, wlibbwd
dqyaco (32)
bkfqmqn (70)
dlactl (127) -> jkhruz, lizkruo
kuivtq (311)
wkkqsy (80)
szkgky (76) -> psjbb, beigkn
wutzd (168) -> guzycwt, tnxfqf, csotuo
rlrcvv (128) -> hkelse, ljihfp
vtneuhy (76)
exbgy (159) -> veuqzjh, oynlkiy, oieuzv, tgtjhg
bjrfinh (97)
hsdkmdv (50286) -> unhnq, crsjegg, abfkpur, qfqnrvt, etsxvmj
masck (61)
vrbss (34)
ytqwzv (68) -> qfaubqr, fyxdfod
kvxtl (26)
ibqenc (71)
zsckv (6579) -> iscnnvh, pqxpguz, wqudy
splhdhe (80)
raloti (104) -> sgcmty, pgscbge
sreeeqf (84)
tqnqxx (19)
xaskpny (79)
gbauyfh (6)
exiwwbx (12)
phmqb (7)
bydmdru (60)
zwqpx (6)
ehazo (1097) -> heiejhm, fwbly, gyivxga, wjhgb
zudhbe (168) -> ndtsa, ecagt
fncsm (46)
zhkmnxk (21) -> ytlzs, ukhyz, cphgovc, vruhp
cqifjd (189) -> knsphtv, qgufw
vcllnn (244) -> dkbycez, jxzyc, qtfroa, ucqpz, wjovhv, pxfpf, orawnkw
arqqbb (19)
dsstjf (100) -> cvchqoz, jirnr
bjfou (6)
gokngb (50)
qupaz (76)
opkjkav (51)
fgayln (257)
jzdtwf (7)
dbdrdzo (83)
sytjgl (99)
nthqzh (31)
ndwvmg (235) -> qeijcl, kyhace
gwwjmo (575) -> mdauzot, yfouoak, qkrirn
evofb (24)
ugoetwf (43)
zrqzlvd (42) -> eavfy, tcbrhdi
djyks (81)
gwsceo (9) -> beiih, guipj, xzjcf, ktiuc, iovan, ygbphkw, abeinmv
qdlcvk (61) -> dvyohbc, yynji
lvwwxt (87)
fngfnuz (1222) -> vehan, yygyfi, vpnfkw, gnxiznu, ooeypdy
dfnak (6645) -> cxfvbz, oacoxb, rsttknu
pftmymi (13)
ikhsv (39)
quyasfd (63) -> xbxqoh, kdajj
ntodfz (172)
krxpma (47)
xpzzkdb (34)
dtmhqm (49)
hquuw (84)
tfuuzgi (99)
rbmoj (88)
tfshhr (55)
nxygf (28)
wvxvu (50)
chczyg (85)
djktoc (77)
ttborca (51)
pvcpmx (137) -> jjpnqsk, gseohkk
fwudfax (27)
vyzhqx (62) -> eewbbvo, hocfv
dvzguq (140) -> ulzcu, dvzoq
rhwfl (74)
mfohmwu (344) -> dniumoe, uuimn, ewiugad, vkkds, bqpycy
lskrih (177) -> splhdhe, rdngdrd
vihjl (46)
adjfke (88)
brubv (76)
rzwkjvu (47)
iyekup (1248) -> ignblg, ebhzgav, ygzas
uryldo (749) -> mqtxqmz, mwbvrhn, zudhbe
vorviq (176) -> jzdtwf, veyvaoh
vsojq (76)
ilnlkpv (93)
tzdntld (49)
tuefd (209) -> kqcog, hhfgih, nnbokwt, pwyspt, txayxeg, tsahe, ygwxr
bmzeddf (259)
sqfue (55)
ndebha (76)
ulzcu (17)
tlmnwl (474) -> nidvi, alpas, urexzjf, ftolbk, efulo
thwgxk (50)
soxzrwm (83)
"""

struct ProgramDescription {
    let name: String
    let size: UInt
    var children: [String]
}

struct Program {
    let name: String
    let size: UInt
    let children: [Program]
    let trueSize: UInt
    let valid: Bool

    init(name: String, size: UInt, children: [Program]) {
        self.name = name
        self.size = size
        self.children = children
        self.trueSize = size + children.reduce(0) { acc, next in acc + next.trueSize }
        guard let firstChildSize = children.first?.trueSize else {
            self.valid = true
            return
        }
        self.valid = children.filter { $0.trueSize != firstChildSize }.count == 0
    }
}

func findRootWord(_ input: String) -> String {
    var rootWord: String?
    let wordList = input
        .replacingOccurrences(of: " ->", with: "")
        .replacingOccurrences(of: " (", with: "")
        .filter { ![")", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ","].contains($0) }
        .replacingOccurrences(of: "\n", with: " ")
        .split(separator: " ")
        .sorted()
    for i in stride(from: 0, to: wordList.count, by: 2) {
        if wordList[i] != wordList[i + 1] {
            rootWord = String(wordList[i])
            break
        }
    }
    return rootWord!
}

func buildTree(_ programMap: [String : ProgramDescription], rootWord: String) -> Program {
    let root = programMap[rootWord]!
    let children = root.children.map {
        buildTree(programMap, rootWord: $0)
    }

    return Program(name: root.name, size: root.size, children: children)
}

func printTree(_ root: Program, level: Int = 0) {
    let indent = String.init(repeating: "  ", count: level)
    print("\(indent)\(root.name) : \(root.size) (\(root.trueSize)) \(root.valid ? "valid" : "INVALID")")
    for child in root.children {
        printTree(child, level: level + 1)
    }
}

func process(_ input: String) -> Program {
    let programMap = input.replacingOccurrences(of: " -> ", with: ">")
        .replacingOccurrences(of: " (", with: "(")
        .replacingOccurrences(of: ")", with: "")
        .replacingOccurrences(of: ", ", with: ",")
        .split(separator: "\n")
        .reduce([String : ProgramDescription]()) {
            acc, next in
            var result = acc
            var programDescription = next.split(separator: ">")
            var nameSize = programDescription.removeFirst().split(separator: "(")
            let name = String(nameSize.removeFirst())
            let size = UInt(nameSize.removeFirst())!
            let children = programDescription.first?.split(separator: ",").map(String.init)

            result[name] = ProgramDescription(name: name, size: size, children: children ?? [])
            return result
    }

    return buildTree(programMap, rootWord: findRootWord(input))
}

let tree = process(input)
printTree(tree)
