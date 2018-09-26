struct Time {
	var seconds: TimeInterval
	
	static var zero: Time {
		return Time(0)
	}
	
	func seconds(_ value: TimeInterval) -> Time {
		return Time(self.seconds + value)
	}
	
	func minutes(_ value: TimeInterval) -> Time {
		return Time(self.seconds(60).seconds * value)
	}
	
	func hours(_ value: TimeInterval) -> Time {
		return Time(self.minutes(60).seconds * value)
	}
	
	func days(_ value: TimeInterval) -> Time {
		return Time(self.hours(24).seconds * value)
	}
	
	func weeks(_ value: TimeInterval) -> Time {
		return Time(self.days(7).seconds * value)
	}
	
	init(_ seconds: TimeInterval = 0) {
		self.seconds = seconds
	}
}
