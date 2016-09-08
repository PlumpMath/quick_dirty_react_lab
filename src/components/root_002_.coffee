module.exports = rr

    mock_items: [
        {
            name: 'item_a'
            uid: shortid()
        }
        {
            name: 'item_b'
            uid: shortid()
        }
        {
            name: 'item_c'
            uid: shortid()
        }
    ]
    getInitialState: ->
        lighted_item: null
    render: ->
        div null,
            ul null,
                for item, idx in @mock_items
                    uid = item.uid
                    li
                        key: uid
                        onClick: do (idx, uid) =>
                            (e) =>
                                # justf to illustrate these are bound in closure by the do lambda,
                                c idx
                                c uid
                                @setState
                                    lighted_item: uid
                        style:
                            cursor: 'pointer'
                            background: do (uid) =>
                                c @state.lighted_item
                                c 'and uid', uid
                                if @state.lighted_item is uid then 'magenta' else 'chartreuse'
                            # background: 'chartreuse'
                        item.name
