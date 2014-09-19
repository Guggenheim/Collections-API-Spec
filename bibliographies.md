Bibliographies
====================

For the purposes of this API, bibliographies are bibiliographic itemns that may or may not be connetced to an object or object constituent. 

## Endpoints

<table>
    <thead>
        <th>Endpoint</th>
        <th>Description</th>
    </thead>
    <tbody>
        <tr>
            <td>/bibliographies</td>
            <td>Index of bibiliography endpoints</td>
        </tr>
        <tr>
            <td>/bibliographies/{id}</td>
            <td>Retrieve bibiliography with corresponding `id`</td>
        </tr>
    </tbody>
</table>

### Example index response

Request:

    curl -H "X-GUGGENHEIM-API-KEY: [valid api key goes here]" -H "Accept: application/vnd.guggenheim.collection+json" http://api.guggenheim.org/collections/bibliographies

Response:

    {
        "_links": {
            "_self": {
                "href": "http://api.guggenheim.org/collections/bibliographies"
            }, 
            "item": {
                "href": "http://api.guggenheim.org/collections/bibliographies/{id}"
            }
        }
    }

The index endpoint provides a list of links to other bibiliography-related endpoints.

### `/bibliographies/{id}`

Returns the bibiliography with the corresponding id.

#### Example

Request:

    curl -H "X-GUGGENHEIM-API-KEY: [valid api key goes here]" -H "Accept: application/vnd.guggenheim.collection+json" http://api.guggenheim.org/collections/bibliographies/996

Response:

	{
	    "_links": {
	        "_self": {
	            "href": "http://api.guggenheim.org/collections/bibliographies/996"
	        }
	    },
	    "constituents": [
	        {
	            "constituent": {
	                "_links": {
	                    "_self": {
	                        "href": "http://api.guggenheim.org/collections/2462"
	                    }
	                },
	                "dates": {
	                    "begin": 0,
	                    "display": null,
	                    "end": 0
	                },
	                "display": "Peter Frank",
	                "firstname": "Peter",
	                "has_bio": false,
	                "id": 2462,
	                "lastname": "Frank",
	                "middlename": null,
	                "objects": {
	                    "total_count": 0
	                },
	                "sort": "Frank Peter",
	                "suffix": null
	            },
	            "displayed": true,
	            "order": 1,
	            "role": "Author"
	        }
	    ],
	    "copyright": "\u00a9 Solomon R. Guggenheim Museum",
	    "description": "&lt;p&gt;As Director Thomas M. Messer wished &amp;#8220;to avoid too institutional an emphasis in the inherently fluid area of contemporary art,&amp;#8221; the third iteration of the Exxon National Exhibition used the lens of guest curator, critic Peter Frank, as the interpolator between museum and art. Frank also wrote the catalogue&amp;#8217;s introductory text. Each of the nineteen diverse American artists is featured with biographical information, a short artist's statement, and images of their work in both color and black and white. The artists featured are Michael Brakke, Guy de Cointet, Manny Farber, Vernon Fisher, Heidi Gl&amp;#252;ck, Tom Green, William Haney, Patrick Hogan, Tom Holste, Barbara Kruger, Philip Larson, Jim Richard, Bill Richards, Darryl Sapien, Norie Sato, Gael Stack, John White, George Woodman, and Frank Young.&lt;/p&gt;",
	    "edition": null,
	    "excerpt": null,
	    "has_media": true,
	    "id": 996,
	    "language": "en",
	    "media": [
	        {
	            "assets": {
	                "full": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/full/pub_19_artists_1981_exxon_001.jpg"
	                        }
	                    },
	                    "height": 490,
	                    "width": 433
	                },
	                "hires": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/hires/pub_19_artists_1981_exxon_001.jpg"
	                        }
	                    },
	                    "height": 512,
	                    "width": 452
	                },
	                "large": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/large/pub_19_artists_1981_exxon_001.jpg"
	                        }
	                    },
	                    "height": 902,
	                    "width": 796
	                },
	                "medium": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/previews/pub_19_artists_1981_exxon_001.jpg"
	                        }
	                    },
	                    "height": 300,
	                    "width": 265
	                },
	                "small": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/thumbnails/pub_19_artists_1981_exxon_001.jpg"
	                        }
	                    },
	                    "height": 160,
	                    "width": 141
	                },
	                "tiny": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/postagestamps/pub_19_artists_1981_exxon_001.jpg"
	                        }
	                    },
	                    "height": 62,
	                    "width": 55
	                }
	            },
	            "copyright": null,
	            "format": "JPEG",
	            "orientation": "portrait",
	            "rank": 1,
	            "sequence": null,
	            "type": "Image"
	        },
	        {
	            "assets": {
	                "full": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/full/pub_19_artists_1981_exxon_002.jpg"
	                        }
	                    },
	                    "height": 490,
	                    "width": 435
	                },
	                "hires": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/hires/pub_19_artists_1981_exxon_002.jpg"
	                        }
	                    },
	                    "height": 512,
	                    "width": 455
	                },
	                "large": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/large/pub_19_artists_1981_exxon_002.jpg"
	                        }
	                    },
	                    "height": 902,
	                    "width": 802
	                },
	                "medium": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/previews/pub_19_artists_1981_exxon_002.jpg"
	                        }
	                    },
	                    "height": 300,
	                    "width": 267
	                },
	                "small": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/thumbnails/pub_19_artists_1981_exxon_002.jpg"
	                        }
	                    },
	                    "height": 160,
	                    "width": 142
	                },
	                "tiny": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/postagestamps/pub_19_artists_1981_exxon_002.jpg"
	                        }
	                    },
	                    "height": 62,
	                    "width": 55
	                }
	            },
	            "copyright": null,
	            "format": "JPEG",
	            "orientation": "portrait",
	            "rank": 2,
	            "sequence": null,
	            "type": "Image"
	        },
	        {
	            "assets": {
	                "full": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/full/pub_19_artists_1981_exxon_003_0001.jpg"
	                        }
	                    },
	                    "height": 490,
	                    "width": 419
	                },
	                "hires": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/hires/pub_19_artists_1981_exxon_003_0001.jpg"
	                        }
	                    },
	                    "height": 512,
	                    "width": 438
	                },
	                "large": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/large/pub_19_artists_1981_exxon_003_0001.jpg"
	                        }
	                    },
	                    "height": 902,
	                    "width": 772
	                },
	                "medium": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/previews/pub_19_artists_1981_exxon_003_0001.jpg"
	                        }
	                    },
	                    "height": 300,
	                    "width": 257
	                },
	                "small": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/thumbnails/pub_19_artists_1981_exxon_003_0001.jpg"
	                        }
	                    },
	                    "height": 160,
	                    "width": 137
	                },
	                "tiny": {
	                    "_links": {
	                        "_self": {
	                            "href": "http://annex.guggenheim.org/collections/media/postagestamps/pub_19_artists_1981_exxon_003_0001.jpg"
	                        }
	                    },
	                    "height": 62,
	                    "width": 53
	                }
	            },
	            "copyright": null,
	            "format": "JPEG",
	            "orientation": "portrait",
	            "rank": 3,
	            "sequence": "first",
	            "type": "Image"
	        }
	    ],
	    "physical": {
	        "dimensions": "7.50 x 8.50 inches",
	        "format": "softcover",
	        "pages": "92"
	    },
	    "published": {
	        "place": null,
	        "year": 1981
	    },
	    "subtitle": null,
	    "title": "19 Artists\u2014Emergent Americans: 1981 Exxon National Exhibition",
	    "volume": null
	}


