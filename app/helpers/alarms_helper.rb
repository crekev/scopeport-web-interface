module AlarmsHelper
	# Returns the status message of an alarm.
	def getAlarmStatus status, colored = false
		# Build a standard message.
		if colored == true
			message = "<span class='sensor-error-text'>New/Unattended</span>"
		else
			message = "New/Unattended"
		end
		
		# Return standard message if status is blank.
		return message if status.blank?
		
		# Change the message if the status equals 1.
		if status == 1
			if colored == true
				message = "<span class='sensor-okay-text'>Okay/Attended</span>"
			else
				message = "Okay/Attended"
			end
		end

		# Return the message
		return message
	end

	def getAlarmStatusBackgroundClass status
		return "sensor-error" if status.nil?
		return "sensor-okay"
	end

	# Returns the alarm message of a service.
	def getServiceAlarmMessage ms
		return "The service could not be reached" if ms.blank?
		return "The service had a too high response time (" + ms.to_s + " ms)"
	end
end