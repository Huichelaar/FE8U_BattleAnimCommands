@ Definitions

@ Functions
.global New6C
.type   New6C, function
.set    New6C, 0x08002C7D

.global BGSetPosition
.type   BGSetPosition, function
.set    BGSetPosition, 0x0800148D

.global GetAISLayerID
.type   GetAISLayerID, function
.set    GetAISLayerID, 0x0805A155

.global ClearBG1Setup
.type   ClearBG1Setup, function
.set    ClearBG1Setup, 0x08055179

.global GetAISSubjectID
.type   GetAISSubjectID, function
.set    GetAISSubjectID, 0x0805A16D

.global Command85
.type   Command85, function
.set    Command85, 0x08071B6D

.global SomeImageStoringRoutine_SpellAnim2
.type   SomeImageStoringRoutine_SpellAnim2, function
.set    SomeImageStoringRoutine_SpellAnim2, 0x0805581D

.global SomePaletteStoringRoutine_SpellAnim2
.type   SomePaletteStoringRoutine_SpellAnim2, function
.set    SomePaletteStoringRoutine_SpellAnim2, 0x08055845

.global Magical_anime_with_frames_and_TSA_images
.type   Magical_anime_with_frames_and_TSA_images, function
.set    Magical_anime_with_frames_and_TSA_images, 0x080551B1


@ RAM locations
.global LeftBattleStructPointer,
.set    LeftBattleStructPointer, 0x0203E188

.global RightBattleStructPointer,
.set    RightBattleStructPointer, 0x0203E18C


@ Procs
.global Procs_efxMagfcast
.set    Procs_efxMagfcast, 0x085D8F94

.global Procs_efxMagfcastBG
.set    Procs_efxMagfcastBG, 0x085D8FAC
