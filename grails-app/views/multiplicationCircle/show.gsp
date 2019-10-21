<!doctype html>
<html>
<head>
    <title>Multiplication Circle</title>
    <style>
    svg {
        margin: 5px;
        padding: 5px;
    }

    circle {
        fill: transparent;
        stroke: rgba(255, 0, 0, .7);
        stroke-width: 3px;
    }

    line {
        stroke: black;
        stroke-width: 1px;
    }

    label {
        display: block;
        float: left;
        width: 5em;
    }
    </style>
    <script>
        function increase(valueName) {
            var input = document.getElementById(valueName);
            input.value = parseInt(input.value) + 1;
        }

        function decrease(valueName) {
            var input = document.getElementById(valueName);
            input.value = parseInt(input.value) - 1;
        }

    </script>
</head>

<body>
<form action="/multiplicationCircle/index">
    <input type="submit" style="visibility: hidden; position: absolute;">
    <div>
        <label for="segmentCount">Segments:</label>
        <input type="submit" value="up" onclick="increase('segmentCount')" id="segmentCountUp">
        <input type="number" name="segmentCount" id="segmentCount" value="${circleInstance.segmentCount}">
        <input type="submit" value="down" onclick="decrease('segmentCount')" id="segmentCountDown">
    </div>
    <div>
        <label for="multiply">Multiplier:</label>
        <input type="submit" value="up" onclick="increase('multiply')" id="multiplyUp">
        <input type="number" name="multiply" id="multiply" value="${circleInstance.multiply}">
        <input type="submit" value="down" onclick="decrease('multiply')" id="multiplyDown">
    </div>

    <!-- TODO: Add an input for the table base -->

</form>
<svg width="600" height="600">

    <circle r="300" cx="300" cy="300"/>

    <g:each var="l" in="${circleInstance.lines}">
        <line x1="${l.x1}" y1="${l.y1}" x2="${l.x2}" y2="${l.y2}" />
    </g:each>

</svg>

</body>
</html>
