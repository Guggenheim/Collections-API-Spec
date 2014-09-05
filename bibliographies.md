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
	            "href": "http://sandbox.local/collections/bibliographies/996"
	        }
	    },
	    "constituents": [
	        {
	            "constituent": {
	                "_links": {
	                    "_self": {
	                        "href": "http://sandbox.local/collections/2462"
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
            <td>Unique ID number for the biblography</td>
        </tr>
        <tr>
            <td>constituents</td>
            <td>array</td>
            <td>An array <a href="#role-objects">Role</a> object</td>
        </tr>
        <tr>
            <td>copyright</td>
            <td>string</td>
            <td>Copyright statement</td>
        </tr>
        <tr>
            <td>description</td>
            <td>string</td>
            <td>Description of the bibliography</td>
        </tr>
        <tr>
            <td>edition</td>
            <td>string</td>
            <td>Edition of the bibliography</td>
        </tr>
        <tr>
            <td>excerpt</td>
            <td>string</td>
            <td>Excerpt of the bibliography</td>
        </tr>
        <tr>
            <td>has_media</td>
            <td>boolean</td>
            <td>A boolean that indicates whether a biblipgrahy has media or not</td>
        </tr>
        <tr>
            <td>media</td>
            <td>array</td>
            <td>An array of media objects</td>
        </tr>
        <tr>
            <td>physical</td>
            <td>array</td>
            <td>An array of phyical attributes of the bibliography</td>
        </tr>
        <tr>
            <td>published</td>
            <td>array</td>
            <td>An array of publishing related attributes of the bibliography</td>
        </tr>
        <tr>
            <td>subtitle</td>
            <td>string</td>
            <td>Subtitle of the bibliography</td>
        </tr>
        <tr>
            <td>title</td>
            <td>string</td>
            <td>Title of the bibliography</td>
        </tr>
        <tr>
            <td>volume</td>
            <td>string</td>
            <td>Volume of the bibliography</td>
        </tr>
    </tbody>
</table>

## Constituent objects

A Constituent object represents a constituent and its connection to the bibliograhy.

### Example

     {
         "constituent": {
             "_links": {
                 "_self": {
                     "href": "http://sandbox.local/collections/2462"
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


## Titles objects

The Titles object contains the list of multiple titles, each one a 
[Title](#title-objects) by which the artwork is known. The preferred title is 
given in the REQUIRED ```primary``` property. The OPTIONAL ```other``` property, 
if present, will contain a list of other titles -- translations (or an original 
title if the ```primary``` is a translation), alternates, etc.

### Example

    "titles": {
        "primary": {
            "title": "Composition 8", 
            "language": "en", 
            "order": 1, 
            "type": "Translation"
            "prepend": null,
            "append": null
        },
        "other": [
            {
                "title": "Komposition 8", 
                "language": "de", 
                "order": 2, 
                "type": "Original Title"
                "prepend": null,
                "append": null
            }
        ] 
    }

### Titles object fields

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
            <td>primary</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A <a href="#title-objects">title object</a>. The preferred title for 
                the object</td>
        </tr>
        <tr>
            <td>other</td>
            <td>array</td>
            <td>OPTIONAL</td>
            <td>An array of alternate <a href="#title-objects">title</a> objects.</td>
        </tr>
    </tbody>
</table>

## Title objects

### Example

    {
        "title": "Composition 8", 
        "language": "en", 
        "order": 1, 
        "type": "Translation"
        "prepend": null,
        "append": null
    }

### Title object fields

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
            <td>title</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The title</td>
        </tr>
        <tr>
            <td>language</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The ISO 639-1 code of the language of the title. May be 
                <code>null</code></td>
        </tr>
        <tr>
            <td>order</td>
            <td>number</td>
            <td>REQUIRED</td>
            <td>The title's ranking by preference among *all the titles* in the
                <code>Titles</code> object.</td>
        </tr>
        <tr>
            <td>type</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The type of title. Examples: "Title", "Original Title", 
                "Translation"</td>
        </tr>
        <tr>
            <td>prepend</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>Phrase to be prepended to the title when it is displayed, may be <code>null</code></td>
        </tr>
        <tr>
            <td>append</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>Phrase to be appended to the title when it is displayed, may be <code>null</code></td>
        </tr>
    </tbody>
</table>
