import subprocess

subprocess.run(
    ["code", "--list-extensions", "--show-versions"],
    shell=True,
)
