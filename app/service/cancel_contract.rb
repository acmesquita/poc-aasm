class CancelContract

  def initialize(contract, args = {})
    @contract = contract
  end

  def call
    @contract.canceled_at = Time.now
    
    puts "Send email to: #{@contract.name}"
    puts 'Do another thinks'
  end

end