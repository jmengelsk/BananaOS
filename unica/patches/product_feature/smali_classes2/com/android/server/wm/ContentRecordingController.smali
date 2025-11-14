.class public final Lcom/android/server/wm/ContentRecordingController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mSession:Landroid/view/ContentRecordingSession;


# virtual methods
.method public getContentRecordingSessionLocked()Landroid/view/ContentRecordingSession;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    return-object p0
.end method

.method public final setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/view/ContentRecordingSession;->isValid(Landroid/view/ContentRecordingSession;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    invoke-static {v3, p1}, Landroid/view/ContentRecordingSession;->isProjectionOnSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z

    move-result v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    aget-boolean v3, v4, v2

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v3

    int-to-long v5, v3

    iget-object v3, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v3}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v5, -0x3207f3dbe3cca3eL

    invoke-static {v7, v5, v6, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    aget-boolean p2, v4, v2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result p1

    int-to-long p1, p1

    iget-object p0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide p1, -0x5301ed13bcaec53cL    # -5.767018449237889E-92

    invoke-static {v0, p1, p2, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_8

    aget-boolean v5, v4, v2

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    if-nez v7, :cond_4

    move-object v7, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, 0x3aa84b38be7a3ef3L    # 3.924880660545818E-26

    invoke-static {v8, v6, v7, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-nez p2, :cond_7

    aget-boolean p0, v4, v2

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getVirtualDisplayId()I

    move-result p0

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, -0x13a6217f275ccb4fL    # -8.708816849011871E213

    invoke-static {p2, v0, v1, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    goto :goto_4

    :cond_8
    move-object p2, v3

    :goto_4
    iget-object v5, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz v5, :cond_a

    if-nez v0, :cond_a

    aget-boolean v0, v4, v2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x4fccee3fe19cca6bL    # -1.6468601503212928E-76

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->pauseRecording()V

    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    :cond_a
    iput-object p2, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p1, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    return-void
.end method
