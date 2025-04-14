.PHONY: prepare format fix analyze test coverage view-coverage prepare-with-report

# Main command to prepare code for push (without HTML report by default)
prepare: format fix analyze test

# Prepare code and generate HTML report
prepare-with-report: prepare coverage view-coverage

# Format code
format:
	@echo "📝 Running dart format..."
	@dart format . || (echo "❌ Formatting failed"; exit 1)

# Apply automatic fixes
fix:
	@echo "🔧 Running dart fix..."
	@dart fix --apply || (echo "❌ Fix failed"; exit 1)

# Run analyzer
analyze:
	@echo "🔍 Running dart analyze..."
	@dart analyze || (echo "❌ Analysis failed"; exit 1)

# Run tests with coverage
test:
	@echo "🧪 Running tests with coverage..."
	@very_good test --coverage --min-coverage 100 --recursive || (echo "❌ Tests failed or coverage threshold not met"; exit 1)

# Generate HTML coverage report
coverage:
	@echo "📊 Generating HTML coverage report..."
	@genhtml coverage/lcov.info -o coverage/html || (echo "❌ Failed to generate coverage report"; exit 1)
	@echo "✅ Coverage report generated at coverage/html/index.html"

# View coverage report in browser
view-coverage:
	@echo "🔍 Opening coverage report in browser..."
	@open coverage/html/index.html 2>/dev/null || xdg-open coverage/html/index.html 2>/dev/null || explorer coverage/html/index.html 2>/dev/null || (echo "❌ Could not open browser automatically. Please open coverage/html/index.html manually.")

# Show help information
help:
	@echo "Available commands:"
	@echo "  make prepare            - Run all checks without generating HTML report"
	@echo "  make prepare-with-report - Run all checks and generate/view HTML report"
	@echo "  make format             - Format code with dart format"
	@echo "  make fix                - Apply automatic fixes with dart fix"
	@echo "  make analyze            - Run dart analyzer"
	@echo "  make test               - Run tests with coverage"
	@echo "  make coverage           - Generate HTML coverage report"
	@echo "  make view-coverage      - Open the HTML coverage report in a browser" 