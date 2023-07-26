FROM python:3.9.17

# copy required files
COPY raftos raftos/raftos
COPY examples raftos/examples
COPY tests raftos/tests
COPY requirements.txt raftos/

# install main and test dependencies
RUN pip install -r raftos/requirements.txt
RUN pip install -r raftos/tests/requirements.txt

# run tests
RUN cd raftos/tests && bash run_tests.sh

# change the directory to 'examples' directory to run the bash script
WORKDIR /raftos/examples

CMD ["bash", "run_cluster.sh"]