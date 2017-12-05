---
### IIIF Manifest Prototyping at Georgetown

Terry Brady 

Georgetown University Library

https://github.com/terrywbrady/info

![Georgetown Library Logo](https://www.library.georgetown.edu/sites/default/files/library-logo.png)

---
### DigitalGeorgetown is built on DSpace

[![Digital Georgetown Logo](https://www.library.georgetown.edu/sites/default/files/dg-logo-100.png)](https://repository.library.georgetown.edu)

- Institutional Repository
- Digitized Collections

+++
### Outstanding Challenges that IIIF might Solve

- Our current book viewer viewer skews images 
- Archival/hierarchical collections are difficult to present in DSpace
- Presenting Image Collections

+++
### Current Goals (Evolving)

- Address outstanding challenges
- Provide high-impact presentations for selected collections
- Leverage existing metadata and metadata editing tools
- Present higher resolution media than the access copies currently in DSpace

+++
### Current Status
- Loris Installed on a development server
- Universal Viewer is our target viewer
- Exploring Search Service Options
- *Note: The manifests used in this presentation are public, but the image resources are not yet publicly available*

---?image=slideshow/Slide3.JPG

+++?image=screenshots/loris2.png

+++
### Manuscript with Irregular Page Orientation from Original Tifs
- [Loris 2 - Manuscript with Irregular Page Orientation - Original Tifs](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris2.json)
  - This contains 8 tifs from a digitized manuscript

---?image=slideshow/Slide4.JPG

+++?image=screenshots/ead.png

+++
### Hierarchical Collection Generated from Archival EAD with Item Level Metadata

- [EAD with Item Level Metadata](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/ead.json)
  - This manifest was generated from an Archivist Toolkit EAD file
  - The last 2 items in the manifest contain real images
  - The remaining items are linked to a placeholder image
  
---?image=slideshow/Slide5.JPG

+++?image=screenshots/ead2.png

+++
### Hierarchical Collection Generated from File System (boxes/folders) and EAD with Minimal Metadata
- [EAD without Item Level Metadata](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/ead2.json)

---?image=slideshow/Slide6.JPG

+++?image=screenshots/ua_photos2.png

+++
### Photo Gallery with Subject and Date Indexes
- [Photo Gallery with Subject and Date Indexes](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/ua_photos2.json)

+++?image=slideshow/Slide7.JPG

---?image=slideshow/Slide8.JPG

+++?image=screenshots/hoya.png

+++
### Multiple Newspaper issues in a Collection Manifest
- [Multiple Newspaper issues in a Collection Manifest](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/hoyacoll.json)

+++?image=slideshow/Slide9.JPG

---?image=slideshow/Slide10.JPG

+++ 
### File Analyzer - Our Automation Tool for Digitization Projects
- https://github.com/Georgetown-University-Libraries/File-Analyzer
- Checksum verification
- Prepares DSpace Ingest Folders
- Generates APTrust Bag Files
- Prepares ETD Ingest Files
- Future: Manifest Generator Tool

---
### Universal Viewer Integration within a DSpace Collection

+++?image=screenshots/dgInteg.png

+++?image=screenshots/dgInteg2.png

---
### Next Steps
- Explore IIIF Search for our Newspaper Collection
- Deploy the Image Server to Production
- Capacity Planning
- Determine how the repository fits into the workflow
- Determine which assets require preservation storage

---
### Thank You

Terry Brady

Georgetown University Library

https://github.com/terrywbrady/info

![Georgetown Library Logo](https://www.library.georgetown.edu/sites/default/files/library-logo.png)
