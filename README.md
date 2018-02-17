# A docker container to run "Potjans and Diesmann (2014) The cell-type specific
cortical microcircuit: relating structure and activity in a full-scale spiking
network model. Cerebral Cortex 24 (3): 785-806, doi:10.1093/cercor/bhs358."

## Instructions
- Install and run Docker
- Modify the files `network_params.py` and `sim_params.py` here.  
- Build this container (from the directory containing this README, run `docker build -t potjans .`  This will also run the simulation.
- Run the container and keep it open so we can copy files off of it `docker run -d --name=potjans potjans tail -f /dev/null`
- Copy files with e.g. `docker cp potjans:/home/docker/pyNN/examples/Potjans2014/results/result.png ./`
- Now view the files (e.g. result.png) with the appropriate application.
