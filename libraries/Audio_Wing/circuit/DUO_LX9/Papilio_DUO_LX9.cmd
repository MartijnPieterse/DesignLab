xst -intstyle ise -ifn "D:/Dropbox/GadgetFactory_Engineering/DesignLab_Examples/libraries/Audio_Wing/circuit/DUO_LX9/Papilio_DUO_LX9.xst" -ofn "D:/Dropbox/GadgetFactory_Engineering/DesignLab_Examples/libraries/Audio_Wing/circuit/DUO_LX9/Papilio_DUO_LX9.syr" 
ngdbuild -intstyle ise -dd _ngo -sd ../../../ZPUino_2 -aul -nt timestamp -uc D:/Dropbox/GadgetFactory_Engineering/DesignLab/build/windows/work/examples/00.Papilio_Schematic_Library/Libraries/ZPUino_1/PSL_Papilio_DUO_LX9/papilio_duo.ucf -p xc6slx9-tqg144-2 Papilio_DUO_LX9.ngc Papilio_DUO_LX9.ngd  
map -intstyle ise -p xc6slx9-tqg144-2 -w -logic_opt off -ol high -t 1 -xt 0 -register_duplication off -r 4 -global_opt off -mt off -ir off -pr off -lc off -power off -o Papilio_DUO_LX9_map.ncd Papilio_DUO_LX9.ngd Papilio_DUO_LX9.pcf 
par -w -intstyle ise -ol high -mt off Papilio_DUO_LX9_map.ncd Papilio_DUO_LX9.ncd Papilio_DUO_LX9.pcf 
trce -intstyle ise -v 3 -s 2 -n 3 -fastpaths -xml Papilio_DUO_LX9.twx Papilio_DUO_LX9.ncd -o Papilio_DUO_LX9.twr Papilio_DUO_LX9.pcf 
bitgen -intstyle ise -f Papilio_DUO_LX9.ut Papilio_DUO_LX9.ncd 
