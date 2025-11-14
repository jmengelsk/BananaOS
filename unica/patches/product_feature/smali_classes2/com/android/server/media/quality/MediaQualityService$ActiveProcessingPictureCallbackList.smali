.class public final Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .registers 6

    iget v0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->$r8$classId:I

    packed-switch v0, :pswitch_data_96

    check-cast p1, Landroid/media/quality/ISoundProfileCallback;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {v3, v2}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbackPidUidMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catchall_2f
    move-exception p0

    goto :goto_33

    :cond_31
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_2f

    throw p0

    :pswitch_35  #0x1
    check-cast p1, Landroid/media/quality/IPictureProfileCallback;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_3d
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_61

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {v3, v2}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbackPidUidMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :catchall_5f
    move-exception p0

    goto :goto_63

    :cond_61
    monitor-exit v0

    return-void

    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3d .. :try_end_64} :catchall_5f

    throw p0

    :pswitch_65  #0x0
    check-cast p1, Landroid/media/quality/IActiveProcessingPictureListener;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_6d
    :try_start_6d
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_91

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {v3, v2}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureListenerMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :catchall_8f
    move-exception p0

    goto :goto_93

    :cond_91
    monitor-exit v0

    return-void

    :goto_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_6d .. :try_end_94} :catchall_8f

    throw p0

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_65  #00000000
        :pswitch_35  #00000001
    .end packed-switch
.end method
