.class public final Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mHardwareBuffer:Landroid/hardware/HardwareBuffer;


# virtual methods
.method public final write()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    :cond_a
    return-void
.end method
