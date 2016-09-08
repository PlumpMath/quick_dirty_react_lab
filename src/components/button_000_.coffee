module.exports = rr
    render: ->
        {x, y, width, height, color, label} = @props
        svg
            style:
                width: window_width
                height: window_height
            rect
                style:
                    cursor: 'pointer'
                x: x * window_width
                y: y * window_height
                width: .1 * window_width
                height: .1 * window_height
                fill: color
                onClick: @props.click_handler
            text
                style:
                    cursor: 'pointer'
                x: (x * window_width) + (.012 * window_width)
                y: (y * window_height) + (.06 * window_height)
                fontSize: .03 * window_height
                textLength: .08 * window_width
                onClick: @props.click_handler
                label
