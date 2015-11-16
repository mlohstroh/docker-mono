FROM ubuntu
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list \
   && apt-get update \
   && apt-get install -yq mono-complete ca-certificates-mono \
   && apt-get clean \
   && rm -rf /var/lib/apt/lists/*