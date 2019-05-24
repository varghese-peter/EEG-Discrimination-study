[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_loadset('filename','S02_MMN_ica_clean.set','filepath','/Users/varghesepeter/Downloads/S02/');
[ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
EEG  = pop_artmwppth( EEG , 'Channel',  1:64, 'Flag',  1, 'Threshold',  100, 'Twindow', [ -100 598], 'Windowsize',  200, 'Windowstep',  100 ); % GUI: 24-May-2019 14:11:53
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 

t1=[ALLEEG(2).epoch.eventbini];
gt1=t1(find(~[ALLEEG(2).epoch.eventflag]));
S02_MMN_Data=[length(find(gt1==1)), length(find(gt1==2)),length(find(gt1==3)),length(find(gt1==4))];
save S02_MMN_Data S02_MMN_Data;

ERP = pop_averager( ALLEEG , 'Criterion', 'good', 'DSindex',2, 'ExcludeBoundary', 'on', 'SEM', 'on' );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
ERP = pop_binoperator( ERP, {'BIN5 = BIN2-BIN1 label Small_MMN','BIN6 = BIN4-BIN3 label Large_MMN'});                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
ERP = pop_erpchanoperator( ERP, {'nch1 = ch1 - ( 0.5*ch58 ) Label FP1','nch2 = ch2 - ( 0.5*ch58 ) Label FPz','nch3 = ch3 - ( 0.5*ch58 ) Label FP2',...
    'nch4 = ch4 - ( 0.5*ch58 ) Label AF7','nch5 = ch5 - ( 0.5*ch58 ) Label AF3',...
    'nch6 = ch6 - ( 0.5*ch58 ) Label AF1','nch7 = ch7 - ( 0.5*ch58 ) Label AF2',...
    'nch8 = ch8 - ( 0.5*ch58 ) Label AF4','nch9 = ch9 - ( 0.5*ch58 ) Label AF8',...
    'nch10 = ch10 - ( 0.5*ch58 ) Label F7','nch11 = ch11 - ( 0.5*ch58 ) Label F5',...
    'nch12 = ch12 - ( 0.5*ch58 ) Label F3','nch13 = ch13 - ( 0.5*ch58 ) Label F1',...
    'nch14 = ch14 - ( 0.5*ch58 ) Label Fz','nch15 = ch15 - ( 0.5*ch58 ) Label F2',...
    'nch16 = ch16 - ( 0.5*ch58 ) Label F4','nch17 = ch17 - ( 0.5*ch58 ) Label F6',...
    'nch18 = ch18 - ( 0.5*ch58 ) Label F8','nch19 = ch19 - ( 0.5*ch58 ) Label FT7',...
    'nch20 = ch20 - ( 0.5*ch58 ) Label FC5','nch21 = ch21 - ( 0.5*ch58 ) Label FC3',...
    'nch22 = ch22 - ( 0.5*ch58 ) Label FC1','nch23 = ch23 - ( 0.5*ch58 ) Label FCz',...
    'nch24 = ch24 - ( 0.5*ch58 ) Label FC2','nch25 = ch25 - ( 0.5*ch58 ) Label FC4',...
    'nch26 = ch26 - ( 0.5*ch58 ) Label FC6','nch27 = ch27 - ( 0.5*ch58 ) Label FT8',...
    'nch28 = ch28 - ( 0.5*ch58 ) Label T7','nch29 = ch29 - ( 0.5*ch58 ) Label C5',...
    'nch30 = ch30 - ( 0.5*ch58 ) Label C3','nch31 = ch31 - ( 0.5*ch58 ) Label C1',...
    'nch32 = ch32 - ( 0.5*ch58 ) Label Cz','nch33 = ch33 - ( 0.5*ch58 ) Label C2',...
    'nch34 = ch34 - ( 0.5*ch58 ) Label C4','nch35 = ch35 - ( 0.5*ch58 ) Label C6',...
    'nch36 = ch36 - ( 0.5*ch58 ) Label T8','nch37 = ch37 - ( 0.5*ch58 ) Label TP7',...
    'nch38 = ch38 - ( 0.5*ch58 ) Label CP5','nch39 = ch39 - ( 0.5*ch58 ) Label CP3',...
    'nch40 = ch40 - ( 0.5*ch58 ) Label CP1','nch41 = ch41 - ( 0.5*ch58 ) Label CPz',...
    'nch42 = ch42 - ( 0.5*ch58 ) Label CP2','nch43 = ch43 - ( 0.5*ch58 ) Label CP4',...
    'nch44 = ch44 - ( 0.5*ch58 ) Label CP6','nch45 = ch45 - ( 0.5*ch58 ) Label TP8',...
    'nch46 = ch46 - ( 0.5*ch58 ) Label P7','nch47 = ch47 - ( 0.5*ch58 ) Label P5',...
    'nch48 = ch48 - ( 0.5*ch58 ) Label P3','nch49 = ch49 - ( 0.5*ch58 ) Label P1',...
    'nch50 = ch50 - ( 0.5*ch58 ) Label Pz','nch51 = ch51 - ( 0.5*ch58 ) Label P2',...
    'nch52 = ch52 - ( 0.5*ch58 ) Label P4','nch53 = ch53 - ( 0.5*ch58 ) Label P6',...
    'nch54 = ch54 - ( 0.5*ch58 ) Label P8','nch55 = ch55 - ( 0.5*ch58 ) Label PO7',...
    'nch56 = ch56 - ( 0.5*ch58 ) Label PO5','nch57 = ch57 - ( 0.5*ch58 ) Label PO3',...
    'nch58 = ch58 - ( 0.5*ch58 ) Label M2','nch59 = ch59 - ( 0.5*ch58 ) Label PO4',...
    'nch60 = ch60 - ( 0.5*ch58 ) Label PO6','nch61 = ch61 - ( 0.5*ch58 ) Label PO8',...
    'nch62 = ch62 - ( 0.5*ch58 ) Label O1','nch63 = ch63 - ( 0.5*ch58 ) Label Oz',...
    'nch64 = ch64 - ( 0.5*ch58 ) Label O2'} , 'ErrorMsg', 'popup', 'KeepLocations',0, ...
    'Warning', 'on' );
ERP = pop_savemyerp(ERP, 'erpname', 'S02_MMN', 'filename', 'S02_MMN.erp', 'filepath', '/Users/varghesepeter/Downloads/S02');
clear
