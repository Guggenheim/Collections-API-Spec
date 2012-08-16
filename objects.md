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

### Example Object object

	{
		"id":1924,
		"accession":"37.262",
		"sort_number":"		37	 262",
		"sort_name":"Kandinsky, Vasily",
		"sort_title":"Composition 8"
	    "titles": {
	        "primary": {
	            "title": "Composition 8", 
	            "language": "en", 
	            "order": 1, 
	            "type": "Translation"
	        },
	        "other": [
	            {
	                "title": "Komposition 8", 
	                "language": "de", 
	                "order": 2, 
	                "type": "Original Title"
	            }
	        ] 
	    },
		"dates":{
			"begin":1923,
			"end":1923,
			"display":"July 1923"
		},
		"edition":null,
		"medium":"Oil on canvas",
		"dimensions":"55 1/8 × 79 1/8 inches (140 × 201 cm)",
		"has_essay":true,
		"highlight":true,
		"recent_acquisition":false,
		"credit":"Solomon R. Guggenheim Museum, New York\r\nSolomon R. Guggenheim Founding Collection, By gift",
		"series":null,
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
		"has_series":false,
		"constituents":[
			{
				 "constituent":{
						"displayname":"Vasily Kandinsky",
						"objects":{
							 "count":17
						},
						"dates":{
							 "begin":1866,
							 "end":1944,
							 "display":"b. 1866, Moscow, Russia; d. 1944, Neuilly-sur-Seine, France"
						},
						"suffix":null,
						"lastname":"Kandinsky",
						"nationality":"Russian",
						"alphasort":"Kandinsky, Vasily",
						"firstname":"Vasily",
						"middlename":null,
						"id":1515,
						"_links":{
							 "_self":"/constituents/1515"
						}
				 },
				 "order":1,
				 "role":"Artist"
			}
		],
		"_links":{
			"_self":"/objects/1924"
		},
		"essay":"<p>When Kandinsky returned to his native Moscow after the outbreak of World War I,...",
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
			<td>titles</td>
			<td>object</td>
			<td>A <a href="#titles">Titles</a> object</td>
		</tr>
		<tr>
			<td>dates</td>
			<td>object</td>
			<td>A <a href="dates.md">Dates</a> object representing the date or 
				date range of the object's creation</td>
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
			<td>has_essay</td>
			<td>boolean</td>
			<td>Whether or not the object has an associated essay</td>
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
	</tbody>
</table>

## Titles objects

The Titles object contains the list of multiple titles (each one a 
[Title](#titles) by which the artwork is known. The preferred title is given in
the REQUIRED ```primary``` property. The OPTIONAL ```other``` property, if 
present will contain a list of other titles -- translations (or an original 
title if the ```primary``` is a translation), alternates, etc.

### Example

	"titles": {
	    "primary": {
	        "title": "Composition 8", 
	        "language": "en", 
	        "order": 1, 
	        "type": "Translation"
	    },
	    "other": [
	        {
	            "title": "Komposition 8", 
	            "language": "de", 
	            "order": 2, 
	            "type": "Original Title"
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
			<td>A <a href="#title">title object</a>. The preferred title for 
				the object</td>
		</tr>
		<tr>
			<td>other</td>
			<td>array</td>
			<td>OPTIONAL</td>
			<td>An array of alternate <a href="#title">title</a> objects.</td>
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
				```null``</td>
		</tr>
		<tr>
			<td>order</td>
			<td>number</td>
			<td>REQUIRED</td>
			<td>The title's ranking by preference among *all the titles* in the
				```Titles``` object.</td>
		</tr>
		<tr>
			<td>type</td>
			<td>string</td>
			<td>REQUIRED</td>
			<td>The type of title. Examples: "Title", "Original Title", 
				"Translation"</td>
		</tr>
	</tbody>
</table>

