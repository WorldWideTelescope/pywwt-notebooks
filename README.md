# Example notebooks for pywwt

This repository contains example notebooks for the
[pywwt](https://pywwt.readthedocs.org) package, which provides access to the
[AAS] [WorldWide Telescope] inside Python and Jupyter environments.

[AAS]: https://aas.org/
[WorldWide Telescope]: http://www.worldwidetelescope.org/

🚀🚀 [**Click here to run these examples in the cloud!**][launch] 🚀🚀

[launch]: https://mybinder.org/v2/gh/WorldWideTelescope/pywwt-notebooks/master?urlpath=lab/tree/Start%20Here.ipynb

*Note: it is usually fast to launch a notebook server, but if updates were
recently merged into this repository, you may have to wait a few minutes for
the backing software images to be rebuilt.*

Once you’ve launched a cloud server, you can upload and run your own notebooks
[as shown in this YouTube video](https://www.youtube.com/watch?v=gi2oC4AYrWU).
(Note that while the video shows an older organization of this notebook
collection, the general technique still applies.)


## Testing the BinderHub infrastructure locally

If you’d like to make changes to this repository and want to test how they’ll
work on [BinderHub], you can do so by installing and using [jupyter-repo2docker]
— assuming your machine also has [Docker] installed. Just run:

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


## Credits

Authorship information for each notebook is included in a statement at the end
of each. If you contribute improvements to an existing notebook, you are
strongly encouraged to add your name!


## Acknowledgments

The AAS WorldWide Telescope system is a [.NET Foundation] project managed by
the non-profit [American Astronomical Society] (AAS). Work on WWT has been
supported by the AAS, the US [National Science Foundation] (grants [1550701]
and [1642446]), the [Gordon and Betty Moore Foundation], and [Microsoft].

[.NET Foundation]: https://dotnetfoundation.org/
[American Astronomical Society]: https://aas.org/
[National Science Foundation]: https://www.nsf.gov/
[1550701]: https://www.nsf.gov/awardsearch/showAward?AWD_ID=1550701
[1642446]: https://www.nsf.gov/awardsearch/showAward?AWD_ID=1642446
[Gordon and Betty Moore Foundation]: https://www.moore.org/
[Microsoft]: https://www.microsoft.com/
