#Recipes

CODE_SRC ?= src/

all: $(CODE_SRC) init

init:
	@docker-compose up -d

code-import: $(CODE_SRC)
$(CODE_SRC):
	@.docker/framework.sh

teste:
ifdef $(t1)
	@echo [T1] $(t1)
endif

ifdef $t2
	@echo [T2] $t2
endif
	@echo [T3]

down:
ifdef $volumes
	@echo [Docker] Delete all valumes? [Y/n]
	@read n1; if [ $$n1 = "y" ]; then DELETE_VOLUMES = --volumes; fi
endif
ifdef $images
	@echo [Docker] Delete all images? [Y/n]
	@read n2; if [ $$n2 = "y" ]; then DELETE_IMAGES = --rmi; fi
endif
	@docker-compose down $(DELETE_VOLUMES) $(DELETE_IMAGES) local

build:
	@docker-compose up -d --build

.PHONY: all code-import init