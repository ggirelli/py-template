# Copyright (c) 2025 Gabriele Girelli

"""A CLI entry hook example."""

import logging


def main() -> None:
    """Example CLI entry hook."""
    logging.getLogger(__name__).info("Hello from py-template!")
