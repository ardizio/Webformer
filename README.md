# Webformer
Source code of SIGIR2022 Long Paper:

[Webformer: Pre-training with Web Pages for Information Retrieval](https://dl.acm.org/doi/abs/10.1145/3477495.3532086)

## Pipeline

### Preinstallation
First, prepare a **Python3** environment, and run the following commands:
```
  git clone https://github.com/xrr233/Webformer.git Webformer
```

Since this is a 2022 paper, the dependencies are outadeted and installing them cause errors using the following commands:

```
  #ERROR PRONE INSTALLATION:
  cd Webformer
  pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
```

INSTEAD, I manually installed via `pip` all requirements, excluding `pytrec-eval`.

### Get Corpus Data



### Prepare the Corpus Data
Every piece of corpus data is the raw HTML code of a web page.
Run the following commands to clear irrelevant content and get the training corpus:
```
  python Preprocess/html2json.py 
```
Remember to set your data path in the code.

### Prepare the Training Data
Use the json file output in the previous step to generate training data.
```
  bash construct_data.sh
```

### Running Pre-training

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
