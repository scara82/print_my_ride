class Api::BidsController < ApplicationController


  def create
    bid = Bid.new
    bid.price = paramas[:bid]
    bid.creator_id = paramas[:id]
    bid.save
  end

end

def show
  render json: Bid.find_by(creator_id:params[:id])
end
# will need sessions id to append to job card
