# Adobe Script Runner

Script runner for Adobe applications right from [Sublime Text](https://www.sublimetext.com). The extension also available for [VSCode](https://marketplace.visualstudio.com/items?itemName=renderTom.adobe-script-runner) and [Atom.io](https://atom.io/packages/adobe-script-runner).

## Supported applications

- Adobe After Effects
- Adobe ExtendScript Toolkit
- Adobe Illustrator
- Adobe InCopy
- Adobe InDesign
- Adobe Photoshop

## Installation

- [Download](https://github.com/rendertom/Sublime-Text-Adobe-Script-Runner/archive/master.zip) repository and unzip the package,
- Copy "Adobe Script Runner" folder into Sublime Text’s "Packages" folder:
  - MAC: `~/Users/USERNAME/Library/Application Support/Sublime Text 3/Packages/Adobe Script Runner`
  - WIN: `C:\Users\USERNAME\AppData\Roaming\Sublime Text 3\Packages\Adobe Script Runner`

## In action

- Launch Sublime Text and open any ExtendScript JSX file you want to run in Adobe application,
- In Sublime Text navigate to `Tools -> Build System` and pick an application you want to execute your file in,
- Click `CMD+B` on Mac or `CTRL+B` on Windows and watch the magic.

### For Mac users only

Normally, Adobe Script Runner (ASR) executes the file in the active viewer. However, in cases when you need to run a master file (i.e. index.js) instead, you can append line at the beginning of the file in viewer `// adobe-script-runner 'index.js'`. This way ASR will not execute the file in the viewer, but instead will try to resolve the path to `index.js` file (up to 10 levels-up in the parent folder chain) and execute it.

For instance, the path to file in the viewer is `/Users/[USERNAME]/Desktop/My App/lib/slave.js` and it contains a line `// adobe-script-runner '../../index.js'` at the top. On build command, ASR will execute the file at path `/Users/[USERNAME]/Desktop/index.js`.

### For Windows users only

If you have Adobe applications installed in a custom location, you will need to modify paths to executables in _hostApp.sublime-build_ files:

``` javascript
// Adobe After Effects.sublime-build

{
    "windows": {
        "cmd": "\"Path-To-AfterFX.exe\" -r $file"
    }
}
```

Executable paths for InCopy and InDesign for Windows are not exposed because they are handled differently than the rest of the apps. Go figure Adobe ¯\\_(ツ)_/¯

---

Package is highly inspired by [Sébastien Lavoie](https://github.com/seblavoie)'s [After Effects Scripting Sublime Text Package](https://github.com/seblavoie/After-Effects-Scripting-Sublime-Text-Package), however, it works slightly different and also adds support for more Adobe applications.