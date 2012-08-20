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
            <td>One of Acquisition object</td>
        </tr>
    </tbody>
</table>

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
                "href": "http://127.0.0.1/acquisitions/6 "
            }
        }
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

