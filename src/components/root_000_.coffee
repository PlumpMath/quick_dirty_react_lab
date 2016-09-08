
button = require './button_000_.coffee'
instrument_000 = require './instrument_000_.coffee'
counter = 303


rendre_001 = ->
    svg
        style:
            width: window_width
            height: window_height
        rect
            x: 0
            y: 0
            width: window_width
            height: window_height
            fill: 'chartreuse'
        button
            x: .3
            y: .3
            color: 'magenta'
            label: 'button'
            click_handler: click_handler_000.bind @
        button
            x: .6
            y: .3
            color: 'floralwhite'
            label: 'increment'
            click_handler: click_handler_001.bind @
        instrument_000
            x: .4
            y: .5
            color: 'indianred'
            counter_readout: @state.counter



click_handler_000 = ->
    c 'decrement'
    @setState
        counter: --@state.counter
click_handler_001 = ->
    c 'increment'
    @setState
        counter: ++@state.counter

module.exports = rr
    getInitialState: ->
        counter: 303
    render: rendre_001
