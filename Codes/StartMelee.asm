#To be inserted at 802254cc
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

# Store stack frame
  backup

  mr r3, sp
  li r4, 0
  li r5, 0
  branchl r12, FN_EXITransferBuffer

Exit:
#restore registers and sp
  restore

#restore code
  lis	r3, 0x804A
  subi r7, r3, 1536
  lwz	r0, -0x6C98 (r13)
