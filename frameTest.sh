#!/bin/bash

lsusb -d 0x05a9:0xf581 -v | while read line
do
    tmpWidth=`echo $line |grep wWidth`
    if [[ -n $tmpWidth ]] 
    then
       echo ""
       Width=`echo  $tmpWidth|cut -d" " -f2`
       echo -e  "$Width x \c"
    fi
    tmpHeight=`echo $line |grep wHeight`
    if [[ -n $tmpHeight ]] 
    then
       Height=`echo  $tmpHeight |cut -d" " -f2`
       echo -e  "$Height"
   fi
    
   Freq=`echo $line |grep dwFrameInterval\(`
   if [[ -n $Freq ]]
   then
       interval=`echo $Freq | cut -d" " -f3`
       echo -e "\t"`expr 10000000 / $interval` "\c" 
   fi
done
echo -e "\n"
