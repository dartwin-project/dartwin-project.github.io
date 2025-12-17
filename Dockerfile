FROM jekyll/jekyll:latest

WORKDIR /srv/jekyll

# Copy Gemfile (but not Gemfile.lock to avoid permission issues)
COPY Gemfile ./

# Install dependencies
# Note: Jekyll 3.9 in Gemfile will use sassc instead of sass-embedded
# Install to system location to avoid permission issues
RUN bundle install --system

# Copy the rest of the site
COPY . .

# Expose port 4000
EXPOSE 4000

# Build and serve the site
CMD ["jekyll", "serve", "--host", "0.0.0.0", "--force_polling"]

