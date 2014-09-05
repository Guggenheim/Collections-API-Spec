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
            <td>/bibiliographies</td>
            <td>Index of bibiliography endpoints</td>
        </tr>
        <tr>
            <td>/bibiliographies/{id}</td>
            <td>Retrieve bibiliography with corresponding `id`</td>
        </tr>
    </tbody>
</table>

### Example index response

Request:

    curl http://api.guggenheim.org/collections/bibiliographies

Response:

    {
        "_links": {
            "_self": {
                "href": "http://api.guggenheim.org/collections/bibiliographies"
            }, 
            "item": {
                "href": "http://api.guggenheim.org/collections/bibiliographies/{id}"
            }
        }
    }

The index endpoint provides a list of links to other bibiliography-related endpoints.

### `/bibiliographies/{id}`

Returns the bibiliography with the corresponding id.

#### Example

Request:

    curl http://api.guggenheim.org/collections/bibiliographies/996

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
	    "media": [ ... ],
	    "physical": {
	        "dimensions": "7.50 x 8.50 inches",
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
            <td>array</td>
            <td>An object containing the physical attributes of the bibliographic item</td>
        </tr>
        <tr>
            <td>published</td>
            <td>array</td>
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

## Physical object

Physical is an object which represents a list of physical attributes and their connection to the bibliographic item.

### Example

     "physical": {
          "dimensions": "7.50 x 8.50 inches",
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