### Biblography fields

### Object fields

<table>
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>id</td>
            <td>number</td>
            <td>Unique ID number for the bibliographic item</td>
        </tr>
        <tr>
            <td>constituents</td>
            <td>array</td>
            <td>An array of constituents connected to a bibliographic item</td>
        </tr>
        <tr>
            <td>copyright</td>
            <td>string</td>
            <td>Copyright statement connected to a bibliographic item</td>
        </tr>
        <tr>
            <td>description</td>
            <td>string</td>
            <td>Description of the bibliographic item</td>
        </tr>
        <tr>
            <td>edition</td>
            <td>string</td>
            <td>Edition of the bibliographic item</td>
        </tr>
        <tr>
            <td>excerpt</td>
            <td>string</td>
            <td>Excerpt of the bibliographic item</td>
        </tr>
        <tr>
            <td>has_media</td>
            <td>boolean</td>
            <td>A boolean that indicates whether a bibliographic item has media or not</td>
        </tr>
        <tr>
            <td>media</td>
            <td>array</td>
            <td>An array of media objects connected to a bibliographic item</td>
        </tr>
        <tr>
            <td>physical</td>
            <td>object</td>
            <td>An object containing the physical attributes of the bibliographic item</td>
        </tr>
        <tr>
            <td>published</td>
            <td>object</td>
            <td>An object containing the publishing related attributes of the bibliographic item</td>
        </tr>
        <tr>
            <td>subtitle</td>
            <td>string</td>
            <td>Subtitle of the bibliographic item</td>
        </tr>
        <tr>
            <td>title</td>
            <td>string</td>
            <td>Title of the bibliographic item</td>
        </tr>
        <tr>
            <td>volume</td>
            <td>string</td>
            <td>Volume of the bibliographic item</td>
        </tr>
    </tbody>
</table>

## Constituents object

Constituents is an array which represents a list of constituents and their connection to the bibliographic item.

### Example

	{
		"constituent": {
			"_links": {
				"_self": {
					"href": "http://api.guggenheim.org/collections/2462"
				}
			},
			"dates": {
				"begin": 0,
				"display": null,
				"end": 0
			},
			"display": "Peter Frank",
			"firstname": "Peter",
			"has_bio": false,
			"id": 2462,
			"lastname": "Frank",
			"middlename": null,
			"objects": {
				"total_count": 0
			},
			"sort": "Frank Peter",
			"suffix": null
		},
		"displayed": true,
		"order": 1,
		"role": "Author"
	}


