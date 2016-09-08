module.exports = rr
    backing: ->
        {x, y, width, height, color} = @props
        rect
            x: x * window_width
            y: y * window_height
            width: .1 * window_width
            height: .1 * window_height
            fill: color
    readout: ->
        {x, y, width, height, color, counter_readout} = @props
        text
            x: (x * window_width) + (.008 * window_width)
            y: (y * window_height) + (.06 * window_height)
            fontSize: .03 * window_height
            textLength: .08 * window_width
            counter_readout


    render: ->
        svg
            style:
                width: window_width
                height: window_height
            @backing()
            @readout()
