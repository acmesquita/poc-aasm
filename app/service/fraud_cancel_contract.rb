require_relative './cancel_contract'

class FraudCancelContract < CancelContract
  def call
    @contract.to_cancel
    @contract.cancel_description = 'Fraud Cancel Motivation'
  end
end
