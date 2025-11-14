.class public final Lcom/android/server/media/quality/MediaQualityService$1;
.super Landroid/view/SurfaceControlActivePictureListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$1;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/view/SurfaceControlActivePictureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivePicturesChanged([Landroid/view/SurfaceControlActivePicture;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$1;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v3, v2, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v5

    iget-object v0, v5, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_6

    :try_start_1
    iget-object v0, v5, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IActiveProcessingPictureListener;

    iget-object v8, v5, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureListenerMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;

    if-nez v8, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v9, v8, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mUid:I

    iget-object v10, v2, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "android.permission.MANAGE_GLOBAL_PICTURE_QUALITY_SERVICE"

    iget v8, v8, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mPid:I

    invoke-virtual {v10, v11, v8, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    array-length v12, v1

    move v13, v4

    :goto_2
    if-ge v13, v12, :cond_5

    aget-object v14, v1, v13

    if-nez v8, :cond_2

    invoke-virtual {v14}, Landroid/view/SurfaceControlActivePicture;->getOwnerUid()I

    move-result v15

    if-eq v15, v9, :cond_2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_2
    iget-object v15, v2, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v14}, Landroid/view/SurfaceControlActivePicture;->getPictureProfileHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    new-instance v15, Landroid/media/quality/ActiveProcessingPicture;

    invoke-virtual {v14}, Landroid/view/SurfaceControlActivePicture;->getLayerId()I

    move-result v10

    invoke-virtual {v14}, Landroid/view/SurfaceControlActivePicture;->getOwnerUid()I

    move-result v14

    if-eq v14, v9, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    invoke-direct {v15, v10, v4, v14}, Landroid/media/quality/ActiveProcessingPicture;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {v0, v11}, Landroid/media/quality/IActiveProcessingPictureListener;->onActiveProcessingPicturesChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_2
    const-string/jumbo v4, "MediaQualityService"

    const-string/jumbo v8, "failed to report added AD service to callback"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v0, v5, Lcom/android/server/media/quality/MediaQualityService$UserState;->mActiveProcessingPictureCallbackList:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v3

    return-void

    :goto_7
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
