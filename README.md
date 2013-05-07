Guggenheim Collections API Specification
========================================

## Base URL

All URLs references in this documentation have the base

    http://api.guggenheim.org/collections/

## Making Requests

All requests are made over HTTP. Authentication (by access key) is required and
the client must explicitly accept the 
`application/vnd.guggenheim.collection+json` content-type.

All responses are JSON.

Only GET requests are accepted, any other kind of request will result in a
405 Method Not Allowed error.

### Authentication

The Guggenheim Collections API requires an access key. You key can provided 
either via a header (`X-GUGGENHEIM-API-KEY`)or as a query parameter (`key`). 
For example, using curl, the header method would look like:

    curl -H "X-GUGGENHEIM-API-KEY: [YOUR_KEY]" http://api.guggenheim.org/collections/

using a query parameter:

    curl http://api.guggenheim.org/collections/?key=[YOUR_KEY]

The two are equivalent. The header method is preferred. A missing or invalid key will result in a 401 Unauthorized error

### Content Type

All responses are JSON, in the `application/vnd.guggenheim.collection+json` 
media type. Clients must explicitly accept this media type by sending the
appropriate `Accept` header. In curl:

    curl -H "Accept: application/vnd.guggenheim.collection+json" \
        -H "X-GUGGENHEIM-API-KEY: [YOUR_KEY]" http://api.guggenheim.org/collections/

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
            <td><a href="acquisitions.md">/acquisitions</a></td>
            <td>List of acquisitions</td>
        </tr>
        <tr>
            <td><a href="acquisitions.md">/acquisitions/{id}</a></td>
            <td>Retrieve acquisition with corresponding `id`</td>
        </tr>
        <tr>
            <td><a href="exhibitions.md">/exhibitions</a></td>
            <td>List of exhibitions</td>
        </tr>
        <tr>
            <td><a href="exhibitions.md">/exhibitions/{id}</a></td>
            <td>Retrieve exhibition with corresponding `id`</td>
        </tr>
        <tr>
            <td><a href="movements.md">/movements</a></td>
            <td>List of movements</td>
        </tr>
        <tr>
            <td><a href="movements.md">/movements/{id}</a></td>
            <td>Retrieve movement with corresponding `id`</td>
        </tr>
        <tr>
            <td><a href="objects.md">/objects</a></td>
            <td>Index of object links</td>
        </tr>
        <tr>
            <td><a href="objects.md">/objects/{id}</a></td>
            <td>Retrieve object with corresponding `id`</td>
        </tr>
        <tr>
            <td><a href="sites.md">/sites</a></td>
            <td>List of sites</td>
        </tr>
        <tr>
            <td><a href="sites.md">/sites/{id}</a></td>
            <td>Retrieve site with corresponding `id`</td>
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
            <td><a href="acquisitions.md">Acquisition</a></td>
            <td>An acquisition (a group within the collection) with the
                objects it contains</td>
        </tr>
        <tr>
            <td><a href="constituent.md">Constituent</a></td>
            <td>Constituents, that is, artists</td>
        </tr>
        <tr>
            <td><a href="dates.md">Dates</a></td>
            <td>Dates and date ranges</td>
        </tr>
        <tr>
            <td><a href="objects.md">Object</a></td>
            <td>A Collection Object</td>
        </tr>
        <tr>
            <td>Role</a></td>
            <td>A Constituent and its connection to an object</td>
        </tr>
        <tr>
            <td><a href="sites.md">Site</a></td>
            <td>Museum site, with associated <a href="objects.md">Objects</a></td>
        </tr>
        <tr>
            <td><a href="sites.md">Sites</a></td>
            <td>A collection of <a href="blob/master/sites.md">Site</a>
                objects</td>
        </tr>
        <tr>
            <td><a href="objects.md#titles-objects">Titles</a></td>
            <td>A collection of <a href="objects.md#title-objects">Title</a>
                objects</td>
        </tr>
        <tr>
            <td><a href="objects.md#title-objects">Title</a></td>
            <td>Title of an <a href="objects.md">Object</a></td>
        </tr>
    </tbody>
</table>
