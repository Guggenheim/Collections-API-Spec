Constituents
====================

For the purposes of this API, constituents are the principle creators of an 
object (you know, the artists).

## Endpoints

<table>
    <thead>
        <th>Endpoint</th>
        <th>Description</th>
    </thead>
    <tbody>
        <tr>
            <td>/constituents</td>
            <td>Index of constituent endpoints</td>
        </tr>
        <tr>
            <td>/constituents/{a-z}</td>
            <td>Alphabetical list of constituents</td>
        </tr>
        <tr>
            <td>/constituents/{id}</td>
            <td>Retrieve constituent with corresponding `id`</td>
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
                "href": "http://api.guggenheim.org/collections/constituents"
            }, 
            "alpha": {
                "href": "http://api.guggenheim.org/collections/constituents/{a-z}"
            }, 
            "item": {
                "href": "http://api.guggenheim.org/collections/constituents/{id}"
            }
        }
    }

The index endpoint provides a list of links to other constituent-related endpoints.

### `/constituents/{a-z}`

Returns an alphabetical list of constituents whose last name (or the name by
which they are sorted) begins with the given letter. NB: This endpoint returns
only constituents with objects in the Guggenheim's permanent collection.

#### Example

Request:

    curl http://api.guggenheim.org/collections/constituents/u

Response:

    {
        "constituents": [
            {
                "_links": {
                    "_self": {
                        "href": "http://api.guggenheim.org/collections/constituents/886"
                    }
                }, 
                "dates": {
                    "begin": 1930, 
                    "display": "b. 1930, Wendorf, Mecklenburg, Germany", 
                    "end": 0
                }, 
                "display": "G\u00fcnther Uecker", 
                "firstname": "G\u00fcnther", 
                "id": 886, 
                "lastname": "Uecker", 
                "middlename": null, 
                "nationality": "German", 
                "objects": {
                    "total_count": 1
                }, 
                "sort": "Uecker, G\u00fcnther", 
                "suffix": null
            }, 
            {
                "_links": {
                    "_self": {
                        "href": "http://api.guggenheim.org/collections/constituents/7585"
                    }
                }, 
                "dates": {
                    "begin": 1968, 
                    "display": "b. 1968, Warsaw, Poland", 
                    "end": 0
                }, 
                "display": "Piotr Uklanski", 
                "firstname": "Piotr", 
                "id": 7585, 
                "lastname": "Uklanski", 
                "middlename": null, 
                "nationality": "Polish", 
                "objects": {
                    "total_count": 1
                }, 
                "sort": "Uklanski, Piotr", 
                "suffix": null
            }
        ]
    }

### `/constituents/{id}`

Returns the constituent with the corresponding id.

#### Example

Request:

    curl http://api.guggenheim.org/collections/constituents/1515

Response:

    {
        "id": 1515, 
        "firstname": "Vasily", 
        "middlename": null, 
        "lastname": "Kandinsky", 
        "suffix": null,
        "display": "Vasily Kandinsky", 
        "sort": "Kandinsky, Vasily", 
        "dates": {
            "begin": 1866, 
            "end": 1944,
            "display": "b. 1866, Moscow, Russia; d. 1944, Neuilly-sur-Seine, France"
        }, 
        "nationality": "Russian", 
        "objects": {
            "items": [
                {...},
                {...},
                ...
            ], 
            "total_count": 17,
            "count": 17, 
            "items_per_page": 20, 
            "page": 1, 
            "pages": 1
        }, 
        "_links": {
            "_self": {
                "href": "http://api.guggenheim.org/collections/constituents/1515"
            }
        }
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
            <td>Unique ID number for the constituent</td>
        </tr>
        <tr>
            <td>firstname</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The constituent's first name, may be <code>null</code></td>
        </tr>
        <tr>
            <td>middlename</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The constituent's middle name, may be <code>null</code></td>
        </tr>
        <tr>
            <td>lastname</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The constituent's last name, may be <code>null</code></td>
        </tr>
        <tr>
            <td>suffix</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>A suffix to be added to the name, may be <code>null</code>. 
                Examples: "Jr.", "The Younger"</td>
        </tr>
        <tr>
            <td>display</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>A version of the name, usually some combination of the 
                previous foru fields, suitable for display</td>
        </tr>
        <tr>
            <td>sort</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>A version of the name suitable for alphatic sorting</td>
        </tr>
        <tr>
            <td>dates</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A Dates object</td>
        </tr>
        <tr>
            <td>nationality</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The constituent's nationality</td>
        </tr>
        <tr>
            <td>objects</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A paginated object resource</td>
        </tr>
        <tr>
            <td>_links</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A links resource</td>
        </tr>
    </tbody>
</table>
