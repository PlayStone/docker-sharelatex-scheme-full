FROM sharelatex/sharelatex

RUN cd /usr/local/texlive/ \
    && cp -a 2017 2019 \
    && cd 2019 \
    && export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/texlive/2019/bin/x86_64-linux/ \
    && echo $PATH \
    && wget http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh \
    && chmod u+x update-tlmgr-latest.sh \
    && sh update-tlmgr-latest.sh -- --upgrade \
    && tlmgr update --self --all