# Webformer [Fork Late 2023]
Source code of SIGIR2022 Long Paper:

[Webformer: Pre-training with Web Pages for Information Retrieval](https://dl.acm.org/doi/abs/10.1145/3477495.3532086)

Quick access to the [PDF WebFormer Paper](https://wqfcr.github.io/publications/WebFormer.pdf).

## Pipeline

### 0. Preliminary process

This is a Fork of the original WebFormer paper.  Original [ Git WebFormer](https://github.com/xrr233/Webformer.git).

### 1. Preinstallation

Prepare a **Python3** environment.

Since WeebFormer is a 2022 paper, the dependencies are outadeted and installing them following the requirements.txt causes errors:

```
#ERROR PRONE INSTALLATION Original
cd Webformer
pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
```

**SSUGGESTED DEPENDENCIES INSTALLATION METHOD**

Run `requirements.ipynb` to test wich libs are already installed then manually install via `pip` the missing ones, excluding `pytrec-eval`. 

In the end run the `bert_base_uncased` downloader cell, to download and store bert on your local machine.


### 2. Get Corpus Data

Download datasets:

- SWDE from [Accademic Torrent](https://academictorrents.com/details/411576c7e80787e4b40452360f5f24acba9b5159).

- Common Crawl from [their link](https://commoncrawl.org/get-started).

put inside `Preprocess/data/endata`

### 3. Prepare the Corpus Data
Every piece of corpus data is the raw HTML code of a web page.
Run the following commands to clear irrelevant content and get the training corpus:
```
  python Preprocess/html2json.py 
```
Remember to set your data path in the code.

### 4. Prepare the Training Data
Use the json file output in the previous step to generate training data.
```
  bash construct_data.sh
```

### 5. Running Pre-training

```
 bash train.sh
```

## Citations

```
@inproceedings{DBLP:conf/sigir/GuoMMQZJCD22,
  title     = {Webformer: Pre-training with Web Pages for Information 
  url       = {https://doi.org/10.1145/3477495.3532086},
}
```
