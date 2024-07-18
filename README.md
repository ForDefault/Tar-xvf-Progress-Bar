# Tar-xvf-Progress-Bar
Makes the tar -xvf in terminal have a progress bar by default (edits bashrc)

```
USER=$(whoami) && \
REPO_URL="https://github.com/ForDefault/Tar-xvf-Progress-Bar.git" && \
REPO_NAME=$(basename $REPO_URL .git) && \
git clone $REPO_URL && \
cd $REPO_NAME && \
chmod +x check_tar_and_run.sh && \
chmod +x add_tar_function.sh && \
./check_tar_and_run.sh && \
cd .. && rm -rf $REPO_NAME
```
