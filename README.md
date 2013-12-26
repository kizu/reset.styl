# reset.styl [![Build Status][build]][build-link] [![NPM version][version]][version-link]
[build]: https://travis-ci.org/kizu/reset.styl.png?branch=master
[build-link]: https://travis-ci.org/kizu/reset.styl
[version]: https://badge.fury.io/js/reset.styl.png
[version-link]: http://badge.fury.io/js/reset.styl

## Just one powerful implementation of those popular resets in [Stylus](http://learnboost.github.com/stylus).

`reset.styl` is a resetting framework. Do you use [Eric Meyer's Reset](http://meyerweb.com/eric/thoughts/2011/01/03/reset-revisited/) or [Normalize.css](https://github.com/necolas/normalize.css/) from Necolas? Or do you have your own reset?

With `reset.styl` you can use any parts of those resets, or combine them with your overrides in an easy and maintainable way.

### Install

_installation instructions coming soon; in the meantime: use npm or git if you know how!_

### Basic usage

After including `reset.styl` (_more on this coming soon_) in your Stylus stylesheet, you can start using the two available resets: Meyers and Normalize.

To say `reset.styl` which reset you would like to use, you should write something like this:

``` Sass
use_reset('meyer')
```

or

``` Sass
use_reset('normalize')
```

This won't do anything on its own: it would only tell Stylus from where take the reset styles when you'll need them.

Then there are two possible ways to use the resets: in the global scope, and in the scope of a selector.

#### Global scope

Just call the `reset()` function in the global scope, passing what you wish to reset as arguments.

If you wouldn't pass anything or would pass `'all'` keyword like this:

``` Sass
reset('all')
```

You would get all the reset styles from the reset you've _used_.

However, in most cases you won't need to have all those styles in your stylesheet: you can pass a string with an array of elements you want to reset, like this:

``` Sass
reset('ul li a table')
```

This would reset only the given elements.

#### Local scope

If you don't want to have any element selectors, you could use the selector scope for resets. So, for Meyer's reset this:

``` Sass
use_reset('meyer')

.list
  reset('ul, ol')

  &-item
    reset('li')
```

would render to this:

``` CSS
.list,
.list-item {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
}
.list {
  list-style: none;
}
```
