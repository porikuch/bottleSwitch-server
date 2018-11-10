class ReleaseBottleController < ApplicationController
  def create
    bottle_id = (Bottle.find_by(id: params[:id])).id.to_i
    drift_point_ids = DriftPoint.pluck(:id)
    drift_point_id = drift_point_ids.sample.to_i
    BottleDriftHistory.create(bottle_id: bottle_id,
                              drift_point_id: drift_point_id
                             )
    render json: {status: true, drift_point_id: drift_point_id}
  end
end
