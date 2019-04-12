#!/bin/bash
rm -rf data;
mkdir data;
xsltproc xml_to_csv.xsl 179963_PDOC-ITS20171010-0406_20171014182534.851.xml;
xsltproc sent_text.xsl 179963_PDOC-ITS20171010-0406_20171014182534.851.xml > data/a.txt;
xsltproc sent_text.xsl 186462_PDOC-ITS20171011-0214_20171011152236.258.xml > data/b.txt;
xsltproc sent_text.xsl 180702_PDOC-ITS20180109-0080_20180110160418.842.xml > ./data/c.txt;
python pre_process.py data/a.txt > data/1.txt;
python pre_process.py data/b.txt > data/2.txt;
python pre_process.py ./data/c.txt > ./data/3.txt;
python wmd.py 1 2;
python wmd.py 1 3;
python wmd.py 2 3;
