all:
	@echo "Nothing to do."

README_TARGET:=README.mkd

# This is getting out of control
TREE_CMD:=tree -atrhn --du --filelimit 40\
	-I '.git|Makefile|README.mkd|tags|plugs|sessions|swap|undo|view|.netrwhist'

readme:
	$(TREE_CMD) > $(README_TARGET)
	# echo -e "\`$(TREE_CMD)\`\n\`\`\`\n`cat $(README_TARGET)`\n\`\`\`" > $(README_TARGET)
	echo -e "\`\`\`\n`cat $(README_TARGET)`\n\`\`\`" > $(README_TARGET)
	echo -e "\n> Generated on `date --utc +'%A, %B %e, %Y at %T %p %Z.'`" >> $(README_TARGET)
	git add $(README_TARGET)
	git commit -m "Update $(README_TARGET)"

push: readme
	git push origin master
