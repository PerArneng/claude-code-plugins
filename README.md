# Claude Code Plugins

A collection of custom Claude Code plugins that enhance developer productivity and streamline common development workflows.

## Overview

This repository contains a marketplace of Claude Code plugins designed to augment the Claude Code CLI experience with specialized commands for code review, git operations, and other developer-centric tasks.

## What are Claude Code Plugins?

Claude Code plugins extend the functionality of the [Claude Code CLI](https://github.com/anthropics/claude-code) by adding custom slash commands that Claude can execute. These plugins allow developers to create reusable, domain-specific commands tailored to their workflows.

## Installation

To install plugins from this marketplace:

```bash
# Navigate to this repository
cd /path/to/claude-code-plugins

# Add the marketplace to Claude Code
claude-code /plugin marketplace add ./

# Install plugins
claude-code /plugin install
```

## Available Plugins

### per-coder

Claude add-ons that Per uses for daily work as a developer.

**Version:** 1.0.0

#### Commands

##### `/per-coder:review`

Performs a comprehensive code review of selected code or recent changes.

**What it reviews:**
- Potential bugs or edge cases
- Security concerns
- Performance issues
- Readability improvements

**Usage:**
```bash
/per-coder:review
```

The review output is concise and actionable, providing specific recommendations for improving code quality.

##### `/per-coder:pushgit`

Streamlines the git workflow by performing add, commit, and push operations with professionally formatted commit messages.

**Features:**
- Explicitly lists files being added for transparency
- Generates descriptive, professional commit messages
- Handles multiple files intelligently (splits into multiple commands if >10 files)
- Executes operations sequentially for reliability

**Usage:**
```bash
/per-coder:pushgit
```

**Example workflow:**
```bash
git add myfile1.json coder.js index.html
git commit -m "Add feature X with improvements to Y"
git push
```

## Repository Structure

```
claude-code-plugins/
├── .claude-plugin/
│   └── marketplace.json          # Marketplace configuration
├── plugins/
│   └── per-coder/
│       ├── .claude-plugin/
│       │   └── plugin.json       # Plugin metadata
│       └── commands/
│           ├── review.md         # Code review command
│           └── pushgit.md        # Git workflow command
└── README.md
```

## Marketplace Configuration

**Marketplace Name:** per-arnengs-tools

**Owner:** Per Arneng

## Development

### Creating New Commands

To add a new command to an existing plugin:

1. Create a new `.md` file in the plugin's `commands/` directory
2. Define the command's prompt and behavior in the markdown file
3. The command will automatically be available as `/plugin-name:command-name`

### Creating New Plugins

To create a new plugin:

1. Create a new directory under `plugins/`
2. Add a `.claude-plugin/plugin.json` file with plugin metadata
3. Create a `commands/` directory for command definitions
4. Update `.claude-plugin/marketplace.json` to include the new plugin

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests to improve existing plugins or add new ones.

## Resources

- [Claude Code Documentation](https://github.com/anthropics/claude-code)
- [Claude Code Plugin Guide](https://docs.anthropic.com/claude/docs/claude-code-plugins)

---

**Maintained by:** Per Arneng
