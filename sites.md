Sites
====================

Besides the Solomon R. Guggenheim Museum in New York, the Solomon R. Guggenheim
foundation collaborates with a network of institutions worldwide, such as the 
Guggenheim Museum in Bilbao and the Peggy Guggenheim Collection in Venice. The 
```sites/``` endpoint allows you to retrieve information about these sites and 
their collections.

## Endpoints

<table>
    <thead>
        <th>Endpoint</th>
        <th>Description</th>
        <th>Returns</th>
    </thead>
    <tbody>
        <tr>
            <td>/sites</td>
            <td>Index of sites</td>
            <td>Array of Site objects</td>
        </tr>
        <tr>
            <td>/sites/{id}</td>
            <td>Retrieve site with corresponding `id`</td>
            <td>One Site object</td>
        </tr>
    </tbody>
</table>

### `/sites`

Returns an all sites in the collection as an array of `Site` objects. 
Each `Site` has a paginated objects resource.

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
        <tr>
            <td>no_objects</td>
            <td>optional</td>
            <td>If set to any value, return only a count of the total number
                of objects for each site. This option overrides 
                <code>page</code> and <code>per_page</code>.</td>
        </tr>
    </tbody>
</table>

### Example

Request:

    curl http://127.0.0.1/sites?no_objects=1

Response:

    {
        "_links": {
            "_self": {
                "href": "http://127.0.0.1/sites"
            }, 
            "item": {
                "href": "http://127.0.0.1/sites/{id}"
            }
        }, 
        "sites": [
            {
                "_links": {
                    "_self": {
                        "href": "http://127.0.0.1/sites/3"
                    }
                }, 
                "id": 3, 
                "location": "New York", 
                "name": "Solomon R. Guggenheim Museum", 
                "objects": {
                    "total_count": 823
                }
            }, 
            {
                "_links": {
                    "_self": {
                        "href": "http://127.0.0.1/sites/5"
                    }
                }, 
                "id": 5, 
                "location": "Berlin", 
                "name": "Deutsche Guggenheim Berlin", 
                "objects": {
                    "total_count": 52
                }
            }, 
            {
                "_links": {
                    "_self": {
                        "href": "http://127.0.0.1/sites/6"
                    }
                }, 
                "id": 6, 
                "location": "Bilbao", 
                "name": "Guggenheim Museum Bilbao", 
                "objects": {
                    "total_count": 40
                }
            }, 
            {
                "_links": {
                    "_self": {
                        "href": "http://127.0.0.1/sites/7"
                    }
                }, 
                "id": 7, 
                "location": "Venice", 
                "name": "Peggy Guggenheim Collection", 
                "objects": {
                    "total_count": 111
                }
            }
        ]
    }

### `/sites/{id}`

Returns the Site specified by the id.

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
            <td>5</td>
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

    curl http://127.0.0.1/sites/3

Response:

    {
        "id": 3, 
        "name": "Solomon R. Guggenheim Museum", 
        "location": "New York", 
        "objects": {
            "count": 20, 
            "items": [
                {...},
                {...},
                ...
            ], 
            "items_per_page": 20, 
            "page": 1, 
            "pages": 42, 
            "total_count": 823
        },
        "_links": {
            "_self": {
                "href": "http://127.0.0.1/sites/3"
            }, 
            "next": {
                "href": "http://127.0.0.1/sites/3?page=2&per_page=20"
            }
        } 
    }

## Site objects

### Site fields

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
            <td>Unique ID number for the site</td>
        </tr>
        <tr>
            <td>name</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>Name of the site</td>
        </tr>
        <tr>
            <td>location</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>Location of the site</td>
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
            <td>A links object</td>
        </tr>
    </tbody>
</table>

