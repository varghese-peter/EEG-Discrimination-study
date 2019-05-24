[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_loadset('filename','S02_fil.set','filepath','/Users/varghesepeter/Downloads/S02/');
[ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
EEG  = pop_creabasiceventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99 }, 'BoundaryString', { 'boundary' } ); % GUI: 24-May-2019 15:34:19
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'gui','off'); 
EEG  = pop_binlister( EEG , 'BDF', '/Users/varghesepeter/Downloads/S02/ACC_Bins.txt', 'IndexEL',  1, 'SendEL2', 'EEG', 'Voutput', 'EEG' ); % GUI: 24-May-2019 15:34:54
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = pop_epochbin( EEG , [-100.0  1000.0],  'pre'); % GUI: 24-May-2019 15:35:26
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 3,'gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_runica(EEG, 'extended',1,'interupt','on');
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = eeg_checkset( EEG );
EEG = pop_saveset( EEG, 'filename','S02_ACC_ica.set','filepath','/Users/varghesepeter/Downloads/S02/');
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
clear