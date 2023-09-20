FROM pandoc/extra
COPY noto/  /usr/share/fonts/
COPY eisvogel.latex /root/.local/share/pandoc/templates/
RUN  tlmgr install xecjk

