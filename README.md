Guggenheim Collections API Specification
========================================

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
			<td><a href="objects.md">/objects</a></td>
			<td>Index of object links</td>
		</tr>
		<tr>
			<td><a href="objects.md">/objects/{id}</a></td>
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
			<td><a href="objects.md">Object</a></td>
			<td>A Collection Object</td>
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
		<tr>
			<td><a href="dates.md">Dates</a></td>
			<td>Dates and date ranges</td>
		</tr>
	</tbody>
</table>
