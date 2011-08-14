use strict;
while(<DATA>)
{
chomp;
s/\"//g;
my($sheet,$name,$emin,$emax,$nmin,$nmax) = split(/\t/);
my $s = substr($sheet,0,4);
foreach my $e ($emin,$emax)
{
foreach my $n ($nmin,$nmax)
{
print "E $e $n\n";
my $es = substr($e,2,3);
my $ns = substr($n,2,3);
print "D$s $es $ns\n";

}
}


}
__END__
AS21/AS22	Manawat?whi / Three Kings Islands  	1504000	1528000	6198000	6234000
AT24	Cape Reinga	1564000	1588000	6162000	6198000
AT25	North Cape (Otou)	1588000	1612000	6162000	6198000
AU25	Houhora	1588000	1612000	6126000	6162000
AU26	Waiharara	1612000	1636000	6126000	6162000
AU27	Mangonui	1636000	1660000	6126000	6162000
AU28ptAV28	Taupo Bay	1660000	1684000	6114000	6150000
AU29ptAV29	Panaki Island	1684000	1708000	6114000	6150000
AV25ptAV26	Tauroa Peninsula	1596000	1620000	6090000	6126000
AV26	Kaitaia	1612000	1636000	6090000	6126000
AV27	Mangamuka	1636000	1660000	6090000	6126000
AV28	Whangaroa	1660000	1684000	6090000	6126000
AV29	Russell	1684000	1708000	6090000	6126000
AV30	Cape Brett	1708000	1732000	6090000	6126000
AW26	Hokianga Harbour	1612000	1636000	6054000	6090000				
AW27	Rawene	1636000	1660000	6054000	6090000				
AW28	Kaikohe	1660000	1684000	6054000	6090000				
AW29	Kawakawa	1684000	1708000	6054000	6090000				
AW30	Whangaruru	1708000	1732000	6054000	6090000				
AW31	Tutukaka	1732000	1756000	6054000	6090000				
AW32	Poor Knights Islands	1756000	1780000	6054000	6090000				
AX27	Aranga	1636000	1660000	6018000	6054000				
AX28	Dargaville	1660000	1684000	6018000	6054000				
AX29	Tangowahine	1684000	1708000	6018000	6054000				
AX30	Whangarei	1708000	1732000	6018000	6054000				0
AX31	Bream Head	1732000	1756000	6018000	6054000				0
"AX32ptsAX31,AY31,AY32"	Hen and Chickens Islands	1748000	1772000	6006000	6042000				-12000
AX33	Mokohinau Islands	1780000	1804000	6018000	6054000				12000
AY28	Te Kopuru	1660000	1684000	5982000	6018000				-36000
AY29	Ruawai	1684000	1708000	5982000	6018000				0
AY30	Maungaturoto	1708000	1732000	5982000	6018000				0
AY31	Mangawhai	1732000	1756000	5982000	6018000				0
AY32	Cape Rodney	1756000	1780000	5982000	6018000				0
AY33	Hauturu / Little Barrier Island	1780000	1804000	5982000	6018000				0
AY34	Claris	1804000	1828000	5982000	6018000				0
AZ29	Kaipara Head	1684000	1708000	5946000	5982000				-36000
AZ30	Kaipara Harbour	1708000	1732000	5946000	5982000				0
AZ31	Warkworth	1732000	1756000	5946000	5982000				0
AZ32	Kawau Island	1756000	1780000	5946000	5982000				0
AZ34	Moehau	1804000	1828000	5946000	5982000				0
AZ35	Cuvier Island (Repanga Island)	1828000	1852000	5946000	5982000				0
"AZ36ptsAZ35,BA35,BA36"	Mercury Islands (Iles d'Haussez)	1844000	1868000	5937000	5973000				-9000
BA30	Helensville	1708000	1732000	5910000	5946000				-27000
BA31	Waitemata Harbour	1732000	1756000	5910000	5946000				0
BA32	Auckland	1756000	1780000	5910000	5946000				0
BA33	Waiheke Island	1780000	1804000	5910000	5946000				0
BA34	Coromandel	1804000	1828000	5910000	5946000				0
BA35	Whitianga	1828000	1852000	5910000	5946000				0
BA36ptBA35	Cooks Beach	1844000	1868000	5910000	5946000				0
BB30ptBB31	Piha	1716000	1740000	5874000	5910000				-36000
BB31	Manukau Harbour	1732000	1756000	5874000	5910000				0
BB32	Papatoetoe	1756000	1780000	5874000	5910000				0
BB33	Hunua	1780000	1804000	5874000	5910000				0
BB34	Thames	1804000	1828000	5874000	5910000				0
BB35	Hikuai	1828000	1852000	5874000	5910000				0
BB36	Whangamata	1852000	1876000	5874000	5910000				0
BB37ptBB36	The Aldermen Islands	1868000	1892000	5874000	5910000				0
BC31	Port Waikato	1732000	1756000	5838000	5874000				-36000
BC32	Pukekawa	1756000	1780000	5838000	5874000				0
BC33	Te Kauwhata	1780000	1804000	5838000	5874000				0
BC34	Ngatea	1804000	1828000	5838000	5874000				0
BC35	Paeroa	1828000	1852000	5838000	5874000				0
BC36	Katikati	1852000	1876000	5838000	5874000				0
BC37	Mayor Island (Tuhua)	1876000	1900000	5838000	5874000				0
BC40ptBD40	Whakaari / White Island	1956000	1980000	5826000	5862000				-12000
BD31ptBD32	Mount Karioi	1740000	1764000	5802000	5838000				-24000
BD32	Raglan	1756000	1780000	5802000	5838000				0
BD33	Hamilton	1780000	1804000	5802000	5838000				0
BD34	Morrinsville	1804000	1828000	5802000	5838000				0
BD35	Matamata	1828000	1852000	5802000	5838000				0
BD36	Lower Kaimai	1852000	1876000	5802000	5838000				0
BD37	Tauranga	1876000	1900000	5802000	5838000				0
BD38	Maketu	1900000	1924000	5802000	5838000				0
BD39ptBE39	Matata	1924000	1948000	5790000	5826000				-12000
BD40ptBE40	Moutohora Island	1948000	1972000	5790000	5826000				0
BD42	Te Kaha	1996000	2020000	5802000	5838000				12000
BD43	Raukokore	2020000	2044000	5802000	5838000				0
BD44	Potaka	2044000	2068000	5802000	5838000				0
BD45	East Cape	2068000	2092000	5802000	5838000				0
BE31	Albatross Point	1732000	1756000	5766000	5802000				-36000
BE32	Kawhia	1756000	1780000	5766000	5802000				0
BE33	Pirongia	1780000	1804000	5766000	5802000				0
BE34	Kihikihi	1804000	1828000	5766000	5802000				0
BE35	Putaruru	1828000	1852000	5766000	5802000				0
BE36	Mamaku	1852000	1876000	5766000	5802000				0
BE37	Rotorua	1876000	1900000	5766000	5802000				0
BE38	Lake Rotom?	1900000	1924000	5766000	5802000				0
BE39	Edgecumbe	1924000	1948000	5766000	5802000				0
BE40	Whakatane	1948000	1972000	5766000	5802000				0
BE41	Opotiki	1972000	1996000	5766000	5802000				0
BE42	Houpoto	1996000	2020000	5766000	5802000				0
BE43	Huiarua	2020000	2044000	5766000	5802000				0
BE44	Te Puia Springs	2044000	2068000	5766000	5802000				0
BE45	Waipiro Bay	2068000	2092000	5766000	5802000				0
BF31	Marokopa	1732000	1756000	5730000	5766000				-36000
BF32	Piopio	1756000	1780000	5730000	5766000				0
BF33	Te Kuiti	1780000	1804000	5730000	5766000				0
BF34	Benneydale	1804000	1828000	5730000	5766000				0
BF35	Whakamaru	1828000	1852000	5730000	5766000				0
BF36	Atiamuri	1852000	1876000	5730000	5766000				0
BF37	Waiotapu	1876000	1900000	5730000	5766000				0
BF38	Kaingaroa Forest	1900000	1924000	5730000	5766000				0
BF39	Galatea	1924000	1948000	5730000	5766000				0
BF40	Matahi	1948000	1972000	5730000	5766000				0
BF41	Oponae	1972000	1996000	5730000	5766000				0
BF42	Matawai	1996000	2020000	5730000	5766000				0
BF43	Te Karaka	2020000	2044000	5730000	5766000				0
BF44	Tolaga Bay	2044000	2068000	5730000	5766000				0
BF45ptBF44	Marau Point	2060000	2084000	5730000	5766000				0
BG30ptBH30	Opourapa Island	1708000	1732000	5682000	5718000				-48000
BG31	Mokau	1732000	1756000	5694000	5730000				12000
BG32	Ohura	1756000	1780000	5694000	5730000				0
BG33	Ongarue	1780000	1804000	5694000	5730000				0
BG34	Piropiro	1804000	1828000	5694000	5730000				0
BG35	Tihoi	1828000	1852000	5694000	5730000				0
BG36	Taupo	1852000	1876000	5694000	5730000				0
BG37	Iwitahi	1876000	1900000	5694000	5730000				0
BG38	Wairapukao	1900000	1924000	5694000	5730000				0
BG39	Ruatahuna	1924000	1948000	5694000	5730000				0
BG40	Waikaremoana	1948000	1972000	5694000	5730000				0
BG41	Ruakituri	1972000	1996000	5694000	5730000				0
BG42	Ngatapa	1996000	2020000	5694000	5730000				0
BG43	Gisborne	2020000	2044000	5694000	5730000				0
BG44	Whangara	2044000	2068000	5694000	5730000				0
BH28	Oakura	1660000	1684000	5658000	5694000				-36000
BH29	New Plymouth	1684000	1708000	5658000	5694000				0
BH30	Urenui	1708000	1732000	5658000	5694000				0
BH31	Whangamomona	1732000	1756000	5658000	5694000				0
BH32	Tokirima	1756000	1780000	5658000	5694000				0
BH33	Retaruke	1780000	1804000	5658000	5694000				0
BH34	Raurimu	1804000	1828000	5658000	5694000				0
BH35	Turangi	1828000	1852000	5658000	5694000				0
BH36	Motutere	1852000	1876000	5658000	5694000				0
BH37	Rangitaiki	1876000	1900000	5658000	5694000				0
BH38	Te Haroto	1900000	1924000	5658000	5694000				0
BH39	Putorino	1924000	1948000	5658000	5694000				0
BH40	Mohaka	1948000	1972000	5658000	5694000				0
BH41	Wairoa	1972000	1996000	5658000	5694000				0
BH42	Nuhaka	1996000	2020000	5658000	5694000				0
BH43	Wharerata	2020000	2044000	5658000	5694000				0
BJ28	Opunake	1660000	1684000	5622000	5658000				-36000
BJ29	Mount Taranaki or Mount Egmont	1684000	1708000	5622000	5658000				0
BJ30	Stratford	1708000	1732000	5622000	5658000				0
BJ31	Strathmore	1732000	1756000	5622000	5658000				0
BJ32	Pipiriki	1756000	1780000	5622000	5658000				0
BJ33	Raetihi	1780000	1804000	5622000	5658000				0
BJ34	Mount Ruapehu	1804000	1828000	5622000	5658000				0
BJ35	Waiouru	1828000	1852000	5622000	5658000				0
BJ36	Tawake Tohunga	1852000	1876000	5622000	5658000				0
BJ37	Kuripapango	1876000	1900000	5622000	5658000				0
BJ38	Te Pohue	1900000	1924000	5622000	5658000				0
BJ39	Whirinaki	1924000	1948000	5622000	5658000				0
BJ40ptBJ39	Waipatiki Beach	1940000	1964000	5622000	5658000				0
"BJ43ptsBJ42,BH42,BH43"	Mahia Peninsula	2012000	2036000	5634000	5670000				12000
BK28ptBJ28	Pihama	1660000	1684000	5598000	5634000				-36000
BK29	Manaia	1684000	1708000	5586000	5622000				-12000
BK30	Patea	1708000	1732000	5586000	5622000				0
BK31	Waverley	1732000	1756000	5586000	5622000				0
BK32	Kai  Iwi	1756000	1780000	5586000	5622000				0
BK33	Matahiwi 	1780000	1804000	5586000	5622000				0
BK34	Pohonui	1804000	1828000	5586000	5622000				0
BK35	Taihape	1828000	1852000	5586000	5622000				0
BK36	Taoroa Junction	1852000	1876000	5586000	5622000				0
BK37	Tikokino	1876000	1900000	5586000	5622000				0
BK38	Maraekakaho	1900000	1924000	5586000	5622000				0
BK39	Hastings	1924000	1948000	5586000	5622000				0
BK40ptBK39	Cape Kidnappers	1940000	1964000	5586000	5622000				0
BL31ptBK31	Waiinu Beach	1732000	1756000	5562000	5598000				-24000
BL32	Wanganui	1756000	1780000	5550000	5586000				-12000
BL33	Marton	1780000	1804000	5550000	5586000				0
BL34	Hunterville	1804000	1828000	5550000	5586000				0
BL35	Kimbolton	1828000	1852000	5550000	5586000				0
BL36	Norsewood	1852000	1876000	5550000	5586000				0
BL37	Ongaonga	1876000	1900000	5550000	5586000				0
BL38	Waipukurau	1900000	1924000	5550000	5586000				0
BL39	Waimarama	1924000	1948000	5550000	5586000				0
BM24ptBN24	Cape Farewell	1564000	1588000	5502000	5538000				-48000
BM25ptBN25	Farewell Spit	1588000	1612000	5502000	5538000				0
BM33	Foxton	1780000	1804000	5514000	5550000				12000
BM34	Palmerston North	1804000	1828000	5514000	5550000				0
BM35	Woodville	1828000	1852000	5514000	5550000				0
BM36	Dannevirke	1852000	1876000	5514000	5550000				0
BM37	Weber	1876000	1900000	5514000	5550000				0
BM38	Porangahau	1900000	1924000	5514000	5550000				0
BM39ptBM38	Blackhead	1916000	1940000	5514000	5550000				0
BN22	Kahurangi Point	1516000	1540000	5478000	5514000				-36000
BN23	Paturau River	1540000	1564000	5478000	5514000				0
BN24	Collingwood	1564000	1588000	5478000	5514000				0
BN25	Totaranui	1588000	1612000	5478000	5514000				0
BN28	Port Hardy	1660000	1684000	5478000	5514000				0
BN29ptBN28	Cape Stephens	1676000	1700000	5478000	5514000				0
BN32ptBP32	Kapiti Island	1756000	1780000	5466000	5502000				-12000
BN33	Levin	1780000	1804000	5478000	5514000				12000
BN34	Shannon	1804000	1828000	5478000	5514000				0
BN35	Alfredton	1828000	1852000	5478000	5514000				0
BN36	Pongaroa	1852000	1876000	5478000	5514000				0
BN37	Akitio	1876000	1900000	5478000	5514000				0
BN38ptBN37	Cape Turnagain	1892000	1916000	5478000	5514000				0
BP22	Heaphy Beach	1516000	1540000	5442000	5478000				-36000
BP23	Gouland Downs	1540000	1564000	5442000	5478000				0
BP24	Takaka	1564000	1588000	5442000	5478000				0
BP25	Motueka	1588000	1612000	5442000	5478000				0
BP26ptBP27	Pepin Island	1620000	1644000	5442000	5478000				0
BP27	Croisilles Hill	1636000	1660000	5442000	5478000				0
BP28	Te Aumiti (French Pass)	1660000	1684000	5442000	5478000				0
BP29	Endeavour Inlet 	1684000	1708000	5442000	5478000				0
BP30ptBQ30	Cape Koamaru	1708000	1732000	5430000	5466000				-12000
BP31	Porirua	1732000	1756000	5442000	5478000				12000
BP32	Paraparaumu	1756000	1780000	5442000	5478000				0
BP33	Featherston	1780000	1804000	5442000	5478000				0
BP34	Masterton	1804000	1828000	5442000	5478000				0
BP35	Bideford	1828000	1852000	5442000	5478000				0
BP36	Castlepoint	1852000	1876000	5442000	5478000				0
BQ21ptBQ22	Kongahu Point	1500000	1524000	5406000	5442000				-36000
BQ22	Karamea	1516000	1540000	5406000	5442000				0
BQ23	Wangapeka Saddle	1540000	1564000	5406000	5442000				0
BQ24	Tapawera	1564000	1588000	5406000	5442000				0
BQ25	Mapua	1588000	1612000	5406000	5442000				0
BQ26	Nelson	1612000	1636000	5406000	5442000				0
BQ27	Rai Valley	1636000	1660000	5406000	5442000				0
BQ28	Havelock	1660000	1684000	5406000	5442000				0
BQ29	Waikawa	1684000	1708000	5406000	5442000				0
BQ31	Wellington	1732000	1756000	5406000	5442000				0
BQ32	Lower Hutt	1756000	1780000	5406000	5442000				0
BQ33	Lake Wairarapa	1780000	1804000	5406000	5442000				0
BQ34	Martinborough	1804000	1828000	5406000	5442000				0
BQ35	Te Wharau	1828000	1852000	5406000	5442000				0
BQ36ptBQ35	Patanui Stream	1844000	1868000	5406000	5442000				0
BR20	Westport	1468000	1492000	5370000	5406000				-36000
BR21	Granity	1492000	1516000	5370000	5406000				0
BR22	Lyell	1516000	1540000	5370000	5406000				0
BR23	Murchison	1540000	1564000	5370000	5406000				0
BR24	Kawatiri	1564000	1588000	5370000	5406000				0
BR25	Tophouse	1588000	1612000	5370000	5406000				0
BR26	Mount Patriarch	1612000	1636000	5370000	5406000				0
BR27	Waihopai	1636000	1660000	5370000	5406000				0
BR28	Blenheim	1660000	1684000	5370000	5406000				0
BR29	Seddon	1684000	1708000	5370000	5406000				0
BR33	Ngawi	1780000	1804000	5370000	5406000				0
BR34	Manurewa Point	1804000	1828000	5370000	5406000				0
BS19	Punakaiki	1444000	1468000	5334000	5370000				-36000
BS20	Charleston	1468000	1492000	5334000	5370000				0
BS21	Reefton	1492000	1516000	5334000	5370000				0
BS22	Shenandoah	1516000	1540000	5334000	5370000				0
BS23	Matakitaki	1540000	1564000	5334000	5370000				0
BS24	Mount Robert	1564000	1588000	5334000	5370000				0
BS25	Severn	1588000	1612000	5334000	5370000				0
BS26	Mount Muller	1612000	1636000	5334000	5370000				0
BS27	Tapuae-o-Uenuku	1636000	1660000	5334000	5370000				0
BS28	Kekerengu	1660000	1684000	5334000	5370000				0
BS29	Ward	1684000	1708000	5334000	5370000				0
BT19	Runanga	1444000	1468000	5298000	5334000				-36000
BT20	Ahaura	1468000	1492000	5298000	5334000				0
BT21	Waiuta	1492000	1516000	5298000	5334000				0
BT22	Springs Junction	1516000	1540000	5298000	5334000				0
BT23	Lewis Pass	1540000	1564000	5298000	5334000				0
BT24	Ada Flat	1564000	1588000	5298000	5334000				0
BT25	Mount Northampton	1588000	1612000	5298000	5334000				0
BT26	Mount Clear	1612000	1636000	5298000	5334000				0
BT27	Kaikoura	1636000	1660000	5298000	5334000				0
BT28	Mangamaunu	1660000	1684000	5298000	5334000				0
BU18	Hokitika	1420000	1444000	5262000	5298000				-36000
BU19	Kumara	1444000	1468000	5262000	5298000				0
BU20	Moana	1468000	1492000	5262000	5298000				0
BU21	Haupiri	1492000	1516000	5262000	5298000				0
BU22	Lake Sumner	1516000	1540000	5262000	5298000				0
BU23	Boyle Village	1540000	1564000	5262000	5298000				0
BU24	Hanmer Springs 	1564000	1588000	5262000	5298000				0
BU25	Waiau	1588000	1612000	5262000	5298000				0
BU26	Parnassus	1612000	1636000	5262000	5298000				0
BU27	Oaro	1636000	1660000	5262000	5298000				0
BV16	Mount Oneone	1372000	1396000	5226000	5262000				-36000
BV17	Kakapotahi 	1396000	1420000	5226000	5262000				0
BV18	Kokatahi	1420000	1444000	5226000	5262000				0
BV19	Lake Kaniere	1444000	1468000	5226000	5262000				0
BV20	Otira	1468000	1492000	5226000	5262000				0
BV21	Cass	1492000	1516000	5226000	5262000				0
BV22	Dampier Corner	1516000	1540000	5226000	5262000				0
BV23	Virginia 	1540000	1564000	5226000	5262000				0
BV24	Waipara	1564000	1588000	5226000	5262000				0
BV25	Motunau Beach	1588000	1612000	5226000	5262000				0
BV26	Cheviot	1612000	1636000	5226000	5262000				0
BW14ptBX14	Waikowhai Bluff	1324000	1348000	5178000	5214000				-48000
BW15	Okarito	1348000	1372000	5190000	5226000				12000
BW16	Whataroa	1372000	1396000	5190000	5226000				0
BW17	Harihari	1396000	1420000	5190000	5226000				0
BW18	Whitcombe Pass	1420000	1444000	5190000	5226000				0
BW19	Taylors Camp	1444000	1468000	5190000	5226000				0
BW20	Lake Coleridge	1468000	1492000	5190000	5226000				0
BW21	Springfield	1492000	1516000	5190000	5226000				0
BW22	Oxford	1516000	1540000	5190000	5226000				0
BW23	Cust	1540000	1564000	5190000	5226000				0
BW24	Rangiora	1564000	1588000	5190000	5226000				0
BW25ptBW24	Amberley Beach	1580000	1604000	5190000	5226000				0
BX12ptBY12	Otumotu Point	1276000	1300000	5142000	5178000				-48000
BX13	Heretaniwha Point	1300000	1324000	5154000	5190000				12000
BX14	Gillespies Beach	1324000	1348000	5154000	5190000				0
BX15	Fox Glacier	1348000	1372000	5154000	5190000				0
BX16	Mount Elie De Beaumont 	1372000	1396000	5154000	5190000				0
BX17	Mount Sibbald	1396000	1420000	5154000	5190000				0
BX18	Lake Clearwater	1420000	1444000	5154000	5190000				0
BX19	Hakatere	1444000	1468000	5154000	5190000				0
BX20	Methven	1468000	1492000	5154000	5190000				0
BX21	Windwhistle	1492000	1516000	5154000	5190000				0
BX22	Darfield	1516000	1540000	5154000	5190000				0
BX23	Lincoln	1540000	1564000	5154000	5190000				0
BX24	Christchurch	1564000	1588000	5154000	5190000				0
BX25	Duvauchelle	1588000	1612000	5154000	5190000				0
BY10ptBZ10	Jackson Bay	1228000	1252000	5106000	5142000				-48000
BY11	Hannah's Clearing	1252000	1276000	5118000	5154000				12000
BY12	Haast	1276000	1300000	5118000	5154000				0
BY13	Lake Paringa	1300000	1324000	5118000	5154000				0
BY14	Mount Ward	1324000	1348000	5118000	5154000				0
BY15	Birch Hill	1348000	1372000	5118000	5154000				0
BY16	Mount Stevenson	1372000	1396000	5118000	5154000				0
BY17	Lake Tekapo	1396000	1420000	5118000	5154000				0
BY18	Ashwick Flat	1420000	1444000	5118000	5154000				0
BY19	Arundel	1444000	1468000	5118000	5154000				0
BY20	Hinds	1468000	1492000	5118000	5154000				0
BY21	Ashburton	1492000	1516000	5118000	5154000				0
BY22	Pendarves 	1516000	1540000	5118000	5154000				0
BY23	Fishermans Point 	1540000	1564000	5118000	5154000				0
BY24	Birdlings Flat	1564000	1588000	5118000	5154000				0
BY25	Akaroa	1588000	1612000	5118000	5154000				0
BZ09	Awarua Point	1204000	1228000	5082000	5118000				-36000
BZ10	Cascade Plateau 	1228000	1252000	5082000	5118000				0
BZ11	Mount Pollux	1252000	1276000	5082000	5118000				0
BZ12	Makarora	1276000	1300000	5082000	5118000				0
BZ13	Haast Pass / Tioripatea	1300000	1324000	5082000	5118000				0
BZ14	Mount Barth	1324000	1348000	5082000	5118000				0
BZ15	Twizel	1348000	1372000	5082000	5118000				0
BZ16	Dover Pass	1372000	1396000	5082000	5118000				0
BZ17	Burkes Pass	1396000	1420000	5082000	5118000				0
BZ18	Fairlie	1420000	1444000	5082000	5118000				0
BZ19	Timaru	1444000	1468000	5082000	5118000				0
BZ20	Clandeboye 	1468000	1492000	5082000	5118000				0
BZ21ptBZ20	Longbeach	1484000	1508000	5082000	5118000				0
CA07ptCB07	Poison Bay	1156000	1180000	5034000	5070000				-48000
CA08	Milford Sound / Piopiotahi	1180000	1204000	5046000	5082000				12000
CA09	 Alabaster Pass	1204000	1228000	5046000	5082000				0
CA10	Lake Williamson	1228000	1252000	5046000	5082000				0
CA11	Aspiring Flats	1252000	1276000	5046000	5082000				0
CA12	Minaret Bay	1276000	1300000	5046000	5082000				0
CA13	Lake Hawea	1300000	1324000	5046000	5082000				0
CA14	Lindis Pass	1324000	1348000	5046000	5082000				0
CA15	Omarama	1348000	1372000	5046000	5082000				0
CA16	Otematata	1372000	1396000	5046000	5082000				0
CA17	Cattle Creek	1396000	1420000	5046000	5082000				0
CA18	Waituna	1420000	1444000	5046000	5082000				0
CA19	Pareora	1444000	1468000	5046000	5082000				0
CB06	Mount Elder 	1132000	1156000	5010000	5046000				-36000
CB07	Bligh Sound	1156000	1180000	5010000	5046000				0
CB08	Homer Saddle	1180000	1204000	5010000	5046000				0
CB09	Hollyford	1204000	1228000	5010000	5046000				0
CB10	Glenorchy	1228000	1252000	5010000	5046000				0
CB11	Arrowtown	1252000	1276000	5010000	5046000				0
CB12	Cardrona	1276000	1300000	5010000	5046000				0
CB13	Tarras	1300000	1324000	5010000	5046000				0
CB14	Dunstan Peak	1324000	1348000	5010000	5046000				0
CB15	Idaburn	1348000	1372000	5010000	5046000				0
CB16	Naseby	1372000	1396000	5010000	5046000				0
CB17	Kurow	1396000	1420000	5010000	5046000				0
CB18	Ikawai	1420000	1444000	5010000	5046000				0
CB19	Waimate 	1444000	1468000	5010000	5046000				0
CC05	Colonial Head	1108000	1132000	4974000	5010000				-36000
CC06	Caswell Sound	1132000	1156000	4974000	5010000				0
CC07	North West Arm	1156000	1180000	4974000	5010000				0
CC08	Welcome Point	1180000	1204000	4974000	5010000				0
CC09	North Malvora Lake	1204000	1228000	4974000	5010000				0
CC10	Walter Peak	1228000	1252000	4974000	5010000				0
CC11	Queenstown	1252000	1276000	4974000	5010000				0
CC12	Bannockburn	1276000	1300000	4974000	5010000				0
CC13	Alexandra	1300000	1324000	4974000	5010000				0
CC14	Ophir	1324000	1348000	4974000	5010000				0
CC15	Patearoa 	1348000	1372000	4974000	5010000				0
CC16	Kyeburn	1372000	1396000	4974000	5010000				0
CC17	Morrisons	1396000	1420000	4974000	5010000				0
CC18	Oamaru	1420000	1444000	4974000	5010000				0
CC19ptCC18	Cape Wanbrow	1436000	1460000	4974000	5010000				0
CD04ptCD05	Lake Beattie	1092000	1116000	4938000	4974000				-36000
CD05	Dagg Sound 	1108000	1132000	4938000	4974000				0
CD06	Deep Cove	1132000	1156000	4938000	4974000				0
CD07	Manapouri	1156000	1180000	4938000	4974000				0
CD08	Te Anau	1180000	1204000	4938000	4974000				0
CD09	South Mavora Lake	1204000	1228000	4938000	4974000				0
CD10	Eyre Peak	1228000	1252000	4938000	4974000				0
CD11	Kingston	1252000	1276000	4938000	4974000				0
CD12	Piano Flat	1276000	1300000	4938000	4974000				0
CD13	Roxburgh	1300000	1324000	4938000	4974000				0
CD14	Lake Onslow	1324000	1348000	4938000	4974000				0
CD15	Paerau	1348000	1372000	4938000	4974000				0
CD16	Middlemarch	1372000	1396000	4938000	4974000				0
CD17	Waikouaiti	1396000	1420000	4938000	4974000				0
CD18	Palmerston	1420000	1444000	4938000	4974000				0
CE04	Anchor Island	1084000	1108000	4902000	4938000				-36000
CE05	Cooper Island	1108000	1132000	4902000	4938000				0
CE06	Lake Roe	1132000	1156000	4902000	4938000				0
CE07	Lake Monowai	1156000	1180000	4902000	4938000				0
CE08	Blackmount	1180000	1204000	4902000	4938000				0
CE09	Avondale	1204000	1228000	4902000	4938000				0
CE10	Lumsden	1228000	1252000	4902000	4938000				0
CE11	Riversdale	1252000	1276000	4902000	4938000				0
CE12	Black Umbrella	1276000	1300000	4902000	4938000				0
CE13	Tapanui	1300000	1324000	4902000	4938000				0
CE14	Lawrence	1324000	1348000	4902000	4938000				0
CE15	Waitahuna	1348000	1372000	4902000	4938000				0
CE16	Mosgiel	1372000	1396000	4902000	4938000				0
CE17	Dunedin	1396000	1420000	4902000	4938000				0
CE18	Taiaroa Head	1420000	1444000	4902000	4938000				0
CF04	West Cape	1084000	1108000	4866000	4902000				-36000
CF05	Long Sound	1108000	1132000	4866000	4902000				0
CF06	Lake Poteriteri	1132000	1156000	4866000	4902000				0
CF07	Mary Island	1156000	1180000	4866000	4902000				0
CF08	Tuatapere	1180000	1204000	4866000	4902000				0
CF09	Nightcaps	1204000	1228000	4866000	4902000				0
CF10	Winton	1228000	1252000	4866000	4902000				0
CF11	Hokonui Hills	1252000	1276000	4866000	4902000				0
CF12	Gore	1276000	1300000	4866000	4902000				0
CF13	Clinton	1300000	1324000	4866000	4902000				0
CF14	Clydevale	1324000	1348000	4866000	4902000				0
CF15	Milton	1348000	1372000	4866000	4902000				0
CF16	Taieri Mouth	1372000	1396000	4866000	4902000				0
CG05	Green Islets	1108000	1132000	4830000	4866000				-36000
CG06	Long Point	1132000	1156000	4830000	4866000				0
CG07ptCF07	Sand Hill Point 	1156000	1180000	4842000	4878000				12000
CG08	Orepuki	1180000	1204000	4830000	4866000				-12000
CG09	Riverton / Aparima	1204000	1228000	4830000	4866000				0
CG10	Invercargill	1228000	1252000	4830000	4866000				0
CG11	Dacre	1252000	1276000	4830000	4866000				0
CG12	Wyndham	1276000	1300000	4830000	4866000				0
CG13	Chaslands	1300000	1324000	4830000	4866000				0
CG14	Owaka	1324000	1348000	4830000	4866000				0
CG15	Nugget Point	1348000	1372000	4830000	4866000				0
CH05/CH06	Solander Island (Hautere)	1120000	1144000	4794000	4830000				-36000
CH08	Codfish Island (Whenuahou)	1180000	1204000	4794000	4830000				0
CH09	Mount Anglem / Hananui	1204000	1228000	4794000	4830000				0
CH10	Foveaux Strait	1228000	1252000	4794000	4830000				0
CH11	Ruapuke Island	1252000	1276000	4794000	4830000				0
CH12	Waipapa Point	1276000	1300000	4794000	4830000				0
CH13	Curio Bay	1300000	1324000	4794000	4830000				0
CJ07/CK07	Putauhina Island	1156000	1180000	4740000	4776000				-54000
CJ08	Doughboy Bay	1180000	1204000	4758000	4794000				18000
CJ09	Mount Allen	1204000	1228000	4758000	4794000				0
CJ10	Port Adventure	1228000	1252000	4758000	4794000				0
CK08	South Cape / Whiore	1180000	1204000	4722000	4758000				-36000
Chatham Islands									
CI01	Point Somes	3458000	3482000	5140000	5176000
CI02	Cape Young	3482000	3506000	5140000	5176000
CI03	Kaingaroa	3506000	3530000	5140000	5176000
CI04	Waitangi	3482000	3506000	5104000	5140000
CI05	Owenga	3506000	3530000	5104000	5140000
CI06	Pitt Island  (Rangiauria)	3506000	3530000	5068000	5104000