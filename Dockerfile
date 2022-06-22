########################################################################
# Dependancy layer
# Gem are installed, assets are compiled. All build libraries to compiles
# decidim gems are already installed.
########################################################################
FROM git.octree.ch:4567/decidim/decidim-quickstart/0.24:quickstart-latest  AS build
LABEL maintainer="hello@octree.ch"

# Install gems
COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundle install --quiet
    
# Remove quickstart migrations, and use ours
RUN rm -rf db/migrate
COPY . .


########################################################################
# Final layer
# Go back to an alpine image, with the bare minimum. Will copy
# gem binaries and assets from the dependancy layer
########################################################################
FROM git.octree.ch:4567/decidim/decidim-quickstart/0.24:toolkit-alpine-latest
LABEL maintainer="hello@octree.ch"

COPY --from=build /usr/local/bundle/ /usr/local/bundle/
COPY --from=build --chown=$USER:$GROUP /home/$USER/app .
RUN chmod +x $RAILS_ROOT/bin/entrypoint.sh && bundle binstubs --all