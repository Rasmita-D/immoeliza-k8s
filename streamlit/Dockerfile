FROM python:3.9-slim

WORKDIR /app

COPY ./using_api.py /app

RUN pip install --no-cache-dir streamlit
RUN pip install --no-cache-dir requests

EXPOSE 8501

CMD ["streamlit", "run", "using_api.py", "--server.port=8501", "--server.address=0.0.0.0"]
