all:
	@echo "Nothing to do."

README_TARGET:=README.mkd
TREE_CMD:=tree -atrhn --du --filelimit 20 -I .git -o $(README_TARGET)

readme:
	$(TREE_CMD)
	echo -e "\`$(TREE_CMD)\`\n\n`cat $(README_TARGET)`" > $(README_TARGET)
	echo -e "\n> Generated on `date --utc +'%A, %B %e, %Y at %T %p %Z.'`" >> $(README_TARGET)
