# Homebrew Tap for mdmend

A Homebrew tap for [mdmend](https://github.com/mohitmishra786/mdmend) - a fast, zero-dependency Markdown linter and fixer.

## Installation

```bash
# Add the tap
brew tap mohitmishra786/tap

# Install mdmend
brew install mdmend
```

Or in one command:

```bash
brew install mohitmishra786/tap/mdmend
```

## Usage

After installation, run:

```bash
mdmend --help
```

## What is mdmend?

mdmend is a fast, zero-dependency Markdown linter and fixer that automatically fixes common Markdown linting issues.

- **48 lint rules** (MD003–MD058), **38 auto-fixable**
- Language inference engine for fenced code blocks (MD040)
- Parallel worker pool for fast multi-file processing
- JSON output for CI/tooling integration

## Quick Start

```bash
# Fix all Markdown files in current directory
mdmend fix .

# Preview changes without modifying files
mdmend fix . --dry-run

# Lint only (exit 1 if violations found)
mdmend lint .
```

## More Information

- [GitHub Repository](https://github.com/mohitmishra786/mdmend)
- [Documentation](https://github.com/mohitmishra786/mdmend#readme)
- [Report Issues](https://github.com/mohitmishra786/mdmend/issues)

## License

MIT License - see [LICENSE](https://github.com/mohitmishra786/mdmend/blob/main/LICENSE) for details.
