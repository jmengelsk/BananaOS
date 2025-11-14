.class public final synthetic Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/PictureProfile;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iput-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Landroid/media/quality/SoundProfile;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iput-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/media/quality/SoundProfile;

    invoke-virtual {v5}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalSoundQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v6, 0x1

    invoke-static {v0, v2, v6, v3, v4}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_0
    iget-object v0, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v10, v0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v5}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v14, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_2
    invoke-virtual {v5}, Landroid/media/quality/SoundProfile;->getInputId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v16

    const/4 v11, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v3

    const-string/jumbo v4, "sound_quality"

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-static {v2, v0}, Lcom/android/server/media/quality/MediaQualityUtils;->populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v2, v0}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/media/quality/SoundProfile;->setProfileId(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    monitor-exit v10

    return-void

    :goto_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/media/quality/PictureProfile;

    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->hasGlobalPictureQualityServicePermission()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v6, 0x1

    invoke-static {v0, v2, v6, v3, v4}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :cond_3
    iget-object v0, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v10, v0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    iget-object v0, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object v14, v3

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_5
    :goto_5
    invoke-virtual {v1}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :goto_6
    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getInputId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v16

    const/4 v11, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v3

    const-string/jumbo v4, "picture_quality"

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-static {v2, v0}, Lcom/android/server/media/quality/MediaQualityUtils;->populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v2, v0}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/media/quality/PictureProfile;->setProfileId(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    iget-object v0, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0, v5}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$misPackageDefaultPictureProfile(Lcom/android/server/media/quality/MediaQualityService;Landroid/media/quality/PictureProfile;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v10

    return-void

    :goto_7
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