### Constituent object fields

<table>
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>constituent</td>
            <td>object</td>
            <td>The constituent object</td>
        </tr>
        <tr>
            <td>displayed</td>
            <td>boolean</td>
            <td>A boolean that indicates whether a constituent should be displayed or not</td>
        </tr>
        <tr>
            <td>order</td>
            <td>number</td>
            <td>The ranking order of the constituent among all the constituents of the object</td>
        </tr>
        <tr>
            <td>role</td>
            <td>string</td>
            <td>The role of the constituent connected to a bibliograohic item</td>
        </tr>
    </tbody>
</table>

## Media array

Media is an array which represents a list of media related assets—primarilly images—which are connected to a bibliographic item.

### Example

    {
        "assets": {
            "full": {
                "_links": {
                    "_self": {
                        "href": "http://annex.guggenheim.org/collections/media/full/pub_19_artists_1981_exxon_003_0001.jpg"
                    }
                },
                "height": 490,
                "width": 419
            },
            "hires": {
                "_links": {
                    "_self": {
                        "href": "http://annex.guggenheim.org/collections/media/hires/pub_19_artists_1981_exxon_003_0001.jpg"
                    }
                },
                "height": 512,
                "width": 438
            },
            "large": {
                "_links": {
                    "_self": {
                        "href": "http://annex.guggenheim.org/collections/media/large/pub_19_artists_1981_exxon_003_0001.jpg"
                    }
                },
                "height": 902,
                "width": 772
            },
            "medium": {
                "_links": {
                    "_self": {
                        "href": "http://annex.guggenheim.org/collections/media/previews/pub_19_artists_1981_exxon_003_0001.jpg"
                    }
                },
                "height": 300,
                "width": 257
            },
            "small": {
                "_links": {
                    "_self": {
                        "href": "http://annex.guggenheim.org/collections/media/thumbnails/pub_19_artists_1981_exxon_003_0001.jpg"
                    }
                },
                "height": 160,
                "width": 137
            },
            "tiny": {
                "_links": {
                    "_self": {
                        "href": "http://annex.guggenheim.org/collections/media/postagestamps/pub_19_artists_1981_exxon_003_0001.jpg"
                    }
                },
                "height": 62,
                "width": 53
            }
        },
        "copyright": null,
        "format": "JPEG",
        "orientation": "portrait",
        "rank": 3,
        "sequence": "first",
        "type": "Image"
    }

### Media object fields

<table>
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>assets</td>
            <td>object</td>
            <td>An object which will contain values connected to different available sizes, their access URL as well as the height and width of an asset</td>
        </tr>
        <tr>
            <td>copyright</td>
            <td>string</td>
            <td>A string with data on the copyright connected to the asset</td>
        </tr>
        <tr>
            <td>format</td>
            <td>string</td>
            <td>A string with data on the file format of the asset; JPEG or PNG for now</td>
        </tr>
        <tr>
            <td>orientation</td>
            <td>string</td>
            <td>A string with data on the orientation of the asset; can be either 'portrait' or 'landscpae'</td>
        </tr>
        <tr>
            <td>rank</td>
            <td>string</td>
            <td>A string with data on the rank of the asset</td>
        </tr>
        <tr>
            <td>sequence</td>
            <td>string</td>
            <td>A four (4) character string with data on the sequence of the asset which can be set to <code>00fc</code> (front cover), <code>00bc</code> (back cover), roman number sequence (<code>000i</code>, <code>00ii</code>, <code>00ii</code>, etc…) or an ordinal number value (<code>0000</code>, <code>0001</code>, <code>0002</code>, etc…)</td>
        </tr>
        <tr>
            <td>type</td>
            <td>string</td>
            <td>A string with data on the type of asset; will most likely be 'Image' for now</td>
        </tr>


    </tbody>
</table>

## Physical object

Physical is an object which represents a list of physical attributes and their connection to the bibliographic item.

### Example

     "physical": {
          "dimensions": "7.50 x 8.50 inches",
          "format": "softcover",
          "pages": "92"
     }

### Physical object fields

<table>
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>dimensions</td>
            <td>string</td>
            <td>A string with data on the physical dimensions of the bibliograhic item</td>
        </tr>
        <tr>
            <td>format</td>
            <td>string</td>
            <td>A string with data on the format of the bibliograhic item</td>
        </tr>
        <tr>
            <td>pages</td>
            <td>string</td>
            <td>A string with data on the physical pages of the bibliograhic item</td>
        </tr>


    </tbody>
</table>

## Published object

Published is an object which represents a list of published attributes and their connection to the bibliograhic item.

### Example

     "published": {
          "place": null,
          "year": 1981
     }

### Published object fields

<table>
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>place</td>
            <td>string</td>
            <td>A string with data on the published place of the bibliograhic item</td>
        </tr>
        <tr>
            <td>year</td>
            <td>string</td>
            <td>A string with data on the published year of the bibliograhic item</td>
        </tr>


    </tbody>
</table>