local BattlePetTooltipPlus = {}

hooksecurefunc (_G, "BattlePetToolTip_Show",
  function(speciesID, ...)
    BattlePetTooltipPlus.ModifyPetTip(speciesID)
  end
)

function BattlePetTooltipPlus.ModifyPetTip(
  speciesID
)
  BattlePetTooltip:AddLine(" ")

  local petInfo = {C_PetJournal.GetPetInfoBySpeciesID(speciesID)}

  BattlePetTooltip:AddLine(petInfo[5], 1, 1, 1, true)
end
