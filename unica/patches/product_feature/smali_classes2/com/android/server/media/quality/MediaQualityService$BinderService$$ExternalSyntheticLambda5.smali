.class public final synthetic Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iput-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService$BinderService;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iput-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/media/quality/PictureProfile;

    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v2, v1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {v2, v3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v2, v1, v6, v4, v5}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :goto_0
    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getInputId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/media/quality/MediaQualityService;->updateDatabaseOnPictureProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V

    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2, p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$misPackageDefaultPictureProfile(Lcom/android/server/media/quality/MediaQualityService;Landroid/media/quality/PictureProfile;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/media/quality/MediaQualityService$BinderService;

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$BinderService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/media/quality/SoundProfile;

    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v2, v1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {v2, v3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;->getPackageOfCallingUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v2, v1, v6, v4, v5}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V

    :goto_3
    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/media/quality/SoundProfile;->getInputId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$BinderService;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {p0}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/android/server/media/quality/MediaQualityService;->updateDatabaseOnSoundProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
