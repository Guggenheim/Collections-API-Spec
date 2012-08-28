Guggenheim Collections API Specification
========================================

## Making Requests

All requests are made over HTTP. Authentication (by access key) is required and
the client must explicitly accept the 
`application/vnd.guggenheim.collection+json` content-type.

All responses are JSON.

Only GET requests are accepted.

### Authentication

The Guggenheim Collections API requires an access key. You key can provided 
either via a header (`X-GUGGENHEIM-API-KEY`)or as a query parameter (`key`). 
For example, using curl, the header method would look like:

    curl -H "X-GUGGENHEIM-API-KEY: [YOUR_KEY]" http://example.org/collections/

using a query parameter:

    curl http://example.org/collections/?key=[YOUR_KEY]

The two are equivalent. The header method is preferred. A missing or invalid key will result in a 401 Unauthorized error

### Content Type

All responses are JSON, in the `application/vnd.guggenheim.collection+json` 
media type. Clients must explicitly accept this media type by sending the
appropriate `Accept` header. In curl:

    curl -H "Accept: application/vnd.guggenheim.collection+json" \
        -H "X-GUGGENHEIM-API-KEY: [YOUR_KEY]" http://example.org/collections/

A missing or incorrect `Accept` header will result in a 406 Not Acceptable 
error.

## Endpoints
<table>
    <thead>
        <th>Endpoint</th>
        <th>Description</th>
    </thead>
    <tbody>
        <tr>
            <td>/</td>
            <td>Index of available resources</td>
        </tr>
        <tr>
            <td><a href="blob/master/acquisitions.md">/acquisitions</a></td>
            <td>List of acquisitions</td>
        </tr>
        <tr>
            <td><a href="blob/master/acquisitions.md">/acquisitions/{id}</a></td>
            <td>Retrieve acquisition with corresponding `id`</td>
        </tr>
        <tr>
            <td><a href="blob/master/objects.md">/objects</a></td>
            <td>Index of object links</td>
        </tr>
        <tr>
            <td><a href="blob/master/objects.md">/objects/{id}</a></td>
            <td>Retrieve object with corresponding `id`</td>
        </tr>
    </tbody>
</table>

## Objects

<table>
    <thead>
        <th>Object</th>
        <th>Description</th>
    </thead>
    <tbody>
        <tr>
            <td><a href="blob/master/acquisitions.md">Acquisition</a></td>
            <td>An acquisition (a group within the collection) with the
                objects it contains</td>
        </tr>
        <tr>
            <td><a href="blob/master/constituent.md">Constituent</a></td>
            <td>Constituents, that is, artists</td>
        </tr>
        <tr>
            <td><a href="blob/master/dates.md">Dates</a></td>
            <td>Dates and date ranges</td>
        </tr>
        <tr>
            <td><a href="blob/master/objects.md">Object</a></td>
            <td>A Collection Object</td>
        </tr>
        <tr>
            <td>Role</a></td>
            <td>A Constituent and its connection to an object</td>
        </tr>
        <tr>
            <td><a href="blob/master/objects.md#titles-objects">Titles</a></td>
            <td>A collection of <a href="objects.md#title-objects">Title</a>
                objects</td>
        </tr>
        <tr>
            <td><a href="blob/master/objects.md#title-objects">Title</a></td>
            <td>Title of an <a href="objects.md">Object</a></td>
        </tr>
    </tbody>
</table>
