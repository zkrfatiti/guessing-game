# Makefile for Guessing Game

# Variables
SCRIPT=guessinggame.sh
README=README.md

# Default target
all: $(README)

# Generate README.md
$(README):
	@echo "# Guessing Game" > $(README)
	@echo "" >> $(README)
	@echo "## Date and Time" >> $(README)
	@echo "Make was run on: $$(date)" >> $(README)
	@echo "" >> $(README)
	@echo "## Number of Lines in guessinggame.sh" >> $(README)
	@echo "$$(wc -l < $(SCRIPT))" >> $(README)

# Clean up
clean:
	rm -f $(README)

# Phony targets
.PHONY: all clean
