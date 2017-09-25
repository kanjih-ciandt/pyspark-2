FROM fokkodriesprong/docker-pyspark-2

MAINTAINER Kanji Hara Neto <kanjih@ciandt.com>

RUN pip install --upgrade --quiet opencv-python scikit-image google-cloud google_compute_engine pytest-cov

