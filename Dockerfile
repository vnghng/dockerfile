FROM ubuntu
COPY text.txt .
CMD ["cat" ,"text.txt"]
