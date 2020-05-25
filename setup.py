import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

version = {}
with open("./__version__.py") as fp:
    exec(fp.read(), version)

setuptools.setup(
    name="repo-test-slemasne",  # Replace with your own username
    version=version["__version__"],
    author="Example Author",
    author_email="author@example.com",
    description="A small example package",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/pypa/sampleproject",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.6",
)
