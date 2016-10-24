class Dashing.Haenergymeter extends Dashing.Widget
  constructor: ->
    super
    @queryState()

  @accessor 'value',
    get: -> if @_value then (Math.round(@_value*100)/100) else "??"
    set: (key, value) -> @_value = value

  queryState: ->
    $.get '/homeassistant/sensor',
      widgetId: @get('id'),
      deviceId: @get('device')
      (data) =>
        json = JSON.parse data
        @set 'value', json.value

  ready: ->
    if data.value <= 1
      $(@node).css("background-color", "#BEFB22")
    else if data.value >= 1 && data.value <= 2
      $(@node).css("background-color", "#FBE622")
    else if data.value >= 2 && data.value <= 3
      $(@node).css("background-color", "#FB9422")
    else
      $(@node).css("background-color", "#FB4322")

  onData: (data) ->
    if data.value <= 1
      $(@node).css("background-color", "#BEFB22")
    else if data.value >= 1 && data.value <= 2
      $(@node).css("background-color", "#FBE622")
    else if data.value >= 2 && data.value <= 3
      $(@node).css("background-color", "#FB9422")
    else
      $(@node).css("background-color", "#FB4322")
