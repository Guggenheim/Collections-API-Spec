Bibliographies
====================

For the purposes of this API, bibliographies are bibiliographies that may or may not be connetced to an object or object constituent. For all intents and purposes.

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

    curl http://api.guggenheim.org/collections/constituents

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
	    "citation": null,
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
	    "edition": null,
	    "has_media": true,
	    "id": 996,
	    "language": "en",
	    "media": [ ... ],
	    "notes": "7.50 x 8.50 inches",
	    "objects": {
	        "count": 0,
	        "items": null,
	        "items_per_page": 20,
	        "page": 1,
	        "pages": 0,
	        "total_count": 0
	    },
	    "page_count": "92",
	    "physical_description": "&lt;p&gt;As Director Thomas M. Messer wished &amp;#8220;to avoid too institutional an emphasis in the inherently fluid area of contemporary art,&amp;#8221; the third iteration of the Exxon National Exhibition used the lens of guest curator, critic Peter Frank, as the interpolator between museum and art. Frank also wrote the catalogue&amp;#8217;s introductory text. Each of the nineteen diverse American artists is featured with biographical information, a short artist's statement, and images of their work in both color and black and white. The artists featured are Michael Brakke, Guy de Cointet, Manny Farber, Vernon Fisher, Heidi Gl&amp;#252;ck, Tom Green, William Haney, Patrick Hogan, Tom Holste, Barbara Kruger, Philip Larson, Jim Richard, Bill Richards, Darryl Sapien, Norie Sato, Gael Stack, John White, George Woodman, and Frank Young.&lt;/p&gt;",
	    "published": {
	        "place": null,
	        "year": 1981
	    },
	    "subtitle": null,
	    "title": "19 Artists\u2014Emergent Americans: 1981 Exxon National Exhibition",
	    "volume": null
	}

### Constituent fields

<table>
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Req'd?</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>id</td>
            <td>number</td>
            <td>REQUIRED</td>
            <td>Unique ID number for the bibliography</td>
        </tr>
        <tr>
            <td>_links</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A links resource</td>
        </tr>
    </tbody>
</table>
