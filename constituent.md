Constituents
====================

For the purposes of this API, constituents are the principle creators of an 
object (you know, the artists).

## Constituent objects

### Example Constituent object

    {
        "id": 1515, 
        "firstname": "Vasily", 
        "middlename": null, 
        "lastname": "Kandinsky", 
        "suffix": null,
        "display": "Vasily Kandinsky", 
        "sort": "Kandinsky, Vasily", 
        "dates": {
            "begin": 1866, 
            "end": 1944,
            "display": "b. 1866, Moscow, Russia; d. 1944, Neuilly-sur-Seine, France", 
        }, 
        "nationality": "Russian" 
    }

### Constituent fields

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
            <td>id</td>
            <td>number</td>
            <td>REQUIRED</td>
            <td>Unique ID number for the constituent</td>
        </tr>
        <tr>
            <td>firstname</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The constituent's first name, may be <code>null</code></td>
        </tr>
        <tr>
            <td>middlename</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The constituent's middle name, may be <code>null</code></td>
        </tr>
        <tr>
            <td>lastname</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The constituent's last name, may be <code>null</code></td>
        </tr>
        <tr>
            <td>suffix</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>A suffix to be added to the name, may be <code>null</code>. 
                Examples: "Jr.", "The Younger"</td>
        </tr>
        <tr>
            <td>display</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>A version of the name, usually some combination of the 
                previous foru fields, suitable for display</td>
        </tr>
        <tr>
            <td>sort</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>A version of the name suitable for alphatic sorting</td>
        </tr>
        <tr>
            <td>dates</td>
            <td>object</td>
            <td>REQUIRED</td>
            <td>A Dates object</td>
        </tr>
        <tr>
            <td>nationality</td>
            <td>string</td>
            <td>REQUIRED</td>
            <td>The constituent's nationality</td>
        </tr>
    </tbody>
</table>
