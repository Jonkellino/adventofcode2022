#import "Basic";
#import "String";


FileEntry :: struct {
	filename : string;
	size : int;
}

DirectoryEntry :: struct {
	name : string;
	parent : *DirectoryEntry;
	directories : [..] *DirectoryEntry;
	files : [..] FileEntry;
}


printCurrent :: (file : FileEntry, depth : int) {
	for 0..depth+1 {
		print("  ");
	}

	print("- % (file, size=%)\n", file.filename, file.size);
}


printCurrent :: (directory : DirectoryEntry, depth : int) {
	for 0..depth {
		print(" ");
	}

	print ("- % (dir)\n", directory.name); 
	
	for directory.directories {
		printCurrent(it, depth+1);
	}

	for directory.files {
		printCurrent(it, depth+1);
	}
}


dirSize :: (directory : DirectoryEntry) -> int {
	toReturn : int = 0;


	for directory.directories {
		toReturn += dirSize(it);
	}

	for directory.files {
		toReturn += it.size;
	}

	return toReturn;
}



badv7 :: () {
	commands : [..] string;
	allDirectories : [..] DirectoryEntry;
	array_reserve(*allDirectories, 1024);
	root : *DirectoryEntry =  array_add(*allDirectories);
	root.name = "/";
	root.parent = null;


	currentDir : *DirectoryEntry = root;
	currentDir.parent = null;

	if false {
		array_add(*commands, "$ cd /");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir a");
		array_add(*commands, "14848514 b.txt");
		array_add(*commands, "8504156 c.dat");
		array_add(*commands, "dir d");
		array_add(*commands, "$ cd a");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir e");
		array_add(*commands, "29116 f");
		array_add(*commands, "2557 g");
		array_add(*commands, "62596 h.lst");
		array_add(*commands, "$ cd e");
		array_add(*commands, "$ ls");
		array_add(*commands, "584 i");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd d");
		array_add(*commands, "$ ls");
		array_add(*commands, "4060174 j");
		array_add(*commands, "8033020 d.log");
		array_add(*commands, "5626152 d.ext");
		array_add(*commands, "7214296 k");
	}
	else {
		array_add(*commands, "$ cd /");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dcvzbqf");
		array_add(*commands, "23804 gsdpmrq.bsz");
		array_add(*commands, "24936 nfngbl.mcn");
		array_add(*commands, "178747 plw.frm");
		array_add(*commands, "dir qdtw");
		array_add(*commands, "dir qmfvph");
		array_add(*commands, "$ cd dcvzbqf");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir gfvl");
		array_add(*commands, "$ cd gfvl");
		array_add(*commands, "$ ls");
		array_add(*commands, "104564 dnbmm.bgc");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd qdtw");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir fsj");
		array_add(*commands, "dir jwfbvmds");
		array_add(*commands, "216592 pcg.wnr");
		array_add(*commands, "dir pwnhpm");
		array_add(*commands, "dir qbrpq");
		array_add(*commands, "dir wdc");
		array_add(*commands, "dir wpw");
		array_add(*commands, "dir zbfgmw");
		array_add(*commands, "$ cd fsj");
		array_add(*commands, "$ ls");
		array_add(*commands, "118575 ltbr.mdf");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd jwfbvmds");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir bbvg");
		array_add(*commands, "dir bds");
		array_add(*commands, "dir clvljpb");
		array_add(*commands, "44460 gwbbbgj.hbs");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "dir jpvnzhf");
		array_add(*commands, "61025 trdm.qps");
		array_add(*commands, "$ cd bbvg");
		array_add(*commands, "$ ls");
		array_add(*commands, "219031 zbzgvsb");
		array_add(*commands, "94339 zhfmsb.lvv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd bds");
		array_add(*commands, "$ ls");
		array_add(*commands, "133483 hzqlb");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd clvljpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "103511 bmm.dwc");
		array_add(*commands, "121211 clvljpb.fzn");
		array_add(*commands, "158145 dnbmm.fmm");
		array_add(*commands, "74998 pcg.wnr");
		array_add(*commands, "dir psvtz");
		array_add(*commands, "$ cd psvtz");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir gdj");
		array_add(*commands, "167697 pcgjgc.wgl");
		array_add(*commands, "2613 qchfgv");
		array_add(*commands, "91712 qsdzj.jng");
		array_add(*commands, "$ cd gdj");
		array_add(*commands, "$ ls");
		array_add(*commands, "133897 qchfgv");
		array_add(*commands, "dir vmcshh");
		array_add(*commands, "93805 zgmvb.jfg");
		array_add(*commands, "$ cd vmcshh");
		array_add(*commands, "$ ls");
		array_add(*commands, "200517 zgwwvb.pcs");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dnbmm");
		array_add(*commands, "$ cd dnbmm");
		array_add(*commands, "$ ls");
		array_add(*commands, "223576 msrbz.wjs");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd jpvnzhf");
		array_add(*commands, "$ ls");
		array_add(*commands, "20581 nfngbl.mcn");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd pwnhpm");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir clvljpb");
		array_add(*commands, "33727 hzqlb.zpp");
		array_add(*commands, "39037 lfjjf.pjt");
		array_add(*commands, "163662 mbwfhq.cjj");
		array_add(*commands, "236292 nfngbl.mcn");
		array_add(*commands, "189576 zvbgnbvf");
		array_add(*commands, "$ cd clvljpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir clvljpb");
		array_add(*commands, "212906 clvljpb.pls");
		array_add(*commands, "214564 dnm");
		array_add(*commands, "dir fvgbsft");
		array_add(*commands, "230034 hzqlb.jvz");
		array_add(*commands, "48101 plw.frm");
		array_add(*commands, "237902 qchfgv");
		array_add(*commands, "$ cd clvljpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "189238 cvgp");
		array_add(*commands, "dir gjg");
		array_add(*commands, "$ cd gjg");
		array_add(*commands, "$ ls");
		array_add(*commands, "167082 ttltfz.bvz");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "203202 nfngbl.mcn");
		array_add(*commands, "212148 qhnnr.dhs");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd fvgbsft");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir fzhwsjf");
		array_add(*commands, "18477 nps");
		array_add(*commands, "dir vlplrn");
		array_add(*commands, "dir vnbg");
		array_add(*commands, "dir vpc");
		array_add(*commands, "$ cd fzhwsjf");
		array_add(*commands, "$ ls");
		array_add(*commands, "91220 clvljpb.png");
		array_add(*commands, "235721 pcg.wnr");
		array_add(*commands, "61559 qchfgv");
		array_add(*commands, "70762 vpr.nlc");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd vlplrn");
		array_add(*commands, "$ ls");
		array_add(*commands, "260247 qrtnfmln.tpv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd vnbg");
		array_add(*commands, "$ ls");
		array_add(*commands, "43069 ttltfz.mzr");
		array_add(*commands, "dir wfb");
		array_add(*commands, "58219 zgwwvb.pcs");
		array_add(*commands, "272132 zhq.mrw");
		array_add(*commands, "$ cd wfb");
		array_add(*commands, "$ ls");
		array_add(*commands, "107068 clvljpb.mtp");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd vpc");
		array_add(*commands, "$ ls");
		array_add(*commands, "185602 dnbmm.hfm");
		array_add(*commands, "100399 hzqlb.vtn");
		array_add(*commands, "259486 pcg.wnr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd qbrpq");
		array_add(*commands, "$ ls");
		array_add(*commands, "138169 cntvzqfm.hgp");
		array_add(*commands, "216598 dnbmm.lhs");
		array_add(*commands, "116696 nfngbl.mcn");
		array_add(*commands, "35315 phf.rvn");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd wdc");
		array_add(*commands, "$ ls");
		array_add(*commands, "270492 ghdzdq.ghg");
		array_add(*commands, "137119 lnt.nsd");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd wpw");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dnbmm");
		array_add(*commands, "156266 jgfv.cpp");
		array_add(*commands, "156947 lvlqcrrs.djl");
		array_add(*commands, "dir lvznwbpg");
		array_add(*commands, "12199 nfngbl.mcn");
		array_add(*commands, "54105 nlsp");
		array_add(*commands, "86737 zhq.wmz");
		array_add(*commands, "$ cd dnbmm");
		array_add(*commands, "$ ls");
		array_add(*commands, "138125 lth.hcq");
		array_add(*commands, "80844 nhh.gzc");
		array_add(*commands, "149596 ttltfz.ntn");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd lvznwbpg");
		array_add(*commands, "$ ls");
		array_add(*commands, "99156 ldtst.dcr");
		array_add(*commands, "217350 pcg.wnr");
		array_add(*commands, "247238 plw.frm");
		array_add(*commands, "dir qbqpsccr");
		array_add(*commands, "dir wnms");
		array_add(*commands, "dir zhq");
		array_add(*commands, "165426 zmhnzdmb.jnc");
		array_add(*commands, "$ cd qbqpsccr");
		array_add(*commands, "$ ls");
		array_add(*commands, "272199 pcg.wnr");
		array_add(*commands, "219600 wpjqjm.qwr");
		array_add(*commands, "257473 zhq.zmq");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd wnms");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir ttltfz");
		array_add(*commands, "$ cd ttltfz");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir btm");
		array_add(*commands, "$ cd btm");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir ttltfz");
		array_add(*commands, "$ cd ttltfz");
		array_add(*commands, "$ ls");
		array_add(*commands, "204980 hzqlb.hhm");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "154868 srdfz");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zbfgmw");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir fcjwpgz");
		array_add(*commands, "dir ttltfz");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd fcjwpgz");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir jltvg");
		array_add(*commands, "9958 qchfgv");
		array_add(*commands, "dir wwqrb");
		array_add(*commands, "$ cd jltvg");
		array_add(*commands, "$ ls");
		array_add(*commands, "6370 bssvrjdq.mnr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd wwqrb");
		array_add(*commands, "$ ls");
		array_add(*commands, "157805 npdl");
		array_add(*commands, "237057 qchfgv");
		array_add(*commands, "dir twrp");
		array_add(*commands, "259572 vptsgw");
		array_add(*commands, "176388 zgwwvb.pcs");
		array_add(*commands, "91956 zhq");
		array_add(*commands, "$ cd twrp");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir sfvntjwf");
		array_add(*commands, "$ cd sfvntjwf");
		array_add(*commands, "$ ls");
		array_add(*commands, "68331 hdwfg.jrl");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ttltfz");
		array_add(*commands, "$ ls");
		array_add(*commands, "41183 plw.frm");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "32950 dmzbmrdr.gtq");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "195502 dmgmwbf");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd qmfvph");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir cwfh");
		array_add(*commands, "dir dnbmm");
		array_add(*commands, "dir mmmdpth");
		array_add(*commands, "4841 pcg.wnr");
		array_add(*commands, "dir prnpbn");
		array_add(*commands, "111478 sgmg.hbs");
		array_add(*commands, "dir ttltfz");
		array_add(*commands, "178296 ttltfz.mjc");
		array_add(*commands, "dir zcvfqn");
		array_add(*commands, "dir zhq");
		array_add(*commands, "32446 zhq.pjm");
		array_add(*commands, "dir zpb");
		array_add(*commands, "$ cd cwfh");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dswtm");
		array_add(*commands, "dir mwzjf");
		array_add(*commands, "$ cd dswtm");
		array_add(*commands, "$ ls");
		array_add(*commands, "70390 fmq.mrp");
		array_add(*commands, "108185 qjlfnlp");
		array_add(*commands, "189923 zhq.njc");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd mwzjf");
		array_add(*commands, "$ ls");
		array_add(*commands, "122536 glmpd.mdl");
		array_add(*commands, "108226 nfngbl.mcn");
		array_add(*commands, "dir qbvffr");
		array_add(*commands, "33192 ttltfz");
		array_add(*commands, "195824 zgwwvb.pcs");
		array_add(*commands, "$ cd qbvffr");
		array_add(*commands, "$ ls");
		array_add(*commands, "147595 pcg.wnr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd dnbmm");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir cbdl");
		array_add(*commands, "dir fhqjzf");
		array_add(*commands, "56752 gsgrnf.mlt");
		array_add(*commands, "dir ndp");
		array_add(*commands, "67967 nfngbl.mcn");
		array_add(*commands, "dir swgwdv");
		array_add(*commands, "$ cd cbdl");
		array_add(*commands, "$ ls");
		array_add(*commands, "263964 dnrbtr.lbh");
		array_add(*commands, "66120 qchfgv");
		array_add(*commands, "dir qwvd");
		array_add(*commands, "$ cd qwvd");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dnbmm");
		array_add(*commands, "143315 mhlswpcd.lpt");
		array_add(*commands, "199969 ncdrrp.ljf");
		array_add(*commands, "$ cd dnbmm");
		array_add(*commands, "$ ls");
		array_add(*commands, "122474 pcg.wnr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd fhqjzf");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir fnnbrlc");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "254128 pcg.wnr");
		array_add(*commands, "168008 plw.frm");
		array_add(*commands, "dir vwgvd");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd fnnbrlc");
		array_add(*commands, "$ ls");
		array_add(*commands, "156413 dnbmm.ngb");
		array_add(*commands, "30790 zbfnjnnz.csg");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "267451 cgzrdpr");
		array_add(*commands, "77460 nfngbl.mcn");
		array_add(*commands, "205978 plw.frm");
		array_add(*commands, "66224 sjw.ctb");
		array_add(*commands, "212873 zgwwvb.pcs");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd vwgvd");
		array_add(*commands, "$ ls");
		array_add(*commands, "161177 phdbz.tmc");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir hchlgv");
		array_add(*commands, "218946 rfngrlz.zzr");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd hchlgv");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dnbmm");
		array_add(*commands, "270943 hcpnwbd");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "13433 wdljw.cgn");
		array_add(*commands, "$ cd dnbmm");
		array_add(*commands, "$ ls");
		array_add(*commands, "150415 pcg.wnr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "44475 qcvwtfg.wrl");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "155076 ggndpjzp.rpz");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ndp");
		array_add(*commands, "$ ls");
		array_add(*commands, "112146 nfw.htp");
		array_add(*commands, "207815 vqwtw.qff");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd swgwdv");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dmqn");
		array_add(*commands, "dir fzgdjp");
		array_add(*commands, "205897 hzqlb.vtm");
		array_add(*commands, "226944 nfngbl.mcn");
		array_add(*commands, "259443 nrfpz.vmn");
		array_add(*commands, "136591 zgwwvb.pcs");
		array_add(*commands, "$ cd dmqn");
		array_add(*commands, "$ ls");
		array_add(*commands, "258693 gdplrzt.wzf");
		array_add(*commands, "141489 hzqlb");
		array_add(*commands, "225488 pghz.brw");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd fzgdjp");
		array_add(*commands, "$ ls");
		array_add(*commands, "206026 msthjppp");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd mmmdpth");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir clvljpb");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "263747 pcg.wnr");
		array_add(*commands, "$ cd clvljpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "168342 qhgndmj");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir lqvgqhw");
		array_add(*commands, "$ cd lqvgqhw");
		array_add(*commands, "$ ls");
		array_add(*commands, "218324 swnjhbj.cqt");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd prnpbn");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dndnhn");
		array_add(*commands, "176959 gzhtvt");
		array_add(*commands, "85765 hzqlb.clg");
		array_add(*commands, "120691 nfngbl.mcn");
		array_add(*commands, "245942 qchfgv");
		array_add(*commands, "43951 zgwwvb.pcs");
		array_add(*commands, "$ cd dndnhn");
		array_add(*commands, "$ ls");
		array_add(*commands, "235760 dhvvnqpt");
		array_add(*commands, "dir hvg");
		array_add(*commands, "dir jqvmzg");
		array_add(*commands, "dir mhz");
		array_add(*commands, "$ cd hvg");
		array_add(*commands, "$ ls");
		array_add(*commands, "167698 zqbj");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd jqvmzg");
		array_add(*commands, "$ ls");
		array_add(*commands, "218904 wppv.mqz");
		array_add(*commands, "dir zlp");
		array_add(*commands, "$ cd zlp");
		array_add(*commands, "$ ls");
		array_add(*commands, "8030 wvj.gld");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd mhz");
		array_add(*commands, "$ ls");
		array_add(*commands, "37541 tdfvwqlj");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ttltfz");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dnbmm");
		array_add(*commands, "dir ttltfz");
		array_add(*commands, "dir wbvcf");
		array_add(*commands, "dir wsqvpp");
		array_add(*commands, "148645 zgwwvb.pcs");
		array_add(*commands, "$ cd dnbmm");
		array_add(*commands, "$ ls");
		array_add(*commands, "116852 mjzgll.bcp");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ttltfz");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "dir msczpj");
		array_add(*commands, "dir mvbhn");
		array_add(*commands, "38087 nfngbl.mcn");
		array_add(*commands, "dir ttjbnj");
		array_add(*commands, "dir ttltfz");
		array_add(*commands, "dir vjj");
		array_add(*commands, "dir zhq");
		array_add(*commands, "dir zqgcbnrt");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir jshj");
		array_add(*commands, "dir jtjv");
		array_add(*commands, "dir mgfwthq");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd jshj");
		array_add(*commands, "$ ls");
		array_add(*commands, "235605 cldpdjp.cbc");
		array_add(*commands, "dir clvljpb");
		array_add(*commands, "dir dzcnm");
		array_add(*commands, "dir hmvw");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "dir ltpqhg");
		array_add(*commands, "12951 qchfgv");
		array_add(*commands, "dir wzvjft");
		array_add(*commands, "$ cd clvljpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "65802 lnpjlj");
		array_add(*commands, "25402 qrtrvmwl.fms");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd dzcnm");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir cpnwcv");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "dir mjclcntf");
		array_add(*commands, "dir qnljb");
		array_add(*commands, "237105 rlpvq.fbf");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd cpnwcv");
		array_add(*commands, "$ ls");
		array_add(*commands, "27600 qbgclqc.tdd");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "168016 zhq");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd mjclcntf");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir clvljpb");
		array_add(*commands, "dir qpjtr");
		array_add(*commands, "43145 zgwwvb.pcs");
		array_add(*commands, "$ cd clvljpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "15025 plw.frm");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd qpjtr");
		array_add(*commands, "$ ls");
		array_add(*commands, "54909 zhq");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd qnljb");
		array_add(*commands, "$ ls");
		array_add(*commands, "49366 clvljpb.vtg");
		array_add(*commands, "52193 fnd.tfr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "105765 dfnqhggg.cfj");
		array_add(*commands, "dir hfzgs");
		array_add(*commands, "135556 spff");
		array_add(*commands, "129957 vzgjrc.cbs");
		array_add(*commands, "$ cd hfzgs");
		array_add(*commands, "$ ls");
		array_add(*commands, "52456 ttltfz.fdq");
		array_add(*commands, "31345 wcmf.hsd");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hmvw");
		array_add(*commands, "$ ls");
		array_add(*commands, "77175 flhlwq.rqc");
		array_add(*commands, "dir gmvqz");
		array_add(*commands, "252279 gnmvm");
		array_add(*commands, "dir lmbqfhb");
		array_add(*commands, "$ cd gmvqz");
		array_add(*commands, "$ ls");
		array_add(*commands, "129431 dnbmm.lwl");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd lmbqfhb");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir wjql");
		array_add(*commands, "$ cd wjql");
		array_add(*commands, "$ ls");
		array_add(*commands, "48687 cgtbqqq.zzs");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "105333 mqsgqph");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "116802 hbtlhjn.dvs");
		array_add(*commands, "8842 pcg.wnr");
		array_add(*commands, "211096 plw.frm");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ltpqhg");
		array_add(*commands, "$ ls");
		array_add(*commands, "245821 hchndjgj.vht");
		array_add(*commands, "229181 rcfmhrqm.ftc");
		array_add(*commands, "214977 vgdsjg.jpd");
		array_add(*commands, "124547 zgwwvb.pcs");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd wzvjft");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir fdntdf");
		array_add(*commands, "174465 pcg.wnr");
		array_add(*commands, "80888 qchfgv");
		array_add(*commands, "82987 rqbzbrlv");
		array_add(*commands, "$ cd fdntdf");
		array_add(*commands, "$ ls");
		array_add(*commands, "79808 cmlt.cvd");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd jtjv");
		array_add(*commands, "$ ls");
		array_add(*commands, "262350 zww.fbl");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd mgfwthq");
		array_add(*commands, "$ ls");
		array_add(*commands, "32365 gjq.rpz");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir clvljpb");
		array_add(*commands, "dir dfdbzzz");
		array_add(*commands, "dir lqhfbp");
		array_add(*commands, "152633 nfngbl.mcn");
		array_add(*commands, "$ cd clvljpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "72966 scs");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd dfdbzzz");
		array_add(*commands, "$ ls");
		array_add(*commands, "206453 cgrdn.dcw");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd lqhfbp");
		array_add(*commands, "$ ls");
		array_add(*commands, "141515 nlvswpcm.fvm");
		array_add(*commands, "68018 zgwwvb.pcs");
		array_add(*commands, "215903 zlmdlbdp");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd msczpj");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir clvljpb");
		array_add(*commands, "dir smhsm");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd clvljpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "148686 fmd");
		array_add(*commands, "244875 mhnlcz");
		array_add(*commands, "271194 qchfgv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd smhsm");
		array_add(*commands, "$ ls");
		array_add(*commands, "219572 ptzhr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "46118 qzmbgv.npf");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd mvbhn");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dnbmm");
		array_add(*commands, "17522 dnbmm.hqp");
		array_add(*commands, "dir hws");
		array_add(*commands, "dir hwtsjfbb");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "dir mghrhcsj");
		array_add(*commands, "dir mprvjd");
		array_add(*commands, "180207 qchfgv");
		array_add(*commands, "dir qzrshw");
		array_add(*commands, "130436 rdgndm.clf");
		array_add(*commands, "128601 tbdz.bgs");
		array_add(*commands, "dir vpp");
		array_add(*commands, "$ cd dnbmm");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir jqv");
		array_add(*commands, "dir lcclc");
		array_add(*commands, "25762 rfwdnjzz.stw");
		array_add(*commands, "172833 rpf.vqn");
		array_add(*commands, "18217 zgwwvb.pcs");
		array_add(*commands, "$ cd jqv");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir cpbr");
		array_add(*commands, "$ cd cpbr");
		array_add(*commands, "$ ls");
		array_add(*commands, "59543 mclpq.bpr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd lcclc");
		array_add(*commands, "$ ls");
		array_add(*commands, "139444 jpwdgvb.wgz");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hws");
		array_add(*commands, "$ ls");
		array_add(*commands, "42332 clvljpb");
		array_add(*commands, "240502 clvljpb.bbn");
		array_add(*commands, "dir jdz");
		array_add(*commands, "37624 pcg.wnr");
		array_add(*commands, "dir pjd");
		array_add(*commands, "169282 plw.frm");
		array_add(*commands, "100105 tmpll.gwm");
		array_add(*commands, "$ cd jdz");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dnbmm");
		array_add(*commands, "$ cd dnbmm");
		array_add(*commands, "$ ls");
		array_add(*commands, "191941 cvhvq.rzr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd pjd");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir bnwjc");
		array_add(*commands, "dir pgvzhl");
		array_add(*commands, "33261 rvpw.jlj");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd bnwjc");
		array_add(*commands, "$ ls");
		array_add(*commands, "159772 lqcbv.mvh");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd pgvzhl");
		array_add(*commands, "$ ls");
		array_add(*commands, "159506 nfngbl.mcn");
		array_add(*commands, "114670 qchfgv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "162563 mtcd");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hwtsjfbb");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir clvljpb");
		array_add(*commands, "dir fqclffr");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "243079 rqbh.ltt");
		array_add(*commands, "dir wtz");
		array_add(*commands, "$ cd clvljpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "42146 bbb");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd fqclffr");
		array_add(*commands, "$ ls");
		array_add(*commands, "160031 zgwwvb.pcs");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "70936 pcg.wnr");
		array_add(*commands, "230600 pfnfjqc.bsp");
		array_add(*commands, "154358 plw.frm");
		array_add(*commands, "106007 qtztf");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd wtz");
		array_add(*commands, "$ ls");
		array_add(*commands, "265666 nfngbl.mcn");
		array_add(*commands, "dir wjsrb");
		array_add(*commands, "dir zhh");
		array_add(*commands, "$ cd wjsrb");
		array_add(*commands, "$ ls");
		array_add(*commands, "76239 wqzg");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhh");
		array_add(*commands, "$ ls");
		array_add(*commands, "11571 wptzslq.gwr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "199430 gwgrtw.dzv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd mghrhcsj");
		array_add(*commands, "$ ls");
		array_add(*commands, "49307 bvtmfj.dbh");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd mprvjd");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "225705 nfngbl.mcn");
		array_add(*commands, "204180 pcg.wnr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd qzrshw");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir ddgs");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "dir lmtfhtd");
		array_add(*commands, "157122 qchfgv");
		array_add(*commands, "dir sjq");
		array_add(*commands, "dir tdjh");
		array_add(*commands, "$ cd ddgs");
		array_add(*commands, "$ ls");
		array_add(*commands, "174192 dvb");
		array_add(*commands, "100076 rgdbsfbm.wrd");
		array_add(*commands, "18400 zgwwvb.pcs");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "165950 plw.frm");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd lmtfhtd");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir clvljpb");
		array_add(*commands, "137957 dnbmm.vjs");
		array_add(*commands, "159982 lgll.lnp");
		array_add(*commands, "25796 plw.frm");
		array_add(*commands, "201565 znj.ljv");
		array_add(*commands, "$ cd clvljpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "248187 fdvbtnvh.gsc");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd sjq");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dnbmm");
		array_add(*commands, "167394 dzmj");
		array_add(*commands, "143508 plw.frm");
		array_add(*commands, "dir sllcrmp");
		array_add(*commands, "dir ttltfz");
		array_add(*commands, "140530 vdsvw.jhv");
		array_add(*commands, "$ cd dnbmm");
		array_add(*commands, "$ ls");
		array_add(*commands, "224433 qchfgv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd sllcrmp");
		array_add(*commands, "$ ls");
		array_add(*commands, "47580 hfvh.ncs");
		array_add(*commands, "dir hgtm");
		array_add(*commands, "237683 nzjzd.zcw");
		array_add(*commands, "$ cd hgtm");
		array_add(*commands, "$ ls");
		array_add(*commands, "194211 nsddmsvq");
		array_add(*commands, "8615 zgwwvb.pcs");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ttltfz");
		array_add(*commands, "$ ls");
		array_add(*commands, "249866 gbqptvn.pvm");
		array_add(*commands, "205314 jjb.qbl");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd tdjh");
		array_add(*commands, "$ ls");
		array_add(*commands, "266400 clvljpb.tmv");
		array_add(*commands, "130599 qdnmmh.trp");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd vpp");
		array_add(*commands, "$ ls");
		array_add(*commands, "214035 nfngbl.mcn");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ttjbnj");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir crlhpd");
		array_add(*commands, "47864 dnbmm");
		array_add(*commands, "dir ttltfz");
		array_add(*commands, "$ cd crlhpd");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir vmgdpf");
		array_add(*commands, "$ cd vmgdpf");
		array_add(*commands, "$ ls");
		array_add(*commands, "169762 plw.frm");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ttltfz");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir gdf");
		array_add(*commands, "dir hdh");
		array_add(*commands, "dir jbfwr");
		array_add(*commands, "$ cd gdf");
		array_add(*commands, "$ ls");
		array_add(*commands, "68861 plw.frm");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hdh");
		array_add(*commands, "$ ls");
		array_add(*commands, "166403 dnbmm");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd jbfwr");
		array_add(*commands, "$ ls");
		array_add(*commands, "100770 pcg.wnr");
		array_add(*commands, "178623 wnswp");
		array_add(*commands, "41069 zmrrmdv.bzr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ttltfz");
		array_add(*commands, "$ ls");
		array_add(*commands, "234321 dnbmm");
		array_add(*commands, "131214 dtpprnwf.hfr");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd vjj");
		array_add(*commands, "$ ls");
		array_add(*commands, "112879 pgzrb");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "147979 clvljpb");
		array_add(*commands, "dir dvm");
		array_add(*commands, "136916 pcg.wnr");
		array_add(*commands, "205323 rwnrfrph");
		array_add(*commands, "$ cd dvm");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir cpsqlvbl");
		array_add(*commands, "dir ffw");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "95516 pcg.wnr");
		array_add(*commands, "60101 tcswqq.zjf");
		array_add(*commands, "$ cd cpsqlvbl");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir hzqlb");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "169253 nscj");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ffw");
		array_add(*commands, "$ ls");
		array_add(*commands, "161525 bpg.rsw");
		array_add(*commands, "50629 dnbmm.qff");
		array_add(*commands, "126458 pcg.wnr");
		array_add(*commands, "18268 trvcmp");
		array_add(*commands, "dir vwnlb");
		array_add(*commands, "171750 zgwwvb.pcs");
		array_add(*commands, "dir zhq");
		array_add(*commands, "$ cd vwnlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "218994 ccjz.qrm");
		array_add(*commands, "268399 srwv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "150894 ztcw.dlc");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd hzqlb");
		array_add(*commands, "$ ls");
		array_add(*commands, "45224 fnb.vgg");
		array_add(*commands, "53728 nfngbl.mcn");
		array_add(*commands, "230460 zhq.bsw");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zqgcbnrt");
		array_add(*commands, "$ ls");
		array_add(*commands, "91447 bdjbn");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd wbvcf");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dzh");
		array_add(*commands, "$ cd dzh");
		array_add(*commands, "$ ls");
		array_add(*commands, "250311 qrvn.bft");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd wsqvpp");
		array_add(*commands, "$ ls");
		array_add(*commands, "96530 jwhtlzcm.gmq");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zcvfqn");
		array_add(*commands, "$ ls");
		array_add(*commands, "264037 hzqlb.jfp");
		array_add(*commands, "dir nlnl");
		array_add(*commands, "96691 qchfgv");
		array_add(*commands, "126674 zhq.ndc");
		array_add(*commands, "$ cd nlnl");
		array_add(*commands, "$ ls");
		array_add(*commands, "248407 nfngbl.mcn");
		array_add(*commands, "188078 pzwmrfht.dfs");
		array_add(*commands, "268160 qchfgv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zhq");
		array_add(*commands, "$ ls");
		array_add(*commands, "91941 bgc.grv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd zpb");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir dnbmm");
		array_add(*commands, "dir fsw");
		array_add(*commands, "$ cd dnbmm");
		array_add(*commands, "$ ls");
		array_add(*commands, "260358 lcpg");
		array_add(*commands, "dir lfm");
		array_add(*commands, "$ cd lfm");
		array_add(*commands, "$ ls");
		array_add(*commands, "227028 qchfgv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd fsw");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir fffpsrvp");
		array_add(*commands, "153630 pcg.wnr");
		array_add(*commands, "dir qtwvgmtl");
		array_add(*commands, "2971 qzl.pcn");
		array_add(*commands, "17259 zrpl.hcc");
		array_add(*commands, "$ cd fffpsrvp");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir gflwnfc");
		array_add(*commands, "176446 lwz.pgq");
		array_add(*commands, "$ cd gflwnfc");
		array_add(*commands, "$ ls");
		array_add(*commands, "132820 cjznqwf.hhq");
		array_add(*commands, "224464 nfngbl.mcn");
		array_add(*commands, "104803 qchfgv");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd ..");
		array_add(*commands, "$ cd qtwvgmtl");
		array_add(*commands, "$ ls");
		array_add(*commands, "dir rcssfd");
		array_add(*commands, "$ cd rcssfd");
		array_add(*commands, "$ ls");
		array_add(*commands, "56266 htr.chf");
		array_add(*commands, "128262 qcfsth.mlt");
		array_add(*commands, "120527 sqrb");
	}
	

	for commands {
		print("Command: %\n", it);
		{
			found, left, right := split_from_left(it, "$ cd ");
			if found {
				if right == "/" {
					currentDir = root;
				} else if right == ".." {

					print("cd .. from % to %\n", currentDir.name, currentDir.parent.name);
					currentDir = currentDir.parent;
				} else {
					print("cd %\n", right);
					print("current old dir: %\n", currentDir);

					printCurrent(currentDir, 0);
					for currentDir.directories {
						if right == it.name {
							currentDir = it;
							break;
						}
					}

					print("current new dir: %\n", currentDir);
					if !currentDir {

						print ("Right: '%'", right);
						exit(1);
					}

				}
				continue;
			}
		}
		{
			if it == "$ ls" {
				printCurrent(currentDir, 0);
				continue;
			}
		}
		{
			found, left, right := split_from_left(it, "dir ");

			if found {
				dir := array_add(*allDirectories);
				array_add(*currentDir.directories, dir);
				dir.name = right;
				dir.parent = currentDir;
				
				print("Creating % with parent %\n", dir.name, dir.parent.name); 
				continue;
			}
		}
		{
			found, left, right := split_from_left(it, #char " ");
			if found {

				file : FileEntry;
				file.filename = right;
				file.size = string_to_int(left);
				array_add(*currentDir.files, file);
				continue;
			}
		}
		{
			log_error("Shouldn't get here");
			exit(1);
			break;
		}
	}
	
	if (false) // task 1
	{
		findDirsWithAtMost100000 :: (currentDir : DirectoryEntry, output : *[..] DirectoryEntry) {
			
			if dirSize(currentDir) <= 100000 {
				array_add(output, currentDir);
			}

			for currentDir.directories {
				findDirsWithAtMost100000(it, output);
			}
		}

		task1Dirs : [..] DirectoryEntry;

		findDirsWithAtMost100000(root, *task1Dirs);

		cumulative : int = 0;

		for task1Dirs {
			cumulative += dirSize(it);
		}
		print("Task 1: %\n", cumulative);
	}
	else {
		closestDirToRequired :: (currentDir : *DirectoryEntry, closest : **DirectoryEntry, closestSize : int, requiredMem : int) {
			currentSize := dirSize(currentDir);

			if currentSize >= requiredMem && currentSize < closestSize { 
				<< closest = currentDir;
				closestSize = currentSize;
			}

	                                                                                               
			for currentDir.directories {
				closestDirToRequired(it, closest, closestSize, requiredMem); 
			}
		}





		totalMem := 70000000;
		requiredMem := 30000000;
		currentUsed := dirSize(root);
		neededToDelete := requiredMem - (totalMem - currentUsed);
		

		closest : *DirectoryEntry = root; 
		closestDirToRequired(root, *closest, 9999999999, neededToDelete); 

		print("Required: %\n", neededToDelete);
		print("Task 2: % dir name: %\n", dirSize(closest), closest.name);
		


	}
}







