FROM hugomods/hugo:latest

WORKDIR /src
EXPOSE 1313

CMD ["server", "--bind", "0.0.0.0"]
