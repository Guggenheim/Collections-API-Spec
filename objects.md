Objects
====================

## Endpoints

<table>
    <thead>
        <th>Endpoint</th>
        <th>Description</th>
    </thead>
    <tbody>
        <tr>
            <td>/objects</td>
            <td>Index of object links</td>
        </tr>
        <tr>
            <td>/objects/{id}</td>
            <td>Retrieve object with corresponding `id`</td>
        </tr>
    </tbody>
</table>

### Example index response

The index endpoint provides a list of links to other object-related endpoints.

## Object objects

Objects contain several kinds of resources (Constituents and Movements for 
example) that could contain their own paginated object resources. When these resources are contained within an Object, their paginated resource objects will
only have `total_count`, as if they had been requested with the `no_objects`
option. See Paginated Objects. 

### Example Object object

    {
        "id":1924,
        "accession":"37.262",
        "sort_number":"     37   262",
        "sort_name":"Kandinsky, Vasily",
        "sort_title":"Composition 8",
        "constituents": [
            {
                "order": 1, 
                "role": "Artist",
                "constituent": {
                    "id": 1515, 
                    "firstname": "Vasily", 
                    "middlename": null, 
                    "lastname": "Kandinsky", 
                    "suffix": null,
                    "display": "Vasily Kandinsky", 
                    "sort": "Kandinsky, Vasily", 
                    "dates": {
                        "begin": 1866, 
                        "display": "b. 1866, Moscow, Russia; d. 1944, Neuilly-sur-Seine, France", 
                        "end": 1944
                    }, 
                    "nationality": "Russian", 
                    "objects": {
                        "total_count": 17
                    }, 
                    "_links": {
                        "_self": {
                            "href": "http://127.0.0.1/constituents/1515"
                        }
                    }
                }
            }
        ], 
        "titles": {
            "primary": {
                "title": "Composition 8", 
                "language": "en", 
                "order": 1, 
                "type": "Translation",
                "prepend": null,
                "append": null
            },
            "other": [
                {
                    "title": "Komposition 8", 
                    "language": "de", 
                    "order": 2, 
                    "type": "Original Title",
                    "prepend": null,
                    "append":null
                }
            ] 
        },
        "series": null,
        "dates":{
            "begin":1923,
            "end":1923,
            "display":"July 1923"
        },
        "exhibitions": null,
        "sites": [
            {
                "id": 3, 
                "name": "Solomon R. Guggenheim Museum", 
                "location": "New York", 
                "objects": {
                    "total_count": 823
                },
                "_links": {
                    "_self": {
                        "href": "http://127.0.0.1/sites/3"
                    }
                }, 
            }
        ], 
        "movements":[
            {
                "objects":{
                    "total_count":17
                },
                "_links":{
                    "_self":{
                        "href":"http://127.0.0.1/movements/195207"
                    }
                },
                "name":"Bauhaus",
                "id":195207
            }
        ],
        "acquisition":{
            "objects":{
                "total_count":55
            },
            "_links":{
                "_self":{
                    "href":"http://127.0.0.1/acquisitions/6"
                }
            },
            "name":"Solomon R. Guggenheim Founding Collection",
            "id":6
        },
        "edition":null,
        "medium":"Oil on canvas",
        "dimensions":"55 1/8 × 79 1/8 inches (140 × 201 cm)",
        "highlight":true,
        "recent_acquisition":false,
        "credit":"Solomon R. Guggenheim Museum, New York\r\nSolomon R. Guggenheim Founding Collection, By gift",
        "essay":"<p>When Kandinsky returned to his native Moscow after the outbreak of World War I,...",
        "media":[
            {
                 "height":401,
                 "type":"Image",
                 "filename":"37.262_ph_web.jpg",
                 "format":"JPEG",
                 "orientation":"landscape",
                 "width":573,
                 "_links":{
                        "preview":"http://emuseum2.guggenheim.org/media/previews/37.262_ph_web.jpg",
                        "thumb":"http://emuseum2.guggenheim.org/media/postagestamps/37.262_ph_web.jpg",
                        "full":"http://emuseum2.guggenheim.org/media/full/37.262_ph_web.jpg"
                 },
                 "formatid":2
            }
        ],
        "_links":{
            "_self":"/objects/1924"
        },
        "copyright":"© 2012 Artists Rights Society (ARS), New York/ADAGP, Paris",
    }

### Object fields

