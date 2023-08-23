FROM python:3.11-alpine

WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt -i https://mirrors.ustc.edu.cn/pypi/web/simple
RUN chmod +x ./scripts/*.sh

CMD ["/bin/sh", "./scripts/run.sh"]
