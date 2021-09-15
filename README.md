# Sill-Net: Feature Augmentation with Separated Illumination Representation
This repository is the official basic implementation of Separating-Illumination Network (Sill-Net).


![image](https://github.com/lanfenghuanyu/Sill-net/blob/main/Model.png)

## Usage 
1. Clone the repository. The default folder name is 'Sill-Net'. 
   ```
   git clone https://github.com/lanfenghuanyu/Sill-Net.git
   ```

2. Download the datasets used in our paper from [here](https://forms.gle/sytKG3QaLfgTYtau5). The datasets used in our paper are modified from the existing datasets. Please cite the dataset papers if you use it for your research. 
   
   - Organize the file structure as below. 
   ```
   |__ Sill-Net
       |__ code
       |__ db
           |__ belga
           |__ flickr32
           |__ toplogo10
           |__ GTSRB
           |__ TT100K
           |__ exp_list
   ```
   
   - Training and test splits are defined as text files in 'Sill-Net/db/exp_list' folder. 

3. Set the global repository path in 'Sill-Net/code/config.json'. 

4. Run main.py to train and test the code. 

## Generalized one/few-shot models 

1. How to train: Our training is based on PT-MAP, refering to the codes [here](https://github.com/yhu01/PT-MAP). Simply add lines of codes (during training) to randomly sample some illuminations scaled to the same size as the support samples (inputs or the features in the hidden layers). Then mix up the support samples and the illumination features for training. 
2. How to reproduce: Use the [pretrained models](https://drive.google.com/file/d/1wVJlDnU00Gurs0pw54ZMqf4XsWhJWHIh/view) on miniImageNet, CUB and CIFAR-FS using WRN. Then train the models further as introduced in the 1st step. Our trained final models are released [here](https://drive.google.com/drive/folders/1iQzZdFte8gcLtIZdDXASqpCgJLMnUCuP?usp=sharing). Please read the model using the file io_utils.py (not to untar the model files). 

## Training Tips 
1. For better results, increase the batchsize (64 or 128). For limited GPU memory, set the batchsize as 16. 

2. Adjust the number of support samples ('choose_sup' = 1 or more) for batches to balance the training speed and memory. 
