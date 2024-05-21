Running the Code
    1.  Build gem5 
    2.  Extract the files into the gem5 root directory
    3.  Open options.py and select the configuration id you want to run by changing the list l on line 59. This will run the top 10 configurations by default.
        To run all the configurations, set:
            l = list(range(255))
    4.  Execute `python3 options.py`

Structure
- plots/
- top-10-configs/
- gem5-results/
- analysis.ipynb                Contains the jupyter notebook to get the top 10 results from the stat files and generate the plots
- caches.py                     Contains the configuration of the cache 
- options.py                    Contains the driver code to run the simulator
- run.py                        The script used to run gem5
- README.txt                    README 
- report.pdf                    Report describing the results

Top 10 configuration IDs in the increasing order of CPIs
Rank    |   ID 
-------------------
1       |   59
2       |   243
3       |   51
4       |   219
5       |   251
6       |   211
7       |   27
8       |   19
9       |   241
10      |   57
