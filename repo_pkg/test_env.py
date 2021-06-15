import os

env_var = os.getenv("TEST_ACCESS_TOKEN")

if env_var is None:
    print("TEST HAS FAILED")
else:
    print("TEST HAS PASSED")