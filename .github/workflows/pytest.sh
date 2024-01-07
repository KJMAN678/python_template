name: test

on: [pull_request]

jobs:
  build:

    runs-on: ubuntu-latest
    strategy:
      matrix:
        python-version: ["3.10"]

    steps:
      - uses: actions/checkout@v3
      - name: Set up Python ${{ matrix.python-version }}
        uses: actions/setup-python@v4
        with:
          python-version: ${{ matrix.python-version }}
      - name: library install
        run: |
          pip install --upgrade pip
          pip install pytest==7.4.3
      - name: Test with pytest
        run: |
          pytest .
