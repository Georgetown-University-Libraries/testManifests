# testManifests
Experimental Manifests for IIIF

- [Collection](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/collection.json)
- [Loris 1   ](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris1.json)
- [Loris 1 With Ranges](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris1seq.json)
- [Loris 2   ](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris2.json)
  - This contains 8 tifs from a digitized manuscript
  - Here is the [same manuscript using jpg's generated from a pdf](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/burst1.json)
  
- [Loris 3   ](http://universalviewer.io/uv.html?manifest=https://raw.githubusercontent.com/Georgetown-University-Libraries/testManifests/master/loris3.json)

## TODOs
- Create manifest from EAD
- Create manifest for FlexPaper pre-compiled resources 
- Enable the generation of a manifest for item bitstreams (original or other bundle)

## Implemented
- Find manifest.json attached to an item and render the IIIF logo

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
