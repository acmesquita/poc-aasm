require 'aasm'
require_relative '../service/cancel_contract.rb'

class Contract
  include AASM

  def initialize(id, name, content)
    @id = id
    @name = name
    @content = content
    @created_at = Time.now
  end

  attr_reader :id, :name, :content, :signature, :signed_at, :created_at
  attr_accessor :canceled_at
  
  aasm timestamps: true do
    state :created, initial: true
    state :signed, :canceled

    after_all_transitions :log_status_change

    event :to_sign do
      transitions from: :created, to: :signed, after: Proc.new {|*args| sign_contract(*args) }
    end

    event :to_cancel do
      transitions from: [:created, :signed], to: :canceled, after: CancelContract
    end
  end

  def log_status_change
    puts "changing from #{aasm.from_state} to #{aasm.to_state} (event: #{aasm.current_event})"
  end

  def sign_contract(signature)
    @signature = signature
    @signed_at = Time.now
  end
end