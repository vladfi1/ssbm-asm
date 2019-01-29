#inject at 0x800198E8
#inserts poll read call right before they're transformed into game-engine
stwu sp, -0x0008(sp)
lis r12, 0x8001
ori r12, r12, 0x95FC
mtlr r12
blrl
