FROM python:3

RUN pip install --upgrade pip
RUN pip install \
        sqlmesh \
        sqlmesh[web] \
        sqlmesh[databricks] \
        databricks-sql-connector[pyarrow]

EXPOSE 8000

WORKDIR /src

SHELL ["/bin/sh", "-c"]
ENTRYPOINT []
CMD ["sqlmesh", "ui", "--host", "0.0.0.0"]