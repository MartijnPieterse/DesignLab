xst -intstyle ise -ifn "D:/Dropbox/GadgetFactory_Engineering/DesignLab_Examples/libraries/Audio_Wing/circuit/500K/Papilio_One_500K.xst" -ofn "D:/Dropbox/GadgetFactory_Engineering/DesignLab_Examples/libraries/Audio_Wing/circuit/500K/Papilio_One_500K.syr" 
ngdbuild -intstyle ise -dd _ngo -sd ../../../ZPUino_2 -aul -nt timestamp -uc D:/Dropbox/GadgetFactory_Engineering/DesignLab/build/windows/work/examples/00.Papilio_Schematic_Library/Libraries/ZPUino_1/PSL_Papilio_One_500K/papilio_one.ucf -p xc3s500e-vq100-5 Papilio_One_500K.ngc Papilio_One_500K.ngd  
map -intstyle ise -p xc3s500e-vq100-5 -cm area -ir off -pr off -c 100 -o Papilio_One_500K_map.ncd Papilio_One_500K.ngd Papilio_One_500K.pcf 
par -w -intstyle ise -ol high -t 1 Papilio_One_500K_map.ncd Papilio_One_500K.ncd Papilio_One_500K.pcf 
trce -intstyle ise -v 3 -s 5 -n 3 -fastpaths -xml Papilio_One_500K.twx Papilio_One_500K.ncd -o Papilio_One_500K.twr Papilio_One_500K.pcf 
bitgen -intstyle ise -f Papilio_One_500K.ut Papilio_One_500K.ncd 
