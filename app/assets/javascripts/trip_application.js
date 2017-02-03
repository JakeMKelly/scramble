var initMap = function(){
  var id = window.trip.id

  map = setMap()

  if (id) {
    loadPings(id, map)
  }

  var trip = new TripController(
    new TripView,
    new TripModel(map)
  )

  trip.view.showAdd()

  $('#add-ping').click(trip.pingHandler.bind(trip))

  $('#submit-pings').click(trip.submitHandler.bind(trip))
}





