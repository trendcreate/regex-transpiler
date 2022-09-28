# Package

version       = "0.1.0"
author        = "TRENDcreate"
description   = "A tool that transpiles regular expressions into code for programming language functions"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["regex_transpiler"]


# Dependencies

requires "nim >= 1.6.6"
