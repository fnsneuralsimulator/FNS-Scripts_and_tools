How to
----
First, obtain **matlab compliant files** as simulation output of FNS: use the switch '-m' in the experiment command, as explained on the user manual.

Then, **rename** the output files of the simulation as 'burning_matlab.csv' and 'firing_matlab.csv', and locate them in the matlab current folder.

Finally, 
- run the script **FNS_spiking.m** to obtain the rasterplot and the related time series of the spiking activity produced by the simulated nodes (brain regions);
- run the script **FNS_postsynaptic.m** to obtain the time series of the local field potential evoked at the specified nodes (brain regions).


Examples
----
From FNS_postsynaptic.m
>![Alt text](https://github.com/jescab01/FNS-scripts_and_tools/blob/patch-2/Matlab_scripts/examples/postsynaptic%20signals.png)
>![Alt text](https://github.com/jescab01/FNS-scripts_and_tools/blob/patch-2/Matlab_scripts/examples/postsynaptic%20spectrum.png)


From FNS_spiking.m:
>![Alt text](https://github.com/jescab01/FNS-scripts_and_tools/blob/patch-2/Matlab_scripts/examples/firing%20signal.png)
>![Alt text](https://github.com/jescab01/FNS-scripts_and_tools/blob/patch-2/Matlab_scripts/examples/firing%20rasterplot.png)




