FROM python:3.9.17

COPY raftos raftos/raftos
COPY examples raftos/examples
COPY tests raftos/tests
COPY requirements.txt raftos/

RUN pip install -r raftos/requirements.txt
RUN pip install -r raftos/tests/requirements.txt

# RUN echo "test results: "

CMD ["bash", "raftos/tests/run_tests.sh"]