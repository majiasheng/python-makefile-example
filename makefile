.PHONY: help install clean

TARGET1=target1
TARGET2=target2

all: $(TARGET1) $(TARGET2)

# TARGET1 depends on both main1.py ad aux.txt
# this means that if either of the files change
# TARGET1 will be rebuilt
$(TARGET1): main1.py aux.txt
	python3 main1.py aux.txt

$(TARGET2): main2.py
	python3 main2.py

# install:
# 	python3 -m venv venv
# 	. venv/bin/activate

clean:
	rm -f $(TARGET1) $(TARGET2)

help:
	@echo "make prepare-dev"
	@echo "       prepare development environment, use only once"
	@echo "make clean"
	@echo "       remove built targets"
