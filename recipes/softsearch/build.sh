#!/bin/bash
wget https://s3-us-west-2.amazonaws.com/mayo-bic-tools/softsearch/Softsearch2.4.tar.gz
wget -0- https://s3-us-west-2.amazonaws.com/mayo-bic-tools/softsearch/Softsearch2.4.tar.gz | shasum -a 256
tar -xvzf Softsearch2.4.tar.gz
mv 2.4 Softsearch2.4
cd Softsearch2.4
perl ./install.pl --prefix=$PWD
export PERL5LIB=$PERL5LIB:$PWD:$PWD/lib
