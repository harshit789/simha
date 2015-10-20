json.status "1"
json.bookings @bookings do |booking|
  json.extract! booking, :id, :from, :to, :datetime
  json.cab "#{booking.cab.name}[#{booking.cab.model}]"
end