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
        <tr>
            <td>/objects/on-view</td>
            <td>Retrieve objects currently on view</td>
        </tr>
        <tr>
            <td>/objects/dates</td>
            <td>Index of dates</td>
        </tr>
        <tr>
            <td>/objects/dates/{year}</td>
            <td>Retrieve objects create in the given year</td>
        </tr>

        <tr>
            <td>/objects/dates/{year1}/{year2}</td>
            <td>Retrieve objects created between year1 and year2</td>
        </tr>
    </tbody>
</table>

### Example index response

The index endpoint provides a list of links to other object-related endpoints.

### `/objects/on-view`

Returns all objects currently on view. This will included a number of objects 
not owned by but loaned to the Solomon R. Guggenheim museum for current 
exhibitions. Loaned objects must be distinguished from permanent collection 
objects in any presentation.

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
            <td>OPTIONAL</td>
            <td>The page of the paginated objects resource to return 
                (default 1).</td>
        </tr>
        <tr>
            <td>per_page</td>
            <td>OPTIONAL</td>
            <td>The maximum number of items on to return on each page (default 
                20, maximum 100).</td>
        </tr>
        <tr>
            <td>no_objects</td>
            <td>OPTIONAL</td>
            <td>If set to any value, return only a count of the total number
                of objects. This option overrides 
                <code>page</code> and <code>per_page</code>.</td>
        </tr>
    </tbody>
</table>

### `/objects/dates`

Returns an example list of dates endpoints organized by decade.

### Example

Request:

    curl http://127.0.0.1/objects/dates

Response:

    {
        "_links": {
            "_self": {
                "href": "http://127.0.0.1/objects/dates/"
            }, 
            "decades": [
                {
                    "href": "http://127.0.0.1/objects/dates/1860/1869/", 
                    "title": "1860s"
                }, 
                {
                    "href": "http://127.0.0.1/objects/dates/1870/1879/", 
                    "title": "1870s"
                }, 
                ..., 
                {
                    "href": "http://127.0.0.1/objects/dates/2010/2019/", 
                    "title": "2010s"
                }
            ]
        }
    }

### `/objects/dates/{year}`

Returns all objects created in the given year. Many objects have a date range
(see [Dates](dates.md)) and such on object is considered to have been created 
in a given year that year falls within the range of its start and end dates 
inclusive.

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
            <td>OPTIONAL</td>
            <td>The page of the paginated objects resource to return 
                (default 1).</td>
        </tr>
        <tr>
            <td>per_page</td>
            <td>OPTIONAL</td>
            <td>The maximum number of items on to return on each page (default 
                20, maximum 100).</td>
        </tr>
        <tr>
            <td>no_objects</td>
            <td>OPTIONAL</td>
            <td>If set to any value, return only a count of the total number
                of objects. This option overrides 
                <code>page</code> and <code>per_page</code>.</td>
        </tr>
    </tbody>
</table>

### `/objects/dates/{year1}/{year2}`

Returns all objects created between the years year1 and year2. Many objects 
have a date range (see [Dates](dates.md)) and such on object is considered to 
have been created within the given range if either is start date or end date 
falls within the range inclusive.

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
            <td>OPTIONAL</td>
            <td>The page of the paginated objects resource to return 
                (default 1).</td>
        </tr>
        <tr>
            <td>per_page</td>
            <td>OPTIONAL</td>
            <td>The maximum number of items on to return on each page (default 
                20, maximum 100).</td>
        </tr>
        <tr>
            <td>no_objects</td>
            <td>OPTIONAL</td>
            <td>If set to any value, return only a count of the total number
                of objects. This option overrides 
                <code>page</code> and <code>per_page</code>.</td>
        </tr>
    </tbody>
</table>


## Object objects

Objects contain several kinds of resources (Constituents and Movements for 
example) that could contain their own paginated object resources. When these resources are contained within an Object, their paginated resource objects will
only have `total_count`, as if they had been requested with the `no_objects`
option. See Paginated Objects. 

