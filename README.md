# EEG-Discrimination-study
Matlab and R scripts to analyse the EEG and behavioural data on objective measure of sound discrimination

You need to have MATLAB installed with the Signal Processing and Statistics and Machine learning toolboxes, The scripts works with MATLAB 2019a. If there are any issues with other versions of MATLAB, please update it in the issues

Additonal toolboxes required:
EEGLAB: Download the latest release from https://sccn.ucsd.edu/eeglab/index.php. I used eeglab14_1_2b. 

ERPLAB: Download from https://erpinfo.org/erplab. I used ERPLAB v7.0.0

Lestwave: Download from https://www.letswave.org/. I used Letswave6

# MATLAB Setup
Step 1: Unzip the EEGLAB download. Unzip the ERPLAB dowload. Copy and paste the ERPLAB into the plugins folder in EEGLAB (eeglab>plugins>erplab)
Unzip the Letswave donload.
I usually have a MATLAB toolboxes folder in my document folder and keep EEGLAB and Letswave there.  

Step 2: Open MATLAB. Click on the "Set Path" under the Home tab.Click on add folder and select the EEGLAB and Letswave folders. Click save and then close.

Step 3: Few additonal data import/analysis extensions are also required for EEGLAB. To get then open MATLAB and in the command window type "eeglab" and enter. The EEGLAB GUI will open. 

> In the GUI, go to File>Manage EEGLAB extensions>Data import extensions. Check "neuroscanio" from the list and click OK

> In the GUI, go to File>Manage EEGLAB extensions>Data processing extensions. Check "ICLabel", "Viewprops" and "CleanLine" from the list and OK.

This initial set up needs to be done only once.

# Analysis steps

<b> All conditions </b>
  
Step 1 is same for all the measures- MMN, ACC and ASSR

<b> MMN </b>

Run the "Step 2_MMN" script.

Step 3 has to be done manually. Refer to the "Step 3.pdf" document
