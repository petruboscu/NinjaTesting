import os
import sys


def run_tests(tag: str):
    os.system(f'behave --tags={tag}')


if __name__ == '__main__':
    if len(sys.argv) == 2:
        run_tests(sys.argv[1])
    else:
        exit(1)
