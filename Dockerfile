FROM jupyter/datascience-notebook

# Graphvizのインストール
USER root
RUN apt-get update && apt-get install -y graphviz

# ユーザーをjovyanに戻す
USER jovyan

# Python依存関係のインストール
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
