Description
----
Here you will find two scripts:

**FNSvisualization_v2.py** - meant to be a tool to produce dynamical graphs (in video format) 
for FNS simulation activity. This pipeline allows to visualize at the neuron scale 
(see examples/v_neuronViz.avi as example), and to produce a visualization averaging neurons'
 activity into nodes (see examples/v_nodeViz.avi as example). 

**gephiConvert.py** - allows the user to generate two csv files (nodes.csv and edges.csv) that contains activity information at the level of neurons to be imported in Gephi sorftware. Remember that FNS has a switcher (-g) that allows you to efficiently generate a gephi compliant file, nevertheless that compliant file doesn't include activity information to animate the network (work in progress). Thus, the file will be deprecated as soon as the simulator can handle this option. You can try importing *"examples/gephi.gephi"* file in Gephi software and animating our example of dynamical relaying network. 

To run either of those scripts we recommend to install requirements: pip install -r **requirements.txt** (in command line). 

**Please read documentation** inside each script for further details.


Examples
----
At neuron scale
>![Alt text](https://github.com/jescab01/FNS-scripts_and_tools/blob/patch-2/Python_scripts/examples/neuronViz.png)

At node scale
>![Alt text](https://github.com/jescab01/FNS-scripts_and_tools/blob/patch-2/Python_scripts/examples/nodeViz.png)

In Gephi by nodes
>![Alt text](https://github.com/jescab01/FNS-scripts_and_tools/blob/patch-2/Python_scripts/examples/GephiNodes.png)

In Gephi animating networks activity
>![Alt text](https://github.com/jescab01/FNS-scripts_and_tools/blob/patch-2/Python_scripts/examples/GephiActivity.png)




