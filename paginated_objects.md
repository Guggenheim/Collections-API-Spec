Paginated Objects
====================

Many endpoints in this API return resources that contain embedded lists of 
`Object`s. For instance, an `Acquistion` has a list of objects that make up the
acquisition. Since there can be many objects in these lists they are presented 
as "Paginated object" resources.

Endpoints that return resources with paginated objects accept the following
common parameters to control pagination:

<table>
    <thead>
        <tr>
            <th>Parameter</th>
            <th>Description</th>
            <th>Default</th>
            <th>Example</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>page</td>
            <td>Requests a specific page of the paginated set</td>
            <td>1</td>
            <td><code>...?page=2</code></td>
        </tr>
        <tr>
            <td>per_page</td>
            <td>The maximum number of items on to return on each page. 
                Max 100</td>
            <td>5, 20 (see below)</td>
            <td><code>...?per_page=30</code></td>
        </tr>
        <tr>
            <td>no_objects</td>
            <td>If set to any value, return only a count of the total number
                of objects associated with the containing object. This option
                overrides <code>page</code> and <code>per_page</code>.</td>
            <td>none</td>
            <td><code>...?no_objects=1</code></td>
        </tr>
    </tbody>
</table>

When an object contains a paginated object resource, its (the containing 
object's) `_links` resource will have `next` and/or `prev` links pointing to the
next and previous pages, if they exist.


## Example Paginated Object Resource

In this example the `Object` resources includes in the `items` array are 
truncated for brevity.

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
    }

## Paginated Object Fields

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
            <td>items</td>
            <td>array</td>
            <td>OPTIONAL</td>
            <td>An array of `Object` objects</td>
        </tr>
        <tr>
            <td>count</td>
            <td>number</td>
            <td>OPTIONAL</td>
            <td>The number of items in the current page</td>
        </tr>
        <tr>
            <td>total_count</td>
            <td>number</td>
            <td>REQUIRED</td>
            <td>The total number of objects associated with the containing 
                object (e.g., the total number of objects in a given
                acquisition.</td>
        </tr>
        <tr>
            <td>items_per_page</td>
            <td>number</td>
            <td>OPTIONAL</td>
            <td>The maximum number of items in one page</td>
        </tr>
        <tr>
            <td>page</td>
            <td>number</td>
            <td>OPTIONAL</td>
            <td>The number of the current page</td>
        </tr>
        <tr>
            <td>pages</td>
            <td>number</td>
            <td>OPTIONAL</td>
            <td>The total number of page</td>
        </tr>
    </tbody>
</table>

If the `no_objects` parameter is set, the paginated object resource will have 
only the `total_count` field. Otherwise all fields will be present. When the 
`no_objects` parameter is set the containing object will *not* have links to the
next and previous pages.

## Default Number of Items

Paginated object resources occur in two contexts, each with a different number
of default items. If the containing object is the top-level object of the 
response the default number is 20. If the containing object has a parent object 
itself, the default number is 5.

For example the endpoint `/acquisitions/6` returns on `Acquisition` at the top 
level. It contains a paginated object resource with 20 objects by default. The 
endpoint `/acquisitions`, without an ID, returns a an array of all 
`Acquisition`s. Each `Acquisition` in this array, since it is not the top-level
object in the response, has paginated object resources with 5 items. In each 
case, the `per_page` parameter of the `next` and `prev` links will reflect this
default.





