%dw 1.0
%output application/json
---
payload map ((payload01 , indexOfPayload01) -> {
	ID: payload01.ID,
	code: payload01.code1++ payload01.code2,
	price: payload01.price as :number,
	departureDate: payload01.takeOffDate as :string,
	origin: payload01.fromAirport,
	destination: payload01.toAirport,
	emptySeats: payload01.seatsAvailable as :number,
	plane: {
		type: payload01.planeType,
		totalSeats: payload01.totalSeats as :number
	}
})