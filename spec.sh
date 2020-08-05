docker build . -t rspec -q
docker run -it --rm	-v $PWD:/app rspec:latest rspec
docker run -it --rm	-v $PWD:/app rspec:latest rubocop -a