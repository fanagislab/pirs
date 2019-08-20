
1. Function introduction

This is a simple version of the pirs program, more easy to use. It has two functions: (1) generate a heterozygous haploid genome for a reference genome, using the given SNP rate, indel rate and structural variation rate. (2) simulate illumina sequencing reads data using given empirical profile and user-set requirements. 

A full version is available at galaxy001's github page (https://github.com/galaxy001/pirs).

2. Installation
Just type "make" and everything will be done.


3. More help
You can get more usage information by typing command "pirs", "pirs diploid", "pirs simulate".  

For more about the algorithm, you can reference to this published paper:  Xuesong Hu, Jianying Yuan, Yujian Shi, et al. and Wei Fan. pIRS: Profile based Illumina pair-end Reads Simulator. Bioinformatics Vol. 28 no. 11, 1533-1535(2012)

For any technical problem or suggestion, please contact  fanweiagis@126.com


4. Altert
This program uses the starting run-time to create random numbers, so jobs of reads-simulation with the same reference genome should not run at the same time

5. Reference 
Xuesong Hu, Jianying Yuan, Yujian Shi, et al. and Wei Fan. pIRS: Profile based Illumina pair-end Reads Simulator. Bioinformatics Vol. 28 no. 11, 1533¨C1535 (2012)

