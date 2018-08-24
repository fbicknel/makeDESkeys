# makeDESkeys

This is a suite of scripts that can be used to generate DES keys using _Softoken_.

You have to set up _Softoken_ separately.

This doesn't actually ask _Softoken_ for keys every time, but instead uses
a list of keys that you set up using the `mdk` script:

```
   ~fbicknel/bin/mdk 5000 | /usr/bin/gpg --recipient fbicknel@gmail.com -a -e > ~fbicknel/Dropbox/Frank/keys
```

This makes 5000 keys and encrypts them, depositing the result in a keys file.

Now when you call on `rdk`, it will read a key off that file, decrypt it,
and show you what it got. If you use `readDESkeys` instead, it will do all
that and put the key on your clipboard for you to middle-mouse-button
it where needed (there's a \n at the end of it, so if you paste to a
web page, backspace over that newline.)

```bash
   $ rdk
   52430A04
   $ readDESkeys
   Key H80733A9 is on your clipboard.
   $ 
```

Notice that the scripts are all contained in one script called `makeDESkeys`. `rdk`, `mdk`, and `readDESkeys` are all links to that script, created when you install using the provided `Makefile`.
