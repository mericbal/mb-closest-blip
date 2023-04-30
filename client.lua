-- mb
function CreateBlip(input)
  local blip = AddBlipForCoord(input.Coords.x, input.Coords.y, input.Coords.z) -- blip coords on the map
  SetBlipSprite(blip, input.Blip.sprite) -- blip icon
  SetBlipDisplay(blip, 6) -- blip entry type
  SetBlipScale(blip, input.Blip.size) -- blip size
  SetBlipColour(blip, input.Blip.color)
  SetBlipAsShortRange(blip, true) -- minimap thing
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(input.Blip.name)
  EndTextCommandSetBlipName(blip)
  return blip
end

CreateThread(function()
  local active_blip = 0
  while true do
    local my_coords = GetEntityCoords(PlayerPedId())
    local closest_blip

    for index, blip in pairs(Config.AllBlips) do
      local dist_check = #(my_coords - blip.Coords)
      if dist_check < Config.Distance then
        closest = dist_check
        closest_blip = blip
      end
    end

    if DoesBlipExist(active_blip) then RemoveBlip(active_blip) end
  
    if closest_blip then active_blip = CreateBlip(closest_blip) end
  
    Wait(Config.UpdateTime * 1000)
  end
end) 
