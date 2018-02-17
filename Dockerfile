FROM neuralensemble/simulation
RUN git clone http://github.com/rgerkin/pyNN
WORKDIR pyNN/examples/Potjans2014
ADD sim_params.py .
ADD network_params.py .
RUN mkdir results
RUN python microcircuit.py
