FROM clojure

RUN apt-get update
RUN apt-get install git maven -y
RUN git clone https://github.com/clojure/clojurescript.git
RUN clojurescript/script/build
RUN git clone https://github.com/swannodette/om.git
RUN lein new om-starter my-om-starter
WORKDIR /my-om-starter
