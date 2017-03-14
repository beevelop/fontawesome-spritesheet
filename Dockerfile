FROM beevelop/nodejs

ENV SIZE="64" \
    COLOR="black"

WORKDIR /opt/fa

COPY package.json Gruntfile.js ./

RUN apt update && apt install librsvg2-bin git -y && \
    npm i -g https://github.com/tupadr3/Font-Awesome-SVG-PNG.git  && \
    npm i

CMD export SIZE2=$(($SIZE * 2)) && \
    font-awesome-svg-png --color $COLOR --sizes "$SIZE,$SIZE2" && \
    mv $COLOR/png src && cd src/$SIZE2 && \
    rename 's/.png/\@2x.png/' *.png && \
    cd .. && mv $SIZE/*.png $SIZE2/*.png . && \
    rmdir $SIZE $SIZE2 && \
    cd .. && \
    npm start
    
