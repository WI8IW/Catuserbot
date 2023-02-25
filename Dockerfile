FROM WI8IW/UserBot:slim-buster

#clonning repo 
RUN git clone https://github.com/WI8IW/UserBot /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
