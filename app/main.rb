require_relative './model/contract.rb'
require_relative './service/fraud_cancel_contract.rb'

c1 = Contract.new(
  1,
  'XPTO',
  'Anim elit consequat irure in laborum adipisicing proident enim. Labore sint enim proident culpa commodo ea. Consectetur eiusmod est eiusmod amet. Esse magna labore ea nulla duis. Anim elit minim eu incididunt elit officia enim do veniam esse. Exercitation in aute laboris dolor esse dolore eiusmod duis qui. Reprehenderit id do ad magna dolore cupidatat aute duis incididunt in dolor aliquip amet.'
)

puts "Contract created?: #{c1.created?} in #{c1.created_at}"
puts "Contract signed?: #{c1.signed?} in #{c1.signed_at}"
puts "Contract canceled?: #{c1.canceled?} in #{c1.canceled_at}"

c1.to_sign('xpto')

puts "Contract created?: #{c1.created?} in #{c1.created_at}"
puts "Contract signed?: #{c1.signed?} in #{c1.signed_at}"
puts "Contract canceled?: #{c1.canceled?} in #{c1.canceled_at}"

puts "Contract signed?: #{c1.signature}"

c1.to_cancel

puts "Contract created?: #{c1.created?} in #{c1.created_at}"
puts "Contract signed?: #{c1.signed?} in #{c1.signed_at}"
puts "Contract canceled?: #{c1.canceled?} in #{c1.canceled_at}"


c2 = Contract.new(
  2,
  'XPTO 2',
  'Anim elit consequat irure in laborum adipisicing proident enim. Labore sint enim proident culpa commodo ea. Consectetur eiusmod est eiusmod amet. Esse magna labore ea nulla duis. Anim elit minim eu incididunt elit officia enim do veniam esse. Exercitation in aute laboris dolor esse dolore eiusmod duis qui. Reprehenderit id do ad magna dolore cupidatat aute duis incididunt in dolor aliquip amet.'
)

serviceFraudCancelContract = FraudCancelContract.new(c2)

serviceFraudCancelContract.call

puts "Contract canceled? #{c2.canceled?} in #{c2.canceled_at} because #{c2.cancel_description}"