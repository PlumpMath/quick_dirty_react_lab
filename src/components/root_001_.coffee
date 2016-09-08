module.exports = rr
    render: ->
        div
            style:
                display: 'flex'
                flexDirection: 'column'
            div
                style:
                    height: .3 * window_height
                    background: 'gold'
            div
                style:
                    background: 'tomato'
                    height: .3 * window_height
                    display: 'flex'
                    flexDirection: 'row'
                    justifyContent: 'center'
                    alignItems: 'center'
                div
                    style:
                        width: .5 * window_width,
                        textAlign: 'center'
                    h3 null, 'hello'
                div
                    style:
                        width: .5 * window_width
                        textAlign: 'center'
                    h4 null, "yes"
