require './globals.coffee'
root = document.getElementById 'root'
root_001 = require './components/root_001_.coffee'
root_002 = require './components/root_002_.coffee'
root_component = root_002
window.onload = =>
    rectangle = root.getBoundingClientRect()
    {width, height} = rectangle
    window.window_width = width
    window.window_height = height
    debounce = (fn, wait, immediate) ->
        timeout = 'scoped here'
        ->
            context = @
            args = arguments
            later = ->
                timeout = null
                if not(immediate) then fn.apply(context, args)
            callNow = immediate and not(timeout)
            clearTimeout(timeout)
            timeout = setTimeout(later, wait)
            if callNow then fn.apply(context, args)
    set_boundingRect = ->
        rectangle = root.getBoundingClientRect()
        {width, height} = rectangle
        window.window_width = width
        window.window_height = height
        React_DOM.render root_component(), root
    window.onresize = debounce(set_boundingRect, 200, false)
    # React_DOM.render root_component(), root
    React_DOM.render root_component(), root
