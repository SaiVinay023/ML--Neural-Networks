%% Saivinay Manda-S4845876 / Lab4
close all; 
clear all; 
clc; 

%% Task 0 : Neural networks in Matlab 
%Execution of neural netwoks in matlab/ fitdata


% load the data set, its chemical dataset 
load chemical_dataset; 
% this dataset is one of the sample data sets that is part of the
%toolbox...


% use "help chemical_dataset" on the command window.to have more infos 
% about the dataset,


%define the num of the hidden layer, here we have taken 10 layers 
hiddenLayerSize = 10;


FittingProblemwithNeuralNetwork(chemicalInputs,chemicalTargets, hiddenLayerSize);

%% Task 1 : Feedforward multi-layer networks (multi-layer perceptrons)
%CLASSIFY PATTERNS WITH A NEURAL NETWORK

%load the wine dataset 
load wine_dataset; 

%the structure of the dataset has rows and columns ordered according to
%the matlab neural network function generated.

%to have more infos about the properties of the dataset, write on the
%command window "help wine_dataset" 

%load another dataset glass dataset 
load glass_dataset;

PatternRecognitionProblemwithNeuralNetwork(wineInputs, wineTargets, hiddenLayerSize); 
PatternRecognitionProblemwithNeuralNetwork(glassInputs, glassTargets, hiddenLayerSize); 
