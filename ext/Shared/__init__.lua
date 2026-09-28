--枪械瞄准镜基础调整
require('__shared/Base')
require('__shared/Advance')

--瞄准镜镜内视野
require('__shared/Renderfov/Assaultfov')
require('__shared/Renderfov/Engineerfov')
require('__shared/Renderfov/Supportfov')
require('__shared/Renderfov/Reconfov')
require('__shared/Renderfov/Generalfov')
require('__shared/Renderfov/Commonfov')

--热成像调整
require('__shared/IRNV/NightVision')  --原版夜视镜调整
require('__shared/IRNV/FLIR')         --原版黑白热成像调整
require('__shared/IRNV/SPFLIR')       --单人剧情成像调整
require('__shared/IRNV/COOPFLIR')     --合作模式成像调整
require('__shared/IRNV/IRNVSwitch')   --热成像转换
require('__shared/IRNV/Bot1pFX')   --MAV、EOD部分视觉性功能调整

