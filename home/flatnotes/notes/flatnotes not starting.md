Inspect the logs 

```bash
docker ps -a
docker logs <container_name>
```

If you get logs like below  

```txt
etting file permissions...
Starting flatnotes as user 1000...
Traceback (most recent call last):
  File "<frozen runpy>", line 198, in _run_module_as_main
  File "<frozen runpy>", line 88, in _run_code
  File "/usr/local/lib/python3.11/site-packages/uvicorn/__main__.py", line 4, in <module>
    uvicorn.main()
  File "/usr/local/lib/python3.11/site-packages/click/core.py", line 1462, in __call__
    return self.main(*args, **kwargs)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/click/core.py", line 1383, in main
    rv = self.invoke(ctx)
         ^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/click/core.py", line 1246, in invoke
    return ctx.invoke(self.callback, **ctx.params)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/click/core.py", line 814, in invoke
    return callback(*args, **kwargs)
           ^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/uvicorn/main.py", line 423, in main
    run(
  File "/usr/local/lib/python3.11/site-packages/uvicorn/main.py", line 593, in run
    server.run()
  File "/usr/local/lib/python3.11/site-packages/uvicorn/server.py", line 67, in run
    return asyncio_run(self.serve(sockets=sockets), loop_factory=self.config.get_loop_factory())
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/uvicorn/_compat.py", line 23, in asyncio_run
    return runner.run(main)
           ^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/asyncio/runners.py", line 118, in run
    return self._loop.run_until_complete(task)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "uvloop/loop.pyx", line 1518, in uvloop.loop.Loop.run_until_complete
  File "/usr/local/lib/python3.11/site-packages/uvicorn/server.py", line 71, in serve
    await self._serve(sockets)
  File "/usr/local/lib/python3.11/site-packages/uvicorn/server.py", line 78, in _serve
    config.load()
  File "/usr/local/lib/python3.11/site-packages/uvicorn/config.py", line 438, in load
    self.loaded_app = import_from_string(self.app)
                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/uvicorn/importer.py", line 19, in import_from_string
    module = importlib.import_module(module_str)
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/importlib/__init__.py", line 126, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "<frozen importlib._bootstrap>", line 1204, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1176, in _find_and_load
  File "<frozen importlib._bootstrap>", line 1147, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 690, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 940, in exec_module
  File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
  File "/app/server/main.py", line 19, in <module>
    note_storage: BaseNotes = global_config.load_note_storage()
                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/app/server/global_config.py", line 30, in load_note_storage
    return FileSystemNotes()
           ^^^^^^^^^^^^^^^^^
  File "/app/server/notes/file_system/file_system.py", line 56, in __init__
    self.index = self._load_index()
                 ^^^^^^^^^^^^^^^^^^
  File "/app/server/notes/file_system/file_system.py", line 176, in _load_index
    if index_dir_exists and whoosh.index.exists_in(
                            ^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/whoosh/index.py", line 136, in exists_in
    ix = open_dir(dirname, indexname=indexname)
         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/whoosh/index.py", line 123, in open_dir
    return FileIndex(storage, schema=schema, indexname=indexname)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/whoosh/index.py", line 421, in __init__
    TOC.read(self.storage, self.indexname, schema=self._schema)
  File "/usr/local/lib/python3.11/site-packages/whoosh/index.py", line 632, in read
    check_size("int", _INT_SIZE)
  File "/usr/local/lib/python3.11/site-packages/whoosh/index.py", line 626, in check_size
    sz = stream.read_varint()
         ^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/whoosh/filedb/structfile.py", line 191, in read_varint
    return read_varint(self.read)
           ^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/whoosh/util/varints.py", line 102, in read_varint
    b = ord(readfn(1))
        ^^^^^^^^^^^^^^
TypeError: ord() expected a character, but string of length 0 found
```

Then, delete the `~/flatnotes/index` directory and restart docker container.

```bash
sudo rm -rf ~/flatnotes/index
docker stop flatnotes
docker rm flatnotes
docker compose up -d
```

