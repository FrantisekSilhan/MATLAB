# ITE-PMTL & NTI-SEM1 — MATLAB Course Archive

**Project:** This repository is an archive of MATLAB code and exercises created during the ITE-PMTL classes and the Mathematical Seminar 1 (NTI-SEM1) in the first semester at the Technical University of Liberec. It collects student scripts, examples, and small exercises used during coursework.

**Structure**
- **Root directories:**
  - [ITE-PMTL](ITE-PMTL) : Course exercises and scripts from ITE-PMTL lectures and labs.
  - [NTI-SEM1](NTI-SEM1) : Materials and exercises from the Mathematical Seminar 1 (NTI-SEM1).

**How to use**
- Open the repository in your editor/IDE or MATLAB.
- To run an example from MATLAB, change directory to the relevant folder and call the script. Examples:

```matlab
cd('ITE-PMTL/01')
cv01    % runs script cv01.m (if it's a script or function on path)
```

- To view/save figures open `.fig` files in MATLAB using `openfig('grafB.fig')`.
- Some scripts may expect the current working directory to be the script's folder or require adding project folders to the MATLAB path. Use `addpath` or `pathtool` as needed.

**Notes**
- This archive is intended for study, reference, and revision of material covered in the courses. It is not packaged as a standalone application.
- File naming usually follows numbering per lecture (e.g., `01/`, `02/`, ...).