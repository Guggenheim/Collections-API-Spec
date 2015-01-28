QuickSearch
====================

The ```quicksearch``` endpoint allows you to retrieve object listings by entering a full or partial ```artist name```, ```artwork title``` or ```accession number```.

## Endpoints

### `/quicksearch`

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
            <td>q</td>
            <td>required</td>
            <td>The search term.</td>
        </tr>
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

    curl http://api.guggenheim.org/collections/quicksearch?q=picasso&per_page=18

Response:

    	TODO: include this



