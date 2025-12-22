FROM haskell:9.4

WORKDIR /app

COPY stack.yaml zad7.cabal ./

RUN stack build --only-dependencies

COPY . .

RUN stack build

CMD ["stack", "exec", "zad7"]
