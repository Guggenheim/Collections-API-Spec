Exhibitions
====================

## Nota Bene

These endpoints are in a very "draft" state. There are a number of details not yet accounted for. Namely:

* Exhibitions need to be attached to the site where they occur and the endpoints need to be something like ../exhibitions/new-york ../exhibitions/bilbao. There is not an objvious way that this is recorded in the underlying data.
* You should be able to request exhibitions by past or future date. "Starting from today" is a meaningful default
* Perhaps there needs to be an endpoint ../exhibitions/{id}/constituents to conveniently get a list of artists in the exhibition? Ditto movements? Type?

## Endpoints

<table>
    <thead>
        <th>Endpoint</th>
        <th>Description</th>
        <th>Returns</th>
    </thead>
    <tbody>
        <tr>
            <td>/exhibitions</td>
            <td>Index of exhibitions</td>
            <td>Array of Exhibition objects</td>
        </tr>
        <tr>
            <td>/exhibitions/{id}</td>
            <td>Retrieve exhibition with corresponding `id`</td>
            <td>One Exhibition object</td>
        </tr>
    </tbody>
</table>

### `/exhibitions`

Returns an all exhibitions in the collection as an array of `Exhibition` objects. Each `Exhibition` has a paginated objects resource.

<table>
    <thead>
        <tr>
            <th>Parameter</th>
            <th>Req'd?</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>per_page</td>
            <td>optional</td>
            <td>The maximum number of items on to return on each page (Default 
                5, maximum 100).</td>
        </tr>
    </tbody>
</table>

### Example

Request:

    curl http://127.0.0.1/exhibitions?no_objects=1

Response:

    {
        "exhibitions": [
            {
                "id": 4537,
                "name": "Picasso Black and White", 
                "dates": {
                    "begin": "2012-10-05", 
                    "end": "2013-01-23",
                    "display": "October 5, 2012 - January 23, 2013"
                }, 
                "objects": {
                    "total_count": 116
                },
                "_links": {
                    "_self": {
                        "href": "http://127.0.0.1/exhibitions/4537"
                    }
                }
            }, 
            {
                "id": 4886,
                "name": "GUTAI", 
                "dates": {
                    "begin": "2013-02-15", 
                    "end": "2013-05-08",
                    "display": "February 15, 2013-May 8, 2013"
                }, 
                "objects": {
                    "total_count": 160
                },
                "_links": {
                    "_self": {
                        "href": "http://127.0.0.1/exhibitions/4886"
                    }
                }
            }
        ],
        "_links": {
            "_self": {
                "href": "http://127.0.0.1/exhibitions"
            }, 
            "item": {
                "href": "http://127.0.0.1/exhibitions/{id}"
            }
        } 
    }

### `/exhibitions/{id}`

Returns the exhibition specified by the id.

<table>
    <thead>
        <tr>
            <th>Parameter</th>
            <th>Req'd?</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>page</td>
            <td>optional</td>
            <td>The page of the paginated objects resource to return 
                (default 1).</td>
        </tr>
        <tr>
            <td>per_page</td>
            <td>optional</td>
            <td>The maximum number of items on to return on each page (default 
                20, maximum 100).</td>
        </tr>
        <tr>
            <td>no_objects</td>
            <td>optional</td>
            <td>If set to any value, return only a count of the total number
                of objects. This option overrides 
                <code>page</code> and <code>per_page</code>.</td>
        </tr>
    </tbody>
</table>

### Example

Request:

    curl http://127.0.0.1/exhibitions/4886

Response:

    {
        "name": "GUTAI", 
        "dates": {
            "begin": "2013-02-15", 
            "display": "February 15, 2013-May 8, 2013", 
            "end": "2013-05-08"
        }, 
        "objects": {
            "count": 20, 
            "items_per_page": 20, 
            "page": 1, 
            "pages": 8, 
            "total_count": 160,
            "items": [...]
        },
        "_links": {
            "_self": {
                "href": "http://127.0.0.1/exhibitions/4886"
            }, 
            "next": {
                "href": "http://127.0.0.1/exhibitions/4886?per_page=20&page=2"
            }
        }, 
    }

## Exhibition objects

### Example Exhibition object
    {
        "name": "GUTAI", 
        "dates": {
            "begin": "2013-02-15", 
            "display": "February 15, 2013-May 8, 2013", 
            "end": "2013-05-08"
        }, 
        "objects": {
            "count": 20, 
            "items_per_page": 20, 
            "page": 1, 
            "pages": 8, 
            "total_count": 160,
            "items": [...]
        },
        "_links": {
            "_self": {
                "href": "http://127.0.0.1/exhibitions/4886"
            }, 
            "next": {
                "href": "http://127.0.0.1/exhibitions/4886?per_page=20&page=2"
            }
        }, 
    }

### Exhibition fields

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
            <td>name</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>Name of the exhibition</td>
        </tr>
        <tr>
            <td>dates</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A Dates object</td>
        </tr>
        <tr>
            <td>objects</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A paginated objects object</td>
        </tr>
        <tr>
            <td>_links</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A Links object</td>
        </tr>
    </tbody>
</table>

