# EEG-Discrimination-study
Matlab and R scripts to analyse the EEG and behavioural data on objective measure of sound discrimination

You need to have MATLAB installed with the Signal Processing and Statistics and Machine learning toolboxes, The scripts works with MATLAB 2019a. If there are any issues with other versions of MATLAB, please update it in the issues

Additonal toolboxes required:
EEGLAB: Download the latest release from https://sccn.ucsd.edu/eeglab/index.php. I used eeglab14_1_2b. 

<font color="red"> **Update (08/07/2019). I checked with the new version of EEGLAB (EEGLAB_2019) and all the scripts works fine with it**</font>

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

**Update (08/07/2019).In EEGLAB_2019, both data import and data processing extensions are grouped together at File>Manage EEGLAB extensions** 

**Update (11/07/2019). There was a file missing in the EEGLAB_2019 release. To fix this, open EEGLAB from the command window, then go to File>Manage EEGLAB extensions, select dipfit v3.2 and click Install/Update**

This initial set up needs to be done only once.

# Analysis steps

Open MATLAB and set the "Current directory" as the folder with the scripts. The data can also be in the same folder.

<b> All conditions </b>
  
Step 1 is same for all the measures- MMN, ACC and ASSR. To run this step open the "Step 1.m" file and click "Run section" from the top ribbon.

<b> MMN </b>

Run the "Step 2_MMN" script.

Step 3 has to be done manually. Refer to the "Step 3.pdf" document

Run the "Step 4_MMN" script.

<b> ACC </b>

Run the "Step 2_ACC" script.

Step 3 is same as MMN

Run the "Step 4_ACC" script.

<b> ASSR </b>

Run the "Step 2_ASSR" script.

Step 3 is same as MMN/ACC

Run the "Step 4_ASSR" script.

Step 5 is done in Letswave. Refer to the "Step 5_ASSR.pdf" document
