class PurchasesController < ApplicationController

  before_action :purchaseable, only: [:create]

  def create
    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here https://dashboard.stripe.com/account/apikeys
    Stripe.api_key = "sk_test_Cl3dcM7P0MHIsOckJJhXONkY"

    # Get the credit card details submitted by the form
    token = params[:stripeToken]
    amount = params[:amount]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => amount, # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => "Purchase of #{purchaseable.name} from Omni",
        :metadata =>  {
                        "purchaseable_type" => purchaseable.class.name,
                        "purchaseable_id" => purchaseable.id,
                      }
      )
    rescue Stripe::CardError => e
      # The card has been declined
    end

    #create purchase
    render json: "Charge successful!"

  end
end


def purchaseable
  purchaseable_class = params[:purchaseable_type].constantize
  @purchaseable ||= purchaseable_class.find( params[:purchaseable_id] )
end
# purchase
# amount
# user_id
# purchaseable_id
# purchaseable_type



