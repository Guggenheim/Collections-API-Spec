QuickSearch
====================

The ```quicksearch``` endpoint allows you to retrieve object listings by entering a full or partial ```artist name```, ```artwork title``` or ```accession number```.

## Endpoints

### `/quicksearch`

Returns an alphabetically-sorted, paged object listing of artwork objects.

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

    curl -H "Accept: application/vnd.guggenheim.collection+json" -H "X-GUGGENHEIM-API-KEY: $GUGGAPIKEY"  \
    "http://api.guggenheim.org/collections/quicksearch?q=picasso&per_page=1"
    
Response:


```
 {
  "objects": {
    "page": 1,
    "pages": 25,
    "items_per_page": 1,
    "count": 1,
    "total_count": 25,
    "items": [
      {
        "id": 16169,
        "accession": "2007.78",
        "sort_number": "  2007    78",
        "sort_title": "Hommage à Picasso",
        "sort_name": "Darboven Hanne",
        "constituents": [
          {
            "order": 1,
            "displayed": true,
            "role": "Artist",
            "constituent": {
              "id": 896,
              "firstname": "Hanne",
              "middlename": null,
              "lastname": "Darboven",
              "suffix": null,
              "display": "Hanne Darboven",
              "sort": "Darboven Hanne",
              "dates": {
                "begin": 1941,
                "end": 2009,
                "display": "b. 1941, Munich; d. 2009, Hamburg"
              },
              "has_bio": true,
              "objects": {
                "total_count": 1
              },
              "_links": {
                "_self": {
                  "href": "http://api.guggenheim.org/collections/constituents/896"
                }
              }
            }
          }
        ],
        "titles": {
          "primary": {
            "title": "Hommage à Picasso",
            "language": null,
            "type": "Title",
            "order": 1,
            "prepend": null,
            "append": null
          },
          "other": null
        },
        "series": null,
        "dates": {
          "begin": 1995,
          "end": 2006,
          "display": "1995–2006",
          "span": true
        },
        "sites": [
          {
            "id": 5,
            "name": "Deutsche Guggenheim Berlin",
            "location": "Berlin",
            "objects": {
              "total_count": 47
            },
            "_links": {
              "_self": {
                "href": "http://api.guggenheim.org/collections/sites/5"
              }
            }
          }
        ],
        "movements": null,
        "acquisition": {
          "id": 18,
          "name": "Deutsche Guggenheim Commissions",
          "objects": {
            "total_count": 47
          },
          "_links": {
            "_self": {
              "href": "http://api.guggenheim.org/collections/acquisitions/18"
            }
          }
        },
        "exhibitions": null,
        "edition": null,
        "medium": "270 framed panels with 36 drawings in each; bronze bust of Picasso; 3 straw donkeys; 2 vitrines with sculptures of zodiac signs; bronze goat; 1 framed print of a Picasso's \"Seated Figure in Turkish Costume,\" 1955; and musical score by Hanne Darboven",
        "dimensions": "dimensions variable",
        "credit": "Solomon R. Guggenheim Museum, New York\r\nCommissioned by Deutsche Bank AG in consultation with the Solomon R. Guggenheim Foundation for the Deutsche Guggenheim, Berlin",
        "has_essay": true,
        "has_extended_label": false,
        "copyright": "© Hanne Darboven",
        "media": [
          {
            "orientation": "portrait",
            "type": "Image",
            "format": "JPEG",
            "rank": 1,
            "copyright": "Photo: Matthias Schormann",
            "assets": {
              "hires": {
                "width": 490,
                "height": 552,
                "_links": {
                  "_self": {
                    "href": "http://annex.guggenheim.org/collections/media/hires/2007.78_ph_web.jpg"
                  }
                }
              },
              "app": {
                "width": 1136,
                "height": 1280,
                "_links": {
                  "_self": {
                    "href": "http://annex.guggenheim.org/collections/media/1280/2007.78_ph_web.jpg"
                  }
                }
              },
              "large": {
                "width": 801,
                "height": 902,
                "_links": {
                  "_self": {
                    "href": "http://annex.guggenheim.org/collections/media/902/2007.78_ph_web.jpg"
                  }
                }
              },
              "full": {
                "width": 435,
                "height": 490,
                "_links": {
                  "_self": {
                    "href": "http://annex.guggenheim.org/collections/media/490/2007.78_ph_web.jpg"
                  }
                }
              },
              "medium": {
                "width": 266,
                "height": 300,
                "_links": {
                  "_self": {
                    "href": "http://annex.guggenheim.org/collections/media/300/2007.78_ph_web.jpg"
                  }
                }
              },
              "small": {
                "width": 142,
                "height": 160,
                "_links": {
                  "_self": {
                    "href": "http://annex.guggenheim.org/collections/media/160/2007.78_ph_web.jpg"
                  }
                }
              },
              "tiny": {
                "width": 55,
                "height": 62,
                "_links": {
                  "_self": {
                    "href": "http://annex.guggenheim.org/collections/media/62/2007.78_ph_web.jpg"
                  }
                }
              }
            },
            "sequence": null
          }
        ],
        "object_types": [
          {
            "id": 195196,
            "name": "Installation",
            "objects": {
              "total_count": 135
            },
            "_links": {
              "_self": {
                "href": "http://api.guggenheim.org/collections/objects/types/195196"
              }
            }
          }
        ],
        "permanent_collection": true,
        "recent_acquisition": false,
        "_links": {
          "_self": {
            "href": "http://api.guggenheim.org/collections/objects/16169"
          },
          "web": {
            "href": "http://www.guggenheim.org/new-york/collections/collection-online/artwork/16169"
          }
        },
        "essay": "<p><a href=\"new-york/collections/collection-online/show-full/bio/?artist_name=Hanne%20Darboven&page=1&f=Name&cr=1\">Hanne Darboven</a>'s installation <i>Hommage à Picasso</i> engulfs the viewer in 9,720 of the artist's signature sheets of paper with numeric writing, which document the last decade of the twentieth century. The artist developed her conceptual approach to the demarcation of time in numerals and words beginning in the mid-1960s. She realized that the digits designating dates on the Gregorian calendar could serve as a neutral, “graphic equivalent for the basically nonvisual phenomenon of time,” which could be altered through the application of an ever-evolving system of her own making.</p><p>In the 1970s, Darboven started incorporating additional elements in her work, among them texts by various authors, photographs, and assorted objects that she found, purchased, or received as gifts. Such items enhanced her exploration of specific and varied aspects of time and history, including biography.  In the late 1970s, Darboven began to produce musical scores based on the calendar and her personal number systems. Thus, by the end of the 1970s, all of the elements that came to characterize the “Hanne Darboven” style had been established.<p>In this installation, she combines her numeric record of the twentieth century's end with a framed lithograph of <a href=\"new-york/collections/collection-online/show-full/bio/?artist_name=Pablo%20Picasso&page=1&f=Name&cr=1\">Pablo Picasso</a>'s 1955 painting <i>Seated Figure in Turkish</i>, a series of purchased and commissioned sculptures ranging from a bronze, Roman-style bust of Picasso to birch-twig donkeys made in Poland, and the newly-produced musical work for 120 voices, <i>Opus 60</i>. She began this work in the mid-1990s, a time when fin-de siècle rhetoric was prevalent in the cultural conversation. As an artist totally focused on time and deeply committed to the theme of the century, Darboven naturally turned her attention to what that moment meant for her personally, and on a more universal level what one could say about art in the 20th-century. The resulting work engages her signature record of time, and it investigates a common theme of the 1990s: the recognition of archetypal individuals seen to represent the last one hundred years. In the case of art, this figure was clearly Pablo Picasso.</p><p>Taken together, the various components of the installation paint a multi-layered portrait of Picasso and Hanne Darboven, which interrogates the central issues of repetition, citation, and homage in art. <i>Hommage à Picasso</i> simultaneously acknowledges that Picasso was the last great painter of the 20th century and argues that the repetitiveness of his late work—and its legacy in the decades following his death—revealed the limitations of the medium and the traditional approach to art as expression that he still utilized. Darboven cleverly contrasts this analytical portrait of Picasso with a conceptual picture of her own approach. Like the Spanish master, she continuously repeats and reinterprets the defining elements of her signature style.  But she has transcended the constraints of monotonous visual citations through her music, which is at once clearly identifiable as Hanne Darboven's work and indicative of the limitless possibilities of her oeuvre as a whole to reinvent itself time and again. Thus, the very notion of originality stands at the core of <i>Hommage à Picasso</i>.</p><p>Valerie Hillings</p>\r\n",
        "extended_label": null
      }
    ]
  },
  "_links": {
    "_self": {
      "href": "http://api.guggenheim.org/collections/objects/quicksearch"
    },
    "next": {
      "href": "http://api.guggenheim.org/collections/objects/quicksearch?q=picasso&per_page=1&page=2"
    }
  }
}

```

