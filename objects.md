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
			<td>Index of object links
		</tr>
		<tr>
			<td>/objects/{id}</td>
			<td>Retrieve object with corresponding `id`</td>

	</tbody>
</tr>

### Example index response

The index endpoint provides a list of links to other object-related endpoints.

## Object objects

### Example

	{
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
	 "recent_acquisition":false,
	 "dates":{
			"end_date":1923,
			"begin_date":1923,
			"display_date":"July 1923"
	 },
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
	 "highlight":true,
	 "id":1924,
	 "sort_name":"Kandinsky, Vasily",
	 "sort_number":"		37	 262",
	 "dimensions":"55 1/8 × 79 1/8 inches (140 × 201 cm)",
	 "has_essay":true,
	 "accession":"37.262",
	 "_links":{
			"_self":"/objects/1924"
	 },
	 "edition":null,
	 "medium":"Oil on canvas",
	 "essay":"<p>When Kandinsky returned to his native Moscow after the outbreak of World War I,...",
	 "copyright":"© 2012 Artists Rights Society (ARS), New York/ADAGP, Paris",
	 "sort_title":"Composition 8"
	}