<table>
    <thead>
        <tr>
            <th>Field</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>id</td>
            <td>number</td>
            <td>Unique ID number for the object</td>
        </tr>
        <tr>
            <td>accession</td>
            <td>string</td>
            <td>Guggenheim catalogue number for the object</td>
        </tr>
        <tr>
            <td>sort_number</td>
            <td>string</td>
            <td>Sortable representation of the ```accession``` property</td>
        </tr>
        <tr>
            <td>sort_name</td>
            <td>string</td>
            <td>Sortable representation of the name of the artist under which
                the object should be alphabetized</td>
        </tr>
        <tr>
            <td>constituents</td>
            <td>array</td>
            <td>An array <a href="#role-objects">Role</a> object</td>
        </tr>
        <tr>
            <td>titles</td>
            <td>object</td>
            <td>A <a href="#titles-objects">Titles</a> object</td>
        </tr>
        <tr>
            <td>series</td>
            <td>object</td>
            <td>A <a href="#title-objects">Title</a> object or <code>null</code></td>
        </tr>
        <tr>
            <td>dates</td>
            <td>object</td>
            <td>A <a href="dates.md">Dates</a> object representing the date or 
                date range of the object's creation</td>
        </tr>
        <tr>
            <td>exhibitions</td>
            <td>array</td>
            <td>An array of Exhibitions objects. Exhibitions in which the 
                object was included (may be null)</td>
        </tr>
        <tr>
            <td>sites</td>
            <td>array</td>
            <td>An array of Site objects</td>
        </tr>
        <tr>
            <td>movements</td>
            <td>array</td>
            <td>An array of Movement objects</td>
        </tr>
        <tr>
            <td>acquisition</td>
            <td>object</td>
            <td>An Acquisition object (may be null)</td>
        </tr>
        <tr>
            <td>edition</td>
            <td>string</td>
            <td>The object's edition, e.g. "edition 3/9"</td>
        </tr>
        <tr>
            <td>medium</td>
            <td>string</td>
            <td>The object's medium</td>
        </tr>
        <tr>
            <td>dimensions</td>
            <td>string</td>
            <td>The object's dimensions</td>
        </tr>
        <tr>
            <td>highight</td>
            <td>boolean</td>
            <td>Whether or not the object is one of the highlights of the 
                collection</td>
        </tr>
        <tr>
            <td>recent_acquisition</td>
            <td>boolean</td>
            <td>Whether or not the object is a recent acquisition</td>
        </tr>
        <tr>
            <td>credit</td>
            <td>string</td>
            <td>Credit line for object</td>
        </tr>
        <tr>
            <td>essay</td>
            <td>string</td>
            <td>Curator's essay on the object. Essays contain HTML markup and should be treated
                accordingly. May be <code>nil</code></td>
        </tr>
    </tbody>
</table>

## Role objects

A Role object represents a Constituent and its connection to the Object.

### Example

    {
        "order": 1, 
        "role": "Artist",
        "constituent": {
            "id": 1515, 
            "firstname": "Vasily", 
            "middlename": null, 
            "lastname": "Kandinsky", 
            "suffix": null,
            "display": "Vasily Kandinsky", 
            "sort": "Kandinsky, Vasily", 
            "dates": {
                "begin": 1866, 
                "display": "b. 1866, Moscow, Russia; d. 1944, Neuilly-sur-Seine, France", 
                "end": 1944
            }, 
            "nationality": "Russian", 
            "objects": {
                "total_count": 17
            }, 
            "_links": {
                "_self": {
                    "href": "http://127.0.0.1/constituents/1515"
                }
            }
        }
    }

### Role object fields

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
            <td>order</td>
            <td>number</td>
            <td>REQUIRED</td>
            <td>The ranking of the constituent among all the constituents of the object</td>
        </tr>
        <tr>
            <td>role</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The role the constituent played in the creation of the object e.g. "Artist", 
                "Collaborator"</td>
        </tr>
        <tr>
            <td>constituent</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>The Constituent object</td>
        </tr>
    </tbody>
</table>


## Titles objects

The Titles object contains the list of multiple titles, each one a 
[Title](#title-objects) by which the artwork is known. The preferred title is 
given in the REQUIRED ```primary``` property. The OPTIONAL ```other``` property, 
if present, will contain a list of other titles -- translations (or an original 
title if the ```primary``` is a translation), alternates, etc.

### Example

    "titles": {
        "primary": {
            "title": "Composition 8", 
            "language": "en", 
            "order": 1, 
            "type": "Translation"
            "prepend": null,
            "append": null
        },
        "other": [
            {
                "title": "Komposition 8", 
                "language": "de", 
                "order": 2, 
                "type": "Original Title"
                "prepend": null,
                "append": null
            }
        ] 
    }

### Titles object fields

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
            <td>primary</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A <a href="#title-objects">title object</a>. The preferred title for 
                the object</td>
        </tr>
        <tr>
            <td>other</td>
            <td>array</td>
            <td>OPTIONAL</td>
            <td>An array of alternate <a href="#title-objects">title</a> objects.</td>
        </tr>
    </tbody>
</table>

## Title objects

### Example

    {
        "title": "Composition 8", 
        "language": "en", 
        "order": 1, 
        "type": "Translation"
        "prepend": null,
        "append": null
    }

### Title object fields

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
            <td>title</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The title</td>
        </tr>
        <tr>
            <td>language</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The ISO 639-1 code of the language of the title. May be 
                <code>null</code></td>
        </tr>
        <tr>
            <td>order</td>
            <td>number</td>
            <td>REQUIRED</td>
            <td>The title's ranking by preference among *all the titles* in the
                <code>Titles</code> object.</td>
        </tr>
        <tr>
            <td>type</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The type of title. Examples: "Title", "Original Title", 
                "Translation"</td>
        </tr>
        <tr>
            <td>prepend</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>Phrase to be prepended to the title when it is displayed, may be <code>null</code></td>
        </tr>
        <tr>
            <td>append</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>Phrase to be appended to the title when it is displayed, may be <code>null</code></td>
        </tr>
    </tbody>
</table>

### Prepends and appends

Titles (currently only series titles) may need to have some additional phrasing, e.g. the series title 
"<i>Beaches</i>" may need to be displayed as "from the <i>Beaches</i> series." The ```prepend``` and 
```append``` indicate what needs to be added before and after the title, respectively. When the title is italicized, 
```prepend``` and ```append``` are not.
