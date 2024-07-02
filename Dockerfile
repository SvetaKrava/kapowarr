FROM mrcas/kapowarr-alpha:alpha-27

RUN find /app -perm -u+r -exec chmod og+r {} \;
RUN find /app -perm -u+x -exec chmod og+x {} \;
RUN find /app -perm -u+w -exec chmod og+w {} \;

CMD [ "python3", "/app/Kapowarr.py" ]
