# A docker container to run "Potjans and Diesmann (2014) The cell-type specific
cortical microcircuit: relating structure and activity in a full-scale spiking
network model. Cerebral Cortex 24 (3): 785-806, doi:10.1093/cercor/bhs358."

## Instructions
- [Download](https://www.docker.com/community-edition), install, and run Docker on your desktop.
- Clone this repository, and modify the files `network_params.py` and `sim_params.py` to your liking.  
  - The major limitation is the size of the `N_scaling` and `K_scaling` parameters, which determined the effective size of the simulatio.  They shouldn't be set to values too high to fit the simulation into memory on your machine.  
- Build the Docker container for this project by running (from this directory, the one that contains the Dockerfile) `docker build -t potjans .`  
  - The last step of the build process will run the simulationa and store the results.  This will take a few minutes, depending on your machine and the values of the parameters.
- Run the Docker container and keep it open so we can copy files off of it `docker run -d --name=potjans potjans tail -f /dev/null`
- Copy files with e.g. `docker cp potjans:/home/docker/pyNN/examples/Potjans2014/results/result.png ./`
- Now view the files (e.g. result.png) with the appropriate application.
- Other files, e.g. the data containing the spike times and the membrane potentials, can also be copied, analyzed, and visualized using appropriate tools.  
