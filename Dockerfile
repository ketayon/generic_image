FROM python:3.6.9
RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip3 install Flask==1.1.2 uWSGI==2.0.18
WORKDIR /app
COPY app /app
COPY cmd.sh /
EXPOSE 9090 9191
USER uwsgi
CMD ["/cmd.sh"]