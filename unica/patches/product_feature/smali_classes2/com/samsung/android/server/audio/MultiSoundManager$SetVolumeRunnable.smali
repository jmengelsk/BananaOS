.class public final Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mUid:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;II)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AS.MultiSoundManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    iget v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    iget-object v3, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, -0x1

    if-nez v3, :cond_2

    const-string v0, "ActivityManager is null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    const v5, 0x7fffffff

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v6, v2, :cond_3

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v6, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo v6, "not installed "

    invoke-static {v6, v5, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-ne v0, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No app found taskId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    iget v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iput v0, p0, Lcom/android/server/audio/AudioService;->mForegroundUid:I

    const-string/jumbo p0, "mForegroundUid = "

    invoke-static {v0, p0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string/jumbo v1, "l_multi_sound_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "volume"

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    iget-object v4, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-eqz v5, :cond_5

    iget-object v6, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    iget v7, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    aget v6, v6, v7

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_4
    iget-object v7, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    iget-boolean v8, v7, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    if-eqz v8, :cond_a

    const v8, 0x186a0

    rem-int v9, v3, v8

    iget v7, v7, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    rem-int/2addr v7, v8

    if-ne v9, v7, :cond_a

    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->getCurrentMediaDevice()I

    move-result v7

    const/4 v8, 0x2

    and-int/2addr v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_6

    move v7, v10

    goto :goto_5

    :cond_6
    move v7, v9

    :goto_5
    iget-boolean v11, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v11, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v3

    if-nez v3, :cond_8

    :goto_6
    move v9, v7

    goto :goto_7

    :cond_8
    if-ne v3, v8, :cond_9

    move v9, v10

    :cond_9
    :goto_7
    if-eqz v9, :cond_a

    iget-object v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    iget v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    mul-float/2addr v6, v2

    :cond_a
    if-eqz v5, :cond_b

    iget-boolean v2, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    if-eqz v2, :cond_b

    const/4 v6, 0x0

    :cond_b
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    return-void

    :goto_8
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
