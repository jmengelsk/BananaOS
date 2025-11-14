.class public final Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;
.super Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(Z)V
    .registers 5

    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :goto_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    if-eqz v1, :cond_29

    iget-object v2, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_2c

    :try_start_21
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    monitor-exit v2

    goto :goto_29

    :catchall_26
    move-exception p0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_26

    :try_start_28
    throw p0

    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catchall_2c
    move-exception p0

    goto :goto_30

    :cond_2e
    monitor-exit p1

    return-void

    :goto_30
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2c

    throw p0
.end method
