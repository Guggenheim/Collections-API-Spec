Acquisitions
====================

Acquisitions are groups of objects in that came into the collection from a 
single notable source.

## Endpoints

<table>
    <thead>
        <th>Endpoint</th>
        <th>Description</th>
        <th>Returns</th>
    </thead>
    <tbody>
        <tr>
            <td>/acquisitions</td>
            <td>Index of acquisitions</td>
            <td>Array of Acquisition objects</td>
        </tr>
        <tr>
            <td>/acquisitions/{id}</td>
            <td>Retrieve acquisition with corresponding `id`</td>
            <td>One Acquisition object</td>
        </tr>
    </tbody>
</table>

### `/acquisitions`

Returns an all acquisitions in the collection as an array of `Acquisition` 
objects. Each `Acquisition` has a 
[paginated objects](paginated_objects.md) 
resource. By default this contains only a count of objects in the acquisition but an list of objects can be included in each by setting the `per_page` parameter. 

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
                0, maximum 100).</td>
        </tr>
    </tbody>
</table>

### Example

Request:

    curl http://api.guggenheim.org/collections/acquisitions

Response:

    {
        "acquisitions": [
            {
                "id": 4, 
                "name": "Thannhauser Collection", 
                "objects": {
                    "total_count": 25
                },
                "_links": {
                    "_self": {
                        "href": "http://api.guggenheim.org/collections/acquisitions/4"
                    }
                }, 
            }, 
            {
                "id": 6, 
                "name": "Solomon R. Guggenheim Founding Collection", 
                "objects": {
                    "total_count": 55
                }
                "_links": {
                    "_self": {
                        "href": "http://api.guggenheim.org/collections/acquisitions/6"
                    }
                }, 
            }, 
            {...}, 
            {...}, 
            ...
        ],
        "_links": {
            "_self": {
                "href": "http://api.guggenheim.org/collections/acquisitions"
            }, 
            "item": {
                "href": "http://api.guggenheim.org/collections/acquisitions/{id}"
            }
        }, 
    }

### `/acquisitions/{id}`

Returns the acquisition specified by the id.

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

    curl http://api.guggenheim.org/collections/acquisitions/6

Response:

    {
        "id": 6, 
        "name": "Solomon R. Guggenheim Founding Collection", 
        "objects": {
            "items": [
                {...}, 
                {...}, 
                ...
            ], 
            "count": 20, 
            "total_count": 55
            "items_per_page": 20, 
            "page": 1, 
            "pages": 3, 
        },
        "_links": {
            "_self": {
                "href": "http://api.guggenheim.org/collections/acquisitions/6"
            }, 
            "next": {
                "href": "http://api.guggenheim.org/collections/acquisitions/6?page=2&per_page=20"
            }
        }
    }


## Acquisition objects

### Example Acquisition object
    {
        "id": 6, 
        "name": "Solomon R. Guggenheim Founding Collection", 
        "objects": {
            "count": 5, 
            "items_per_page": 5, 
            "page": 1, 
            "pages": 11, 
            "total_count": 55,
            "items": [...]
        },
        "_links": {
            "_self": {
                "href": "http://api.guggenheim.org/collections/acquisitions"
            }, 
            "item": {
                "href": "http://api.guggenheim.org/collections/acquisitions/{id}"
            }
        }, 
    }

### Acquisition fields

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
            <td>Unique ID number for the acquisition</td>
        </tr>
        <tr>
            <td>name</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>Name of the acquisition</td>
        </tr>
        <tr>
            <td>objects</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A <a href="paginated_objects.md">paginated
                objects</a> object</td>
        </tr>
        <tr>
            <td>_links</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A links object</td>
        </tr>
    </tbody>
</table>

