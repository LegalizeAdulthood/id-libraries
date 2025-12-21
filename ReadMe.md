# Iterated Dynamics Libraries

This repository consists of libraries of data files for
[Iterated Dynamics](https://github.com/LegalizeAdulthood/iterated-dynamics),
but they can also be used in the legacy DOS FRACTINT program or in the commercial program
[UltraFractal](https://www.ultrafractal.com/).  They were originally created for FRACTINT,
mostly in the 1990s.  As such, many of the web sites that previously hosted these files
are no longer online and one has to go digging around in the Internet Archive in order
to find them.  This repository brings them together in one place and new libraries will
be added as further archaeological finds uncover new finds.

Each directory is an Id library, consisting of subfolders for parameter files, IFS definitions,
L-system definitions, formula definitions, colormaps, etc.  A best effort has been made to
make each library standalone by including the necessary files referenced by parameter sets.

To use these in Id, add the directories with the `librarydirs` parameter (available after
version 1.3.1).

Each directory contains a ReadMe citing the original source for the files.
