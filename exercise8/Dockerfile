FROM haskell:9.4

WORKDIR /app

COPY stack.yaml zad8.cabal ./

RUN stack build --only-dependencies

COPY . .

RUN stack build

CMD ["stack", "exec", "zad8"]
