SC18 Tutorial Demos
===================

Tightly couled / in situ
------------------------
These are stand alone, they run the simulation tighlty coupled to a back end.
The back end is selected vi an XML file passed into the bridge during start up.
Hence the major difference between these is that XML file.

1. `oscillator_posthoc_paraview.sh` -- writes VTK files in ParaView PVD format.
2. `oscillator_posthoc_visit.sh` -- writes VTK files in VisIt .visit format.
