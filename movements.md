Movements
====================

Collection objects are grouped into artistic movements. An object may have more
than one movement

## Endpoints

<table>
    <thead>
        <th>Endpoint</th>
        <th>Description</th>
        <th>Returns</th>
    </thead>
    <tbody>
        <tr>
            <td>/movements</td>
            <td>Index of movements</td>
            <td>Array of Movement objects</td>
        </tr>
        <tr>
            <td>/movements/{id}</td>
            <td>Retrieve movement with corresponding `id`</td>
            <td>One Movement object</td>
        </tr>
    </tbody>
</table>

### `/movements`

Returns an all movements in the collection as an array of `Movement` objects. 
Each `Movement` has a paginated objects resource.

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
                of objects in each movement. This option overrides 
                <code>page</code> and <code>per_page</code>.</td>
        </tr>
    </tbody>
</table>

### Example

Request:

    curl http://127.0.0.1/movements?no_objects=1

Response:

    {
      "_links":{
        "item":{
          "href":"http://127.0.0.1/movements/{id}"
        },
        "_self":{
          "href":"http://127.0.0.1/movements"
        }
      },
      "movements":[
        {
          "objects":{
            "total_count":42
          },
          "_links":{
            "_self":{
              "href":"http://127.0.0.1/movements/195203"
            }
          },
          "name":"Abstract Expressionism",
          "id":195203
        },
        {
          "objects":{
            "total_count":9
          },
          "_links":{
            "_self":{
              "href":"http://127.0.0.1/movements/195204"
            }
          },
          "name":"Art Brut",
          "id":195204
        },
        {
          "objects":{
            "total_count":17
          },
          "_links":{
            "_self":{
              "href":"http://127.0.0.1/movements/195205"
            }
          },
          "name":"Art Informel",
          "id":195205
        },
        {...},
        {...},
        ...
      ]
    }
### `/movements/{id}`

Returns the Movement specified by the id.

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

    curl http://127.0.0.1/movements/195203

Response:

    {
        "id":195203,
        "name":"Abstract Expressionism",
        "objects":{
            "items": [
                {...}, 
                {...}, 
                ...
            ], 
            "count":20,
            "page":1,
            "pages":3,
            "total_count":42,
            "items_per_page":20
        },
        "_links":{
            "next":{
                "href":"http://127.0.0.1:8081/movements/195203?page=2&per_page=20"
            },
            "_self":{
            "href":"http://127.0.0.1:8081/movements/195203"
            }
        }
    }


## Movement objects

### Movement fields

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
            <td>Unique ID number for the movement</td>
        </tr>
        <tr>
            <td>name</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>Name of the movement</td>
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

