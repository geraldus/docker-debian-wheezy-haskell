FROM geraldus/wheezy-haskell-src:latest

MAINTAINER Geraldus <heraldhoi@gmail.com>

# RUN apt-get update

# # cabal-install
# WORKDIR /root/tmp

# RUN git clone https://github.com/haskell/cabal.git

# WORKDIR cabal
# RUN git checkout tags/cabal-install-v1.22.0.0
# WORKDIR cabal-install
# RUN ./bootstrap.sh

# ENV PATH /root/.cabal/bin:$PATH

# # Updating Cabal library
# RUN cabal update
# RUN cabal install Cabal-1.22.0.0 \
#  && ghc-pkg hide Cabal-1.18.1.5

# RUN cabal --version
# RUN ghc-pkg list Cabal


# RUN for pkg in `ghc-pkg --user list  --simple-output`; \
#       do ghc-pkg unregister --force $pkg; \
#     done

# Cleanup

# WORKDIR /

# RUN rm -rf /usr/local/lib/ghc-7.8.4
# RUN rm /usr/local/bin/ghc-7.8.4 \
#        /usr/local/bin/ghci-7.8.4 \
#        /usr/local/bin/ghc-pkg-7.8.4 \
#        /usr/local/bin/haddock-ghc-7.8.4 \
#        /usr/local/bin/runghc-7.8.4

# RUN apt-get --purge -y remove haskell-platform \
#  && apt-get -y autoremove

# RUN rm -fr /root/tmp/*
# RUN rm -fr /tmp/*

# RUN rm -rf /var/lib/apt/lists/*

CMD ["ghci"]
