FROM nixos/nix:2.2.1

COPY ./build/nix.conf /etc/nix/nix.conf

# Copy EO files into the container
COPY ./everfree-outpost /everfree-outpost/

WORKDIR /everfree-outpost

# Build this bad boi
RUN nix-shell util/nix --run "./configure --mods=cornucopia && ninja"

# RUN apk add git python3 ninja
# RUN git clone https://github.com/everfree-outpost/everfree-outpost.git
