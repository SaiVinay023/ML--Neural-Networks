### Project Name: **MNIST Autoencoder: Neural Network Analysis**

#### Project Description:
The **MNIST Autoencoder** project focuses on building and evaluating neural network architectures using the MNIST dataset, which consists of handwritten digits. The project involves implementing feedforward multi-layer perceptrons (MLPs) and autoencoders to explore unsupervised learning and data representation techniques in machine learning.

#### Objectives:
1. **Explore Neural Network Fundamentals**: Utilize MATLAB's Neural Networks Toolbox to understand basic concepts of neural networks.
2. **Build Multi-layer Perceptrons**: Implement and analyze various MLP architectures to classify handwritten digits.
3. **Develop Autoencoders**: Create an autoencoder to compress and reconstruct MNIST data, allowing for feature extraction and dimensionality reduction.

#### Technical Implementation:

1. **Data Preparation**:
   - Download and extract the MNIST dataset.
   - Preprocess the dataset by normalizing pixel values and reshaping the data into the required format for MATLAB (patterns as columns, variables as rows).

2. **Neural Network Toolbox**:
   - Familiarize with MATLAB's Neural Networks Toolbox through introductory tutorials.
   - Understand data conventions specific to MATLAB, ensuring proper data transposition.

3. **Feedforward Multi-layer Networks**:
   - Implement MLPs to classify handwritten digits using different configurations (varying the number of layers and units).
   - Utilize the tutorial "Classify Patterns with a Neural Network" to execute MLP training and evaluation.
   - Generate result tables and confusion matrices to assess classification performance across different models.

4. **Autoencoder Implementation**:
   - Create a multi-layer perceptron structured as an autoencoder, where the input pattern equals the target pattern.
   - Train the autoencoder using the MNIST dataset by calling the function:
     ```matlab
     myAutoencoder = trainAutoencoder(myData, nh);
     ```
   - Encode the data to obtain a compressed representation:
     ```matlab
     myEncodedData = encode(myAutoencoder, myData);
     ```

5. **Data Visualization**:
   - Use the `plotcl` function to visualize the encoded data and understand how similar patterns are represented in the hidden layer.
   - Experiment with different subsets of the MNIST dataset by training on two-digit classes to see how the autoencoder captures the structure of the data.

6. **Report Generation**:
   - Document the findings, including training parameters, results, and insights on how the neural network learns and represents data.
   - Submit the report summarizing the analysis, methodologies, and outcomes of the neural network experiments.

#### Key Files and Components:
- **MNISTdataset.zip**: Contains the MNIST dataset.
- **Main_Autoencoder.m**: Main script for training and evaluating the autoencoder.
- **plotcl.m**: Function for visualizing the encoded data.
- **Lab 4_neural networks.pdf**: Documentation for the lab assignment.
- **MachineLearning_Lab4_Report.pdf**: Comprehensive report detailing the experiments and findings.

This project not only helps in understanding neural network architectures but also illustrates practical applications of machine learning in pattern recognition and data analysis.
