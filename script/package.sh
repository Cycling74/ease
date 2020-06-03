#!/bin/sh

export PACKAGE_NAME=`echo $GITHUB_REPOSITORY | sed 's/.*\///g'`
export PACKAGE_REV=`echo $GITHUB_SHA | sed -e 's/^[[:alnum:]]\{7\}/&-/g' | sed 's/-.*//'`
mkdir $PACKAGE_NAME
if [ -e package-info.json ]; then cp package-info.json $PACKAGE_NAME; fi
for f in *.md; do [ -e "$f" ] && cp "$f" $PACKAGE_NAME ; done
if [ -e icon.png ]; then cp icon.png $PACKAGE_NAME; fi
if [ -e CMakeLists.txt ]; then cp CMakeLists.txt $PACKAGE_NAME; fi
if [ -d code ]; then cp -r code $PACKAGE_NAME; fi
if [ -d docs ]; then cp -r docs $PACKAGE_NAME; fi
if [ -d examples ]; then cp -r examples $PACKAGE_NAME; fi
if [ -d extensions ]; then cp -r extensions $PACKAGE_NAME; fi
if [ -d externals ]; then cp -r externals $PACKAGE_NAME; fi
if [ -d extras ]; then cp -r extras $PACKAGE_NAME; fi
if [ -d help ]; then cp -r help $PACKAGE_NAME; fi
if [ -d init ]; then cp -r init $PACKAGE_NAME; fi
if [ -d java-classes ]; then cp -r java-classes $PACKAGE_NAME; fi
if [ -d java-doc ]; then cp -r java-doc $PACKAGE_NAME; fi
if [ -d javascript ]; then cp -r javascript $PACKAGE_NAME; fi
if [ -d jsui ]; then cp -r jsui $PACKAGE_NAME; fi
if [ -d media ]; then cp -r media $PACKAGE_NAME; fi
if [ -d misc ]; then cp -r misc $PACKAGE_NAME; fi
if [ -d patchers ]; then cp -r patchers $PACKAGE_NAME; fi
if [ -d support ]; then cp -r support $PACKAGE_NAME; fi
if [ -d source ]; then cp -r source $PACKAGE_NAME; fi
if [ -d tests ]; then cp -r tests $PACKAGE_NAME; fi
if [ -e $PACKAGE_NAME/ReadMe-Public.md ]; then rm -f $PACKAGE_NAME/ReadMe.md; mv $PACKAGE_NAME/ReadMe-Public.md $PACKAGE_NAME/ReadMe.md; fi
mkdir dist
export CONFIG_LOWERCASE=`echo $CONFIG | tr '[A-Z]' '[a-z]'`

