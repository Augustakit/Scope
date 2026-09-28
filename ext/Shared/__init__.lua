--Weapon scope basic adjustments
require('__shared/Base')
require('__shared/Advance')

--Scope internal field of view
require('__shared/Renderfov/Assaultfov')
require('__shared/Renderfov/Engineerfov')
require('__shared/Renderfov/Supportfov')
require('__shared/Renderfov/Reconfov')
require('__shared/Renderfov/Generalfov')
require('__shared/Renderfov/Commonfov')

--Thermal imaging adjustments
require('__shared/IRNV/NightVision')  --Vanilla night vision scope adjustments
require('__shared/IRNV/FLIR')         --Vanilla black-and-white thermal imaging adjustments
require('__shared/IRNV/SPFLIR')       --Singleplayer imaging adjustments
require('__shared/IRNV/COOPFLIR')     --Co-op mode imaging adjustments
require('__shared/IRNV/IRNVSwitch')   --Thermal imaging switch
require('__shared/IRNV/Bot1pFX')   --MAV, EOD partial visual function adjustments