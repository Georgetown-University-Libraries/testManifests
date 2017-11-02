---
### IIIF Prototyping

LTCC Update - Oct 31, 2017

![](https://www.library.georgetown.edu/sites/default/files/library-logo.png)

---

### IIIF: International Image Interoperability Framework

![IIIF Icon](https://upload.wikimedia.org/wikipedia/commons/e/e8/International_Image_Interoperability_Framework_logo.png)
- Founded 2011
- [About IIIF](http://iiif.io/about/)

+++

### 4 API's

[http://iiif.io/technical-details/](http://iiif.io/technical-details/)

- Image API
- Presentation API
- Authentication API
- Search API

+++

### What is needed to use IIIF?

- Images are made accessible to a [IIIF compliant server](http://iiif.io/apps-demos/#image-servers)
- Creation of a "manifest" to present these images
- Use of a [IIIF compliant viewer](http://iiif.io/apps-demos/#image-viewing-clients)
- The magic is in the *interoperability* of these tools

+++ 

### More Information

[Presentation on IIIF to Seattle Java User's Group](https://github.com/terrywbrady/iiif-seajug/blob/master/README.md)

---  

### Why Use IIIF?

- Provide low-resolution versions of images for low-bandwidth users |
- Provide high-resolution versions of images for interested users |
- Allow scholars to create citations to specific images or regions of images |
- Simulating browsing of digitized manuscripts |
- Provide visual navigation across a collection of items with no logical "pagination" |
- Support the side by side comparison of historical objects |

---

### Prototyping Status

- LIT has installed image servers on a development server
  - [Cantaloupe](https://medusa-project.github.io/cantaloupe/)
  - [Digilib](http://digilib.sourceforge.net/iiif-api.html)
  - [Loris](https://github.com/loris-imageserver/loris)
    - most promising solution
  
--- 

### Sample Manifests using Loris and Universal Viewer
- Manifest files must be publicly accessible for use by published iiif tools
- These demonstrations point to image resources that require library network or VPN accesss

---

### Manuscript
- [Loris 1 - Manuscript](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris1.json)

+++?image=screenshots/loris1.png
---

### Manuscript with Irregular Page Orientation from Oritinal Tifs
- [Loris 2 - Manuscript with Irregular Page Orientation - Original Tifs](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris2.json)
  - This contains 8 tifs from a digitized manuscript
+++?image=screenshots/loris2.png

---

### Manuscript with Irregular Page Orientation Generated from PDF Source File
- [Loris 2 - Full Manuscript Generated from PDF](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/burst1.json)  
  - TBD: Apply full text overlay extracted from PDF
+++?image=screenshots/loris2gen.png

---

### Collection of Objects and Documents
  
- [Loris 3 - Collection of Objects and Documents](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris3.json)
+++?image=screenshots/loris3.png

---

### Manuscript with Range Overlays
- [Loris 1 - Manuscripts With Range Overlays](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris1seq.json)
+++?image=screenshots/loris1range.png

---

### Collection of Multiple Manifests

- [Collection](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/collection.json)
+++?image=screenshots/coll.png

---

### Hierarchical Collection Generated from Archival EAD with Item Level Metadata

- [EAD with Item Level Metadata](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/ead.json)
  - This manifest was generated from an Archivist Toolkit EAD file
  - The last 2 items in the manifest contain real images
  - TBD: Leah will provide another EAD with no item level metadata
  
---

### EAD Manifest
- EAD Created in Archivist Toolkit
- EAD exported as XML
- Manifest generated with XSLT
- Image paths manually edited to point to our image server
  
+++?image=screenshots/ead.png

---

### Hierarchical Collection Generated from File System (boxes/folders) and EAD with Minimal Metadata

+++?image=screenshots/ead2.png

---

### Next Steps - Where to Store Manage/Assets?

- Image Files
  -  Store Preservation Files in DG (Preservation Bundle)
  -  Store Preservation Files in Image Server Directories
  -  Generate Component Images from Master Images (Original Bundle)
- Decision: Store Preservation Files in Image Server Directories

---

### Next Steps - Where to Store Manage/Assets?

- Manifests
  - Store Manifest files in DG (Metadata Bundle)
  - Generate Manifest files from DG
- Decision: Store Manifest files in DG (Metadata Bundle)
---

### Next Steps - Manifest Creation

- Manually Edited and Enriched
- Generated from DSpace

- Decision: Generate from File System, EAD, Manual Editing
---

### Next Steps - Capacity Planning

- Compute impact of Image Server
  - Server Impact of Asset Storage Choice
  - Run image server on the DG server?
- Storage impact of IIIF Asset Creation
- Decision: Run image server on separate box from DSpace

---

### Next Steps - Collection Selection

- Use IIIF for future digitized assets
- Use IIIF for existing digitized assets
  - Would re-digitization be needed?
- Decison: Focus on Hiearchical Collections and Images Benefitting from Higher Resolution
  - Selected on a Case-by-case basis