### Example Object object

    {
        "_links": {
            "_self": {
                "href": "http://dev0.guggenheim.org//collections/objects/1924"
            }, 
            "web": {
                "href": "http://www.guggenheim.org/new-york/collections/collection-online/show-full/piece/?&search=&f=Title&object=37.262"
            }
        }, 
        "id": 1924, 
        "accession": "37.262", 
        "acquisition": {
            "_links": {
                "_self": {
                    "href": "http://dev0.guggenheim.org//collections/acquisitions/6"
                }
            }, 
            "id": 6, 
            "name": "Solomon R. Guggenheim Founding Collection", 
            "objects": {
                "total_count": 55
            }
        }, 
        "constituents": [
            {
                "constituent": {
                    "_links": {
                        "_self": {
                            "href": "http://dev0.guggenheim.org//collections/constituents/1515"
                        }
                    }, 
                    "dates": {
                        "begin": 1866, 
                        "display": "b. 1866, Moscow, Russia; d. 1944, Neuilly-sur-Seine, France", 
                        "end": 1944
                    }, 
                    "display": "Vasily Kandinsky", 
                    "firstname": "Vasily", 
                    "id": 1515, 
                    "lastname": "Kandinsky", 
                    "middlename": null, 
                    "nationality": "Russian", 
                    "objects": {
                        "total_count": 17
                    }, 
                    "sort": "Kandinsky, Vasily", 
                    "suffix": null
                }, 
                "order": 1, 
                "role": "Artist"
            }
        ], 
        "copyright": "\u00a9 2012 Artists Rights Society (ARS), New York/ADAGP, Paris", 
        "credit": "Solomon R. Guggenheim Museum, New York\r\nSolomon R. Guggenheim Founding Collection, By gift", 
        "dates": {
            "begin": 1923, 
            "display": "July 1923", 
            "end": 1923
        }, 
        "dimensions": "55 1/8 \u00d7 79 1/8 inches (140 \u00d7 201 cm)", 
        "edition": null, 
        "essay": "<p>When Kandinsky returned to his native Moscow after the outbreak of World War I, his expressive abstract style underwent changes that reflected the utopian artistic experiments of the Russian avant-garde. The emphasis on geometric forms, promoted by artists such as Kazimir Malevich, Aleksandr Rodchenko, and Liubov Popova in an effort to establish a universal aesthetic language, inspired Kandinsky to expand his own pictorial vocabulary. Although he adopted some aspects of the geometrizing trends of Suprematism and Constructivism&#8212;such as overlapping flat planes and clearly delineated shapes&#8212;his belief in the expressive content of abstract forms alienated him from the majority of his Russian colleagues, who championed more rational, systematizing principles. This conflict led him to return to Germany in 1921. <i>In the Black Square</i>, executed two years later, epitomizes Kandinsky\u2019s synthesis of Russian avant-garde art and his own lyrical abstraction: the white trapezoid recalls Malevich\u2019s Suprematist paintings, but the dynamic compositional elements, resembling clouds, mountains, sun, and a rainbow, still refer to the landscape.</p><p>In 1922 Kandinsky joined the faculty of the Weimar Bauhaus, where he discovered a more sympathetic environment in which to pursue his art. Originally premised on a Germanic, expressionistic approach to artmaking, the Bauhaus aesthetic came to reflect Constructivist concerns and styles, which by the mid-1920s had become international in scope. While there, Kandinsky furthered his investigations into the correspondence between colors and forms and their psychological and spiritual effects. In <i>Composition 8</i>, the colorful, interactive geometric forms create a pulsating surface that is alternately dynamic and calm, aggressive and quiet. The importance of circles in this painting prefigures the dominant role they would play in many subsequent works, culminating in his cosmic and harmonious image <i>Several Circles</i>. \u201cThe circle,\u201d claimed Kandinsky, \u201cis the synthesis of the greatest oppositions. It combines the concentric and the eccentric in a single form and in equilibrium. Of the three primary forms, it points most clearly to the fourth dimension.\u201d</p><p>Nancy Spector", 
        "exhibitions": null, 
        "location": null, 
        "media": [
            {
                "assets": {
                    "full": {
                        "_links": {
                            "_self": {
                                "href": null
                            }
                        }, 
                        "height": 401, 
                        "width": 573
                    }
                }, 
                "format": "JPEG", 
                "orientation": "landscape", 
                "type": "Image"
            }
        ], 
        "medium": "Oil on canvas", 
        "movements": [
            {
                "_links": {
                    "_self": {
                        "href": "http://dev0.guggenheim.org//collections/movements/195207"
                    }
                }, 
                "id": 195207, 
                "name": "Bauhaus", 
                "objects": {
                    "total_count": 17
                }
            }
        ], 
        "series": null, 
        "sites": [
            {
                "_links": {
                    "_self": {
                        "href": "http://dev0.guggenheim.org//collections/sites/3"
                    }
                }, 
                "id": 3, 
                "location": "New York", 
                "name": "Solomon R. Guggenheim Museum", 
                "objects": {
                    "total_count": 834
                }
            }
        ], 
        "sort_name": "Kandinsky, Vasily", 
        "sort_number": "    37   262", 
        "sort_title": "Composition 8", 
        "titles": {
            "other": [
                {
                    "append": null, 
                    "language": "de", 
                    "order": 2, 
                    "prepend": null, 
                    "title": "Komposition 8", 
                    "type": "Original Title"
                }
            ], 
            "primary": {
                "append": null, 
                "language": "en", 
                "order": 1, 
                "prepend": null, 
                "title": "Composition 8", 
                "type": "Translation"
            }
        }
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
            <td>sort_title</td>
            <td>string</td>
            <td>Sortable representation of the title of the work under which
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
            <td>location</td>
            <td>string</td>
            <td>Location in museum if on display (may be null).</td>
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
            <td>credit</td>
            <td>string</td>
            <td>Credit line for object</td>
        </tr>
        <tr>
            <td>copyright</td>
            <td>string</td>
            <td>Copyright statement</td>
        </tr>
        <tr>
            <td>essay</td>
            <td>string</td>
            <td>Curator's essay on the object. Essays contain HTML markup and should be treated
                accordingly. May be <code>nil</code></td>
        </tr>
        <tr>
            <td>media</td>
            <td>array</td>
            <td>An array of media objects</td>
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
