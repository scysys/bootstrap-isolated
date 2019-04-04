#!/bin/bash

### Bootstrap Isolated Processor
## Config
# Bootstrap CSS-Files
bootstrap="bootstrap";
bootstrap_grid="bootstrap-grid";
bootstrap_reboot="bootstrap-reboot";

# Bootstrap Isolated class name
bootstrap_class=".bootstrap-isolated";

### DO NOT CHANGE ANYTHING BELOW THIS LINE ###

## Create less files
cat > less/$bootstrap.less << EOF
$bootstrap_class {
  @import (less) "css/$bootstrap.css";
}
EOF

cat > less/$bootstrap_grid.less << EOF
$bootstrap_class {
  @import (less) "css/$bootstrap_grid.css";
}
EOF

cat > less/$bootstrap_reboot.less << EOF
$bootstrap_class {
  @import (less) "css/$bootstrap_reboot.css";
}
EOF

## Process created files
# Default files (add minify later)
lessc less/$bootstrap.less isolated/$bootstrap-isolated.css
lessc less/$bootstrap_grid.less isolated/$bootstrap_grid-isolated.css
lessc less/$bootstrap_reboot.less isolated/$bootstrap_reboot-isolated.css

### Search / Replace
## Using Perl. SED does not working right under OSX (https://stackoverflow.com/questions/4247068/sed-command-with-i-option-failing-on-mac-but-works-on-linux)
# Remove "body" from css
body=" body";
perl -i -pe"s/$bootstrap_class$body/$bootstrap_class/g" isolated/*

html=" html";
perl -i -pe"s/$bootstrap_class$html/$bootstrap_class/g" isolated/*

# Output a simple message, without check for any errors at this time.
echo "script has ended";

exit