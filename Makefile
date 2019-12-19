PROJECTNAME="shellcode"

first:
	@go version

default: first
	echo ${PROJECTNAME}

echo:
	@echo ${PROJECTNAME}

.PHONY: default echo first
