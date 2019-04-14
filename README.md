# Exploring the Use of Modern Search Methods in R for Hyperparameter Tuning of Machine Learning Models and Maximizing the Compressive Strength of Concrete

This project has two main objectives:  

1. [**Search Methods for hyperparameter tuning:**](https://rpubs.com/jeandsantos88/search_methods_for_hyperparameter_tuning_in_r) Test various search methods to tune the hyperparameters of a XGBoost models that predicts the compressive strength of concrete.
2. [**Search Methods for function optimization:**](https://rpubs.com/jeandsantos88/Concrete_Mixture_Optimization) Compare various search methods to find a concrete mixture with the highest predicted compressive strength.

## Dataset

The dataset used to train the predictive model comes from the research paper [*Modeling of strength of high performance concrete using artificial neural networks*](https://www.sciencedirect.com/science/article/pii/S0008884698001653) by I-Cheng Yeh published in *Cement and Concrete Research*, Vol. 28, No. 12, pp. 1797-1808 (1998). The compressive strength of concrete was predicted using its age and composition. 

The dataset can be downloaded through the [UCI Machine learning Repository](http://archive.ics.uci.edu/ml/datasets/Concrete+Compressive+Strength). The final model was tuned using the [`caret`](https://topepo.github.io/caret/index.html) package. 

The data contains 1030 examples and the following features:

* Input Variable: Cement (kg in a m^3^ mixture)
* Input Variable: Blast Furnace Slag (kg in a m^3^ mixture)
* Input Variable: Fly Ash (kg in a m^3^ mixture)
* Input Variable: Water (kg in a m^3^ mixture)
* Input Variable: Superplasticizer (kg in a m^3^ mixture)
* Input Variable: Coarse Aggregate (kg in a m^3^ mixture)
* Input Variable: Fine Aggregate (kg in a m^3^ mixture)
* Input Variable: Age (days)
* Output Variable: Concrete compressive strength (MPa)

## Search Methods

Seven search methods are tested for the optimisation of the concrete mixture:  

- Grid search (GS)
- Random search (RS)
- Simulated Annealing (SA)
- Genetic algorithm (GA)
- Islands genetic algorithm (ISLGA)
- Differential evolution (DE)
- Particle swarm optimization (PSO)

Grid and random search will be used as benchmarks for comparing the other search methods.
