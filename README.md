# repository.robloach

[Kodi](http://kodi.tv) Addons Repository for Kodi Addons by [RobLoach](http://github.com/robloach). The repository itself built with [kodi-create-repo](https://github.com/virajkanwade/kodi-create-repo), by [Viraj Kanwade](https://github.com/virajkanwade).

## Addons

- [script.lutris](https://github.com/RobLoach/script.lutris)

## Build

``` bash
python create_repository.py && ./update-directory-index.sh && ./push-gh-pages.sh build
```

# kodi-create-repo
Helper script to put together a Kodi repo for your plugins

**REQUIREMENTS:**
- Install lxml and GitPython. ``` pip install -r requirements.txt ```

**CONFIG:**
- Create a copy of ```config.json.sample``` and name it ```config.json```
- Edit config.json to set the correct values.

**RUN:**
- ```python create_repository.py```
- ```python create_repository.py --gh-pages``` *Will generate directory listing index pages for upload to github repo with gh-pages.*

**OUTPUT:**
- The repo structure files are stored in build directory

**NOTE:**
- Currently supports only addons available in github
- Uses tags for version number

**THANKS:**
- Special thanks to SimpleKodi (https://www.youtube.com/watch?v=zm1pvAt5uvU)

**TODO:**
- Handle addon update
- Handle separate kodi version for addons and repo structure
- FTP upload
- Github pages upload
