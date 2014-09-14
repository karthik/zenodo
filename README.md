[![Build Status](https://travis-ci.org/ropensci/rzenodo.png?branch=master)](https://travis-ci.org/ropensci/rzenodo)

# R interface to Zenodo

Super early alpha at this time. Nothing really works yet.

__Setup__
* Sign up for [zenodo](https://zenodo.org/youraccount/register)
* Log in and go your profile
* Click personal access tokens and grab one.

Then add them to your `.rprofile` or source before running any script. Do not commit this to any public location as it is an application specific password to your account.

```coffee
options(zenodo_key = "YOUR-KEY")
```


__Installing this package__

```coffee
devtools::install_github("ropensci/rzenodo")
```
