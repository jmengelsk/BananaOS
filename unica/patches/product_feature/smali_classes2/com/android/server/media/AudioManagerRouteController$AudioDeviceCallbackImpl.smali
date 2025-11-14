.class public final Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;
.super Landroid/media/AudioDeviceCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/AudioManagerRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/AudioManagerRouteController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_24

    aget-object v2, p1, v1

    sget-object v3, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    iget-object v0, p1, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, p1, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    return-void

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    sget-object v3, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;->this$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    return-void

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return-void
.end method
