// Considered saving cumulativeGain as a value and updating value on each new ping,
// but the pings are draggable during creation and during edit.  Needs to re-calc every time
// a ping is dragged/updated. 

TripModel.prototype.getCumulativeGain = function(elevations){
  var cumulativeGain = 0
  for (i = 0; i < elevations.length - 1; i++){
    fromElevation = elevations[i].elevation
    toElevation = elevations[i + 1].elevation

    if (fromElevation < toElevation) {
      cumulativeGain += (toElevation - fromElevation)
    }
  }
  return cumulativeGain
}
