% Saivinay Manda - S4845876 / Task2

clear all; 
close all; 
clc; 

%% Preprocessing data
%extract only 2 classes, for istance 1 and 2 digits 
[Train1, Target1] = loadMNIST(0,3); 
[Train2, Target2] = loadMNIST(0,8); 

%Extract only some classes 
Data1 = [Train1, Target1]; 
Data2 = [Train2, Target2]; 
[n,m] = size(Data1); 
[q,r] = size(Data2); 

random_indexes1 = randperm(n); 
random_indexes2 = randperm(q); 

Subset1 = Data1(random_indexes1(1:500), :); 
Subset2 = Data2(random_indexes2(1:500), :); 

%Create training set 
Training = [Subset1(:,1:end-1)', Subset2(:,1:end-1)']; 
Target = [Subset1(:,end)', Subset2(:,end)']; 

%% Train an autoencoder on the reduced training set
%set size (num of units) in the hidden layer 
HiddenSize = 2; 
myAutoencoder = trainAutoencoder(Training, HiddenSize); 

%Encode the different classes using the encoder obtained
myEncodedData = encode(myAutoencoder, Training);


%using the given function "plotcl" to plot data 
plotcl(myEncodedData', Target');

legend(['Class ', num2str(labelData1(1))], ['Class ', num2str(labelData2(1))]);



