# Dnaderlion PWN Platform

 ## What inside?

- **pwntools**

- **pwndbg**

- **radare2**
	```sh
	 ____  ___  ___  ___ ____  ___   ____
	|  _ \/   \|   \/   \  _ \/ _ \ (__  \
	|    (  -  | |  ) -  |   (   _/ /  __/
	|__\__|_|__|___/__|__|_\__|___| |____|
	
	             https://www.radare.org
	
	                             --pancake
	```
- **netcat**
  > you can use netcat to connect server in this docker

## How to use?

**You shuld replace the`-v`content to your own path, and must be `absolute path`.** 

```shell
docker run -it --name pwn -v /your/file/path:/home/danderlion/work liona/danderlion
```

- example:

  > if you at your desktop, it might  be:
  >
  > ```shell
  > docker run -it --name pwn -v /home/yourname/Desktop:/home/danderlion/work liona/danderlion
  > ```

