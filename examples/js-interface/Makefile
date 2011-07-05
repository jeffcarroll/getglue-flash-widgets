SRC = Main.as
MXMLC = mxmlc
FLAGS = -source-path+="../../src" -static-link-runtime-shared-libraries
OUT = js_interface.swf

$(OUT): $(SRC)
	$(MXMLC) $(SRC) $(FLAGS) -output $(OUT)

clean:
	rm $(OUT)

PHONY: clean
