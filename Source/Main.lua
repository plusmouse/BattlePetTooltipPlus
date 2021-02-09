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

  local colored = petInfo[5]:gsub("|n$", ""):gsub("|r", "|cffffffff") .. "|r"

  GameTooltip_AddNormalLine(BattlePetTooltip, colored, true)
end
