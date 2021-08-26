#!/bin/bash
pdftk main.pdf cat 1 output cover.pdf
pdftk main.pdf cat 5-end output interior.pdf
