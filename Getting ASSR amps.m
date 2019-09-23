% Before running this script open letswave and select 'xxx_AASR3' for all
% participants. Then click 'Send to workspace'

% you can change AASR3 to ASSR2 and ASSR one and re-run the script after
% sending the corresponding letswave data to workspace

ASSR3_data=squeeze(cat(4,lwdata(:).data));
Freqs=linspace(0,250,10000);
% Freqquency point 81 corresponds to 2 Hz; 401 10 Hz
% channel 14 is Fz,  23 is FCz and 32 is Cz
ASSR3_2Hz_Fz_Amp=ASSR3_data([14 23 32],:,81)';
xlswrite('ASSR3_2Hz_Fz_Amp.xls', ASSR3_2Hz_Fz_Amp);
ASSR3_10Hz_Fz_Amp=ASSR3_data([14 23 32],:,401)';
xlswrite('ASSR3_10Hz_Fz_Amp.xls', ASSR3_10Hz_Fz_Amp);