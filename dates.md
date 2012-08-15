Dates
====================

Dates for [objects](objects.md) and constituents are given in Dates objects. A 
Dates may represent a single year, a range of years, or a range of years with a 
beginning but no end.

## Dates objects

### Examples

A single date:

    "dates":{
        "begin":1923,
        "end":1923,
        "display":"July 1923"
    },

A date range:

    {
        "begin":1866,
        "end":1944,
        "display":"b. 1866, Moscow, Russia; d. 1944, Neuilly-sur-Seine, France"
    }

An open ended date range:

    {
        "begin":1978,
        "end": null,
        "display":"b. 1978, New York City"
    }

### Dates fields

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
            <td>begin</td>
            <td>number</td>
            <td>The start of the date range</td>
        </tr>
        <tr>
            <td>end</td>
            <td>number</td>
            <td>The end of the date range</td>
        </tr>
        <tr>
            <td>display</td>
            <td>string</td>
            <td>Preferred wording or formatting for the dates.</td>
        </tr>
    </tbody>
</table>

