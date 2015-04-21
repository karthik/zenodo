![](https://img.shields.io/badge/development-active-blue.svg)  [![Build Status](https://travis-ci.org/ropensci/zenodo.svg?branch=master)](https://travis-ci.org/ropensci/zenodo)

# R interface to Zenodo  
![zenodo_logo](https://zenodo.org/img/logos/zenodo-black-200.png)

## What is Zenodo?
Zenodo is an open repository for scientific data based at CERN  in Swizerland. Zenodo facilitates researchers to share and preserve _any_ research outputs in any size, any format and from any science. Zenodo also mints DOIs.

__Setup__
* Sign up for [zenodo](https://zenodo.org/youraccount/register)
* Log in and go your profile
* Click personal access tokens and grab one.

Then add the following line to your `.rprofile`. You can also pass this explicitly to every function, but exposing the token will compromise your account.  

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
| `zenodo_dir()` | Provides a `data.frame` with listing of current Zenodo collections.

## Resources

* The [full API documentation](https://zenodo.org/dev) for the Zenodo API.

---


[![ropensci_footer](http://ropensci.org/public_images/github_footer.png)](http://ropensci.org)
