Tomado de [[Introduction to GIS Programming (Geog-312)]]
# What is UV?
[uv](https://github.com/astral-sh/uv) is an extremely fast Python package and project manager, written in Rust. It is designed to be a drop-in replacement for pip.
## Install [uv](https://geog-312.gishub.org/book/geospatial/get_started.html#install-uv "Link to this heading")

You can install uv as follows:

```python
# macOS and Linux:
curl -LsSf https://astral.sh/uv/install.sh | sh

# Windows:
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"

# pip
pip install uv
```

# Create a UV Project


# Main features
## [Scripts](https://docs.astral.sh/uv/getting-started/features/#scripts)

Executing standalone Python scripts, e.g., `example.py`.

- `uv run`: Run a script.
- `uv add --script`: Add a dependency to a script
- `uv remove --script`: Remove a dependency from a script

## [Projects](https://docs.astral.sh/uv/getting-started/features/#projects)

Creating and working on Python projects, i.e., with a `pyproject.toml`.

- `uv init`: Create a new Python project.
- `uv add`: Add a dependency to the project.
- `uv remove`: Remove a dependency from the project.
- `uv sync`: Sync the project's dependencies with the environment.
- `uv lock`: Create a lockfile for the project's dependencies.
- `uv run`: Run a command in the project environment.
- `uv tree`: View the dependency tree for the project.
- `uv build`: Build the project into distribution archives.
- `uv publish`: Publish the project to a package index.
## [Tools](https://docs.astral.sh/uv/getting-started/features/#tools)

Running and installing tools published to Python package indexes, e.g., `ruff` or `black`.

- `uvx` / `uv tool run`: Run a tool in a temporary environment.
- `uv tool install`: Install a tool user-wide.
- `uv tool uninstall`: Uninstall a tool.
- `uv tool list`: List installed tools.
- `uv tool update-shell`: Update the shell to include tool executables.

## [The pip interface](https://docs.astral.sh/uv/getting-started/features/#the-pip-interface)

Manually managing environments and packages — intended to be used in legacy workflows or cases where the high-level commands do not provide enough control.

Creating virtual environments (replacing `venv` and `virtualenv`):

- `uv venv`: Create a new virtual environment.

Managing packages in an environment (replacing [`pip`](https://github.com/pypa/pip) and [`pipdeptree`](https://github.com/tox-dev/pipdeptree)):

- `uv pip install`: Install packages into the current environment.
- `uv pip show`: Show details about an installed package.
- `uv pip freeze`: List installed packages and their versions.
- `uv pip check`: Check that the current environment has compatible packages.
- `uv pip list`: List installed packages.
- `uv pip uninstall`: Uninstall packages.
- `uv pip tree`: View the dependency tree for the environment.

Locking packages in an environment (replacing [`pip-tools`](https://github.com/jazzband/pip-tools)):

- `uv pip compile`: Compile requirements into a lockfile.
- `uv pip sync`: Sync an environment with a lockfile.
