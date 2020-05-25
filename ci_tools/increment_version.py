import os
import pkg_resources


if __name__ == "__main__":
    current_version = pkg_resources.get_distribution("repo-test-slemasne").version
    print(f"Current version: {current_version}")

    split_version = current_version.split(".")
    try:
        split_version[-1] = str(int(split_version[-1]) + 1)
    except ValueError:
        # do something about the letters in the last field of version
        pass
    new_version = ".".join(split_version)
    print(new_version)
    os.system(f"sed -i 's/{current_version}/{new_version}/g' __version__.py")
