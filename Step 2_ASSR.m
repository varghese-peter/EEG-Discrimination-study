[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_loadset('filename','S02_fil.set','filepath','/Users/varghesepeter/Downloads/S02/');
[ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' } ); % GUI: 24-May-2019 16:13:41
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
EEG  = pop_binlister( EEG , 'BDF', '/Users/varghesepeter/Downloads/S02/ASSR_Bins.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 24-May-2019 16:14:08
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = pop_epochbin( EEG , [0.0  40000.0],  'none'); % GUI: 24-May-2019 16:16:16
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 3,'gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_runica(EEG, 'extended',1,'interupt','on');
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = eeg_checkset( EEG );
EEG = pop_saveset( EEG, 'filename','S02_ASSR_ica.set','filepath','/Users/varghesepeter/Downloads/S02/');
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
clear