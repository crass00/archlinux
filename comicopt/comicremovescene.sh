#!/bin/bash

if [ -z "$1" ]; then
        echo usage: compressimg [directory or file]
        echo This tool will aremove known scene release files from all cbz files
        exit
fi

# apply the compressimg script to every image file within the given directory
# if the input is a single file, execute the script on it
ORIGSIZE=`du -sb $1 | awk '{ print $1}'`

# execute removal, this is a stupidly brute force way to do this
Thumbs.db
z.jpg
xsou2.jpg
xsou.jpg
xSOU.jpg
yyytiger.jpg
zzztiger.jpg
zzz-empire.jpg
zzz empire.jpg
zzz-nahga-empire.jpg
zzzgfaceburn.jpg
zzzgevilclown.jpg
zz C9.jpg
zzTLK.jpg
zGJtag.jpg
xxxTheManateeComplex.jpg
zzz-DarthScanner-tag1.jpg
zzz_stefcuk_tag.jpg
wall_star-wars1.jpg
zzz_TaruAd_Feb13HD.jpg
zzzTaruAD July.jpg
zzz_TaruAd_Jan13.jpg
zzz_TaruAd_Mar13.jpg
zzz_TaruAd_Jun13.jpg
zzz_TaruAd_Jul13.jpg
zzz_TaruAd_Aug13.jpg
zzz_TaruAd_Sep13.jpg
zzz_TaruAd_Oct13.jpg
zzzBigRedGoat-Novus.jpg
ZZ_Ath_Rosie&kingpin.jpg
xxMMRosie and kingpin.jpg
Z_MM_RK.jpg
Z_RD_R.jpg
ZKaty.jpg
zwind.jpg
zwater.jpg
zWater.jpg
ztatgirl.jpg
zzz-BhM3-DCP.png
zzz-BhM4b-DCP.png
zGreenGiant.jpg
zzz_whitewolf.jpg
zTheRedStar.jpg
zGGtag2.jpg
zGGtag9.jpg
zz_mm_emma.jpg
zzz_minutemen_drunk with passion.jpg
zzztag_the mother.jpg
z-Just One Man.jpg

# generate stats
NEWSIZE=`du -sb $1 | awk '{ print $1}'`
READABLESIZE=`du -sh $1 | awk '{ print $1}'`
((PERCENTCHANGE=100-(NEWSIZE*100/ORIGSIZE)))
echo Finished. $INPUTTYPE is now about $READABLESIZE total \($PERCENTCHANGE% drop\)