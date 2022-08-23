import os


def run_tests(tag: str):
    os.system(f'behave --tags={tag}')


if __name__ == '__main__':
    run_tests(input('Choose tag (all, ignore, fight, run): '))
