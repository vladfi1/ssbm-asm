#To be inserted at 80019608
################################################################################
# Function: ExiTransferBuffer
# Inject @ 800055f0
# ------------------------------------------------------------------------------
# Description: Sets up EXI slot, writes / reads buffer via DMA, closes EXI slot
# ------------------------------------------------------------------------------
# In: r3 = pointer to buffer
#     r4 = buffer length
#     r5 = read (0x0) or write (0x1)
################################################################################
.include "Common.s"

# the line we're replacing
  stwu sp, -0x0008(sp)

# do stuff
  mr r3, sp
  li r4, 0
  li r5, 0
  branchl r12, FN_EXITransferBuffer

Exit:
# restore contents of r3
  li r3,0

