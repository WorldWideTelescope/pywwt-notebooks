# Example notebooks for pywwt

This repository contains example notebooks for the
[pywwt](https://pywwt.readthedocs.org) package, which provides access to the
[AAS] [WorldWide Telescope] inside Python and Jupyter environments. Clicking
any of the following links will launch an example notebook in the cloud:

[AAS]: https://aas.org/
[WorldWide Telescope]: http://www.worldwidetelescope.org/

* [Basic introduction](http://binder.wwt-forum.org/v2/gh/WorldWideTelescope/pywwt-notebooks/master?urlpath=lab/tree/first-tutorials/basic.ipynb)
* [Showing Kepler K2 fields of view](http://binder.wwt-forum.org/v2/gh/WorldWideTelescope/pywwt-notebooks/master?urlpath=lab/tree/first-tutorials/kepler2_fovs.ipynb)
* [Plotting data on the surface of a planet](http://binder.wwt-forum.org/v2/gh/WorldWideTelescope/pywwt-notebooks/master?urlpath=lab/tree/first-tutorials/planet_layers.ipynb)
* [Solar system mode](http://binder.wwt-forum.org/v2/gh/WorldWideTelescope/pywwt-notebooks/master?urlpath=lab/tree/first-tutorials/solar_system_simulation.ipynb)

*Note: it is usually fast to launch these notebooks, but if updates were
recently merged into this repository, you may have to wait a few minutes for
the backing software images to be rebuilt.*


## Testing the BinderHub infrastructure locally

If you’d like to make changes to this repository and want to test how they’ll
work in our [BinderHub] instance, you can do so by intalling and using
[jupyter-repo2docker] — assuming your machine also has [Docker] installed. Just
run:

```
$ jupyter-repo2docker /path/to/pywwt-notebooks
```

to build an image of this repository and launch it as a server. To test the
[JupyterLab] environment as opposed to classic Jupyter, open up the URL
suggested by the `jupyter-repo2docker` command and change its path to `/lab`
instead of `/tree`.

[BinderHub]: https://binderhub.readthedocs.io/
[jupyter-repo2docker]: https://repo2docker.readthedocs.io/
[Docker]: https://docs.docker.com/install/overview/
[JupyterLab]: https://jupyterlab.readthedocs.io/


## Acknowledgments

The [WorldWide Telescope] is brought to you by the
[American Astronomical Society](https://aas.org/) (AAS). Work on these
notebooks is supported by the American Astronomical Society and grant
[1642446] from the US [National Science Foundation].

[1642446]: https://www.nsf.gov/awardsearch/showAward?AWD_ID=1642446
[National Science Foundation]: https://www.nsf.gov/
