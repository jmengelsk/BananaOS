.class public final Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .locals 4

    iget v0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/media/quality/ISoundProfileCallback;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

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

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    check-cast p1, Landroid/media/quality/IPictureProfileCallback;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

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

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_1
    check-cast p1, Landroid/media/quality/IActiveProcessingPictureListener;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_2
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

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

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_2
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
