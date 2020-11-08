Citizen.CreateThread(function()
	while true do
		Citizen.Wait(8000)
		StopResource("adth")
		Citizen.Wait(1000)
		StartResource("adth")
		CancelEvent()
	end
end)