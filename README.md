Vim Cloceal
===========
Based on [fwolanski/vim-clojure-conceal](https://github.com/fwolanski/vim-clojure-conceal) and some forks of this projects.

Conceals clojure keywords in vim. To change the symbols and/or keywords, there are a few options:

* Fork this project and simply change after/syntax/clojure.vim... and probably make a pull request
* Put in an issue what you'd like to have changed/optional.

For example:

```clojure
(defn square [x]
  (* x x))
```

becomes:

```clojure
(⨍ square [x]
  (* x x))
```
It requires at least Vim 7.3 and a unicode font.

Conceals
--------

| keyword/match | symbol |
| --- | --- |
| fn letfn \#( | λ |
| defn defn-  | ⨍ |
| partial     | ℘ |
| def         | ≡ |
| let         | ┝ |
| \#{         | ∈ |
| and         | ∧ |
| or          | ∨ |
| not         | ¬ |
| comp        | ∘ |
| doseq       | ∀ |
| recur       | ┅ |
| ->          | › |
| ->>         | » |
| when        | ◊ |
| if          | ◇ |


Installation
------------

Drop clojure.vim to `~/.vim/after/syntax` (Linux/Mac OS X/BSD) or
`~/vimfiles/after/syntax` folder (Windows). Or install with pathogen or vundle
in the usual way.

License
-------

BSD, short and sweet.

Credit
------

Original version by [Filip Wolanski][1]

Additions from forks: [Honza Pokorny][2] [Justin Holguin][3] [Jeb Beich][4]

[1]: https://github.com/fwolanski/vim-clojure-conceal
[2]: https://github.com/honza
[3]: https://github.com/holguinj
[4]: https://github.com/jebberjeb
