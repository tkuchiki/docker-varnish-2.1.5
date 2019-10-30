FROM ubuntu:18.04

WORKDIR /tmp
RUN apt-get update -y && apt-get install -y curl tar autotools-dev automake libtool autoconf libncurses5-dev xsltproc groff-base libpcre3-dev pkg-config python-docutils subversion
RUN curl -LO https://github.com/varnishcache/varnish-cache/archive/varnish-2.1.5.tar.gz && tar zxf varnish-2.1.5.tar.gz

WORKDIR /tmp/varnish-cache-varnish-2.1.5/
RUN sed -i -e 's/INCLUDES/AM_CPPFLAGS/g' lib/*/Makefile.am bin/*/Makefile.am
RUN sed -ie '4d' bin/varnishtest/Makefile.am
RUN sh autogen.sh || true
RUN sh configure && make && make install
RUN ldconfig

ENTRYPOINT ["/usr/local/sbin/varnishd"]
CMD ["--help"]
