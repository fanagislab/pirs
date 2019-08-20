##Note: Only humNew.PE100.matrix is calculated from real data, profiles for the other reads length are expanded from profile with read length 100-bp

For profiles with other read length, use the following command:
perl ./expand_base_calling_matrix.pl humNew.PE100.matrix  200 > humNew.PE200.matrix
