[![Build Status](https://travis-ci.org/ropensci/rzenodo.png?branch=master)](https://travis-ci.org/ropensci/rzenodo)

# R interface to Zenodo  
![zenodo_logo](https://zenodo.org/img/zenodo.svg)

__Setup__
* Sign up for [zenodo](https://zenodo.org/youraccount/register)
* Log in and go your profile
* Click personal access tokens and grab one.

Then add them to your `.rprofile` or source before running any script. Do not commit this to any public location as it is an application specific password to your account.

```r
options(zenodo_token = "YOUR-KEY")
```


__Installing this package__

```r
devtools::install_github("ropensci/rzenodo")
```

## Functions

| Function  | Description  |
|---|---|
| `zenodo_dir()` | Provides a `data.frame` with listing of current Zenodo research products

[![ropensci_footer](http://ropensci.org/public_images/github_footer.png)](http://ropensci.org)
