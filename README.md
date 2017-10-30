[![GitPitch](https://gitpitch.com/assets/badge.svg)](https://gitpitch.com/Georgetown-University-Libraries/testManifests)

# testManifests
Experimental Manifests for IIIF

- [Loris 1 - Manuscript](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris1.json)
- [Loris 2 - Manuscript with Irregular Page Orientation - Original Tifs](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris2.json)
  - This contains 8 tifs from a digitized manuscript
- [Loris 2 - Full Manuscript Generated from PDF](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/burst1.json)  
- [Loris 3 - Collection of Objects and Documents](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris3.json)
- [Loris 1 - Manuscripts With Range Overlays](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris1seq.json)
- [Collection](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/collection.json)
- [EAD with Item Level Metadata](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/ead.json)
  - This manifest was generated from an Archivist Toolkit EAD file
  - The last 2 items in the manifest contain real images


## TODOs
- Create manifest from EAD with no item metadata
- TODO - overlay text extract into sample files 
- Enable the generation of a manifest for item bitstreams (original or other bundle)

## Implemented
- Find manifest.json attached to an item and render the IIIF logo
- Create manifest for ~~FlexPaper pre-compiled resources~~
  - Can use the same set of tools to generate resources

## Questions for the IIIF/UV Community
- ~~How to use a PDF in UV. What can UV do with a PDF that the default browser view cannot?~~
  - Asked on UV Slack on 10/16/2017, a new version in UV 3, still limited functionality
- Can metadata be embedded and viewed in UV at a spot other than a manifest: Canvas or Range
  - http://iiif.io/api/presentation/2.1/#b-summary-of-metadata-requirements
  - UV right panel shows all the relevant contextual levels
- ~~If annotations are created (in a tool such as Mirador) how can they be persisted?  Can they then be referenced and viewed in UV?~~
  - N/A per question to UV Slack on 10/16/2017
- ~~Manifest with multiple sequences - question asked on 10/17/2017~~
  - No per list
- Example of a collection manifest with ranges
  - http://universalviewer.io/examples/#?c=0&m=2&s=0&cv=0&manifest=http%3A%2F%2Fwellcomelibrary.org%2Fiiif%2Fcollection%2Fb18031511&xywh=-1218%2C-178%2C4406%2C3252  
  
- Can a collection be created with inline manifests, or must each one exist separately?


## References to online resources
- http://ronallo.com/iiif-workshop/presentation/
- Example with nested ranges: http://demos.biblissima-condorcet.fr/iiif/metadata/florus-dispersus/manifest.json

## DSpace Interaction Options
- Generate Manifest with Metadata from Item via REST, link to external image files by manually editing the manifest
- Store external image links via metadata and automate into manifest build
- Generate Manifest from DSpace using a curation task or media filter
- Load individual images into an IIIF Bundle and export to a manifest
- Create a media filter (or curate task) to generate images from a PDF and build a manifest
