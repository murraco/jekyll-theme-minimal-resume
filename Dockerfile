FROM ruby:3.2-bookworm

RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends ca-certificates curl \
  && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
  && apt-get install -y --no-install-recommends nodejs \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /srv/jekyll

ENV LANG=C.UTF-8 \
    BUNDLE_SILENCE_ROOT_WARNING=1

COPY Gemfile ./
RUN bundle install

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm run build

EXPOSE 4000

# github-pages pins Jekyll 3.x (no built-in live reload like Jekyll 4).
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000"]
