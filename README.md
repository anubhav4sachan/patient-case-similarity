# Patient Case Similarity

patient-case-similarity is a Natural Language Processing (NLP) project used to calculate the similarity between two patients using WMD (Word Movers Distance).

The project was done as a part of `Smart India Hackathon 2019` at `National Institute of Technology Warangal, India.`
Project depicted was presented at the national level of SIH 2019.

### How to use?

The user needs to provide the permission in linux Terminal using
`chmod +x script.sh`

After the permission is granted, user has to run the `script.sh`

If you're having trouble running the script, you can type the commands manually in Linux terminal present in `script.sh` file.

#### Work Flow

The sample data (given to us) is present `./'Sample Dataset'/NER_XML/`
The file used in shell script is copied from here to the root directory.

xslt is used for transforming and extracting annotated data into .csv from .xml

The data from .xml file is extracted and stored in `./data/` directory. The extracted data is preprocessed using the `pre_process.py` and finally the WMD Score is calculated using `wmd.py`.