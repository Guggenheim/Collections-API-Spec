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
		"dates":{
			"begin_date":1923,
			"end_date":1923,
			"display_date":"July 1923"
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
		"titles":{
			"primary":{
				 "type":"Translation",
				 "order":1,
				 "id":2037,
				 "title":"Composition 8",
				 "language":"English",
				 "language_code":"en"
			},
			"sort":"Composition 8",
			"other":[
				 {
						"type":"Original Title",
						"order":2,
						"id":8076,
						"title":"Komposition 8",
						"language":"German",
						"language_code":"de"
				 }
			]
		},
		"constituents":[
			{
				 "constituent":{
						"displayname":"Vasily Kandinsky",
						"objects":{
							 "count":17
						},
						"dates":{
							 "end_date":1944,
							 "begin_date":1866,
							 "display_date":"b. 1866, Moscow, Russia; d. 1944, Neuilly-sur-Seine, France"
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
			<td>dates</td>
			<td>object</td>
			<td>A dates object representing the date or date range of the
				object's creation</td>
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
