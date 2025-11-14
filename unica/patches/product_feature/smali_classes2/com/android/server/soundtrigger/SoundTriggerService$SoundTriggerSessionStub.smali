.class public final Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;
.super Lcom/android/internal/app/ISoundTriggerSession$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

.field public final mCallbacks:Ljava/util/TreeMap;

.field public final mCallbacksLock:Ljava/lang/Object;

.field public final mClient:Landroid/os/IBinder;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mListener:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

.field public final mLoadedModels:Ljava/util/TreeMap;

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/IBinder;Lcom/android/server/soundtrigger/SoundTriggerHelper;Lcom/android/server/utils/EventLogger;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mClient:Landroid/os/IBinder;

    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    iget-object p3, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    check-cast p3, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    :try_start_2d
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const/4 p4, 0x0

    invoke-interface {p2, p3, p4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_37} :catch_38

    goto :goto_3b

    :catch_38
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->clientDied()V

    :goto_3b
    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mListener:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    invoke-direct {p3, p1, p4, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;Ljava/util/function/Consumer;)V

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    iget-object p4, p3, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget-object p4, p4, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    const-string/jumbo v0, "android:record_audio"

    invoke-virtual {p3, v0, p4}, Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget-object p0, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p4, v0, p0, v1, p3}, Landroid/app/AppOpsManager;->startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object p0, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/DeviceStateHandler;->registerListener(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;)V

    return-void
.end method

.method public static getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;
    .registers 1

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;
    .registers 1

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final clientDied()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;->DETACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    iget-object v3, v3, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    const-string v4, "Client died"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const-string/jumbo v3, "SoundTriggerService"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mAppOpsListener:Lcom/android/server/soundtrigger/SoundTriggerService$MyAppOpsListener;

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    :cond_33
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mListener:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    iget-object v0, v0, Lcom/android/server/soundtrigger/DeviceStateHandler;->mCallbackSet:Ljava/util/Set;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->detach()V

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    iget-object v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_66

    :cond_54
    :goto_54
    iget-object v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    check-cast v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    iget-object v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    check-cast v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    goto :goto_54

    :cond_66
    :goto_66
    return-void
.end method

.method public final deleteSoundModel(Landroid/os/ParcelUuid;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->DELETE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_15
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->deleteGenericSoundModel(Ljava/util/UUID;)V
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_40

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_3f
    return-void

    :catchall_40
    move-exception p0

    if-eqz v0, :cond_4b

    :try_start_43
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    throw p0
.end method

.method public final enforceCallingPermission(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-static {v0, v1, p1}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Identity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mOriginatorIdentity:Landroid/media/permission/Identity;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have permission "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enforceDetectionPermissions(Landroid/content/ComponentName;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    return-void

    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have permission android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getModelState(Landroid/os/ParcelUuid;)I
    .registers 10

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODEL_STATE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_15
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_83

    :try_start_20
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/4 v4, 0x2

    const/high16 v5, -0x80000000

    if-nez v3, :cond_51

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string/jumbo v6, "Model is not loaded"

    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v3, v4, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_20 .. :try_end_49} :catchall_4f

    if-eqz v0, :cond_4e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4e
    return v5

    :catchall_4f
    move-exception p0

    goto :goto_81

    :cond_51
    :try_start_51
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_70

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string/jumbo v6, "Unsupported model type"

    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v3, v4, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_7a

    :cond_70
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getGenericModelState(Ljava/util/UUID;)I

    move-result v5

    :goto_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_51 .. :try_end_7b} :catchall_4f

    if-eqz v0, :cond_80

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_80
    return v5

    :goto_81
    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_4f

    :try_start_82
    throw p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    :catchall_83
    move-exception p0

    if-eqz v0, :cond_8e

    :try_start_86
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    throw p0
.end method

.method public final getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 5

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->GET_MODULE_PROPERTIES:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_11
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_2c

    :try_start_1c
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_29

    if-eqz v0, :cond_28

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_28
    return-object p0

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    if-eqz v0, :cond_37

    :try_start_2f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    throw p0
.end method

.method public final getParameter(Landroid/os/ParcelUuid;I)I
    .registers 7

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_58

    :try_start_f
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-eqz p1, :cond_4d

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_3e

    :try_start_26
    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)I

    move-result p0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_40

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3e

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_3d
    return p0

    :catchall_3e
    move-exception p0

    goto :goto_56

    :catchall_40
    move-exception p0

    goto :goto_4b

    :cond_42
    :try_start_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_40

    :try_start_4c
    throw p0

    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sound model is not loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_3e

    :try_start_57
    throw p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p0

    if-eqz v0, :cond_63

    :try_start_5b
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_63
    :goto_63
    throw p0
.end method

.method public final getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .registers 4

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1c

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_1b
    return-object p0

    :catchall_1c
    move-exception p0

    if-eqz v0, :cond_27

    :try_start_1f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw p0
.end method

.method public final isRecognitionActive(Landroid/os/ParcelUuid;)Z
    .registers 6

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_59

    :try_start_d
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/4 v3, 0x0

    if-nez v2, :cond_25

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_23

    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_22
    return v3

    :catchall_23
    move-exception p0

    goto :goto_5b

    :cond_25
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_23

    :try_start_26
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_59

    :try_start_2f
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v2, :cond_4e

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result p0

    if-eqz p0, :cond_47

    const/4 v3, 0x1

    goto :goto_47

    :catchall_45
    move-exception p0

    goto :goto_57

    :cond_47
    :goto_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_45

    if-eqz v0, :cond_4d

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4d
    return v3

    :cond_4e
    :try_start_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_45

    :try_start_58
    throw p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p0

    goto :goto_5d

    :goto_5b
    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_23

    :try_start_5c
    throw p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    :goto_5d
    if-eqz v0, :cond_67

    :try_start_5f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    throw p0
.end method

.method public final loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_15
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_6e

    :cond_24
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_6c

    :try_start_29
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-eqz v2, :cond_59

    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_57

    :try_start_49
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_59

    :catchall_54
    move-exception p0

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_54

    :try_start_56
    throw p0

    :catchall_57
    move-exception p0

    goto :goto_6a

    :cond_59
    :goto_59
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_57

    const/4 p0, 0x0

    if-eqz v0, :cond_69

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_69
    return p0

    :goto_6a
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_57

    :try_start_6b
    throw p0

    :catchall_6c
    move-exception p0

    goto :goto_8d

    :cond_6e
    :goto_6e
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p1

    const-string v3, "Invalid sound model"

    invoke-direct {v1, v2, p1, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_85
    .catchall {:try_start_6b .. :try_end_85} :catchall_6c

    const/high16 p0, -0x80000000

    if-eqz v0, :cond_8c

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_8c
    return p0

    :goto_8d
    if-eqz v0, :cond_97

    :try_start_8f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_97

    :catchall_93
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_97
    :goto_97
    throw p0
.end method

.method public final loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->LOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_15
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    const/high16 v1, -0x80000000

    const/4 v3, 0x2

    if-eqz p1, :cond_a4

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_28

    goto/16 :goto_a4

    :cond_28
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    if-eqz v4, :cond_87

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_37

    goto :goto_87

    :cond_37
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_85

    :try_start_3c
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_73

    invoke-virtual {v2, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_63
    .catchall {:try_start_3c .. :try_end_63} :catchall_71

    :try_start_63
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_73

    :catchall_6e
    move-exception p0

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_6e

    :try_start_70
    throw p0

    :catchall_71
    move-exception p0

    goto :goto_83

    :cond_73
    :goto_73
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_70 .. :try_end_7d} :catchall_71

    if-eqz v0, :cond_82

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_82
    return v3

    :goto_83
    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_71

    :try_start_84
    throw p0

    :catchall_85
    move-exception p0

    goto :goto_c0

    :cond_87
    :goto_87
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string/jumbo v5, "Only one keyphrase supported"

    invoke-direct {v4, v2, p1, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v4, v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_9e
    .catchall {:try_start_84 .. :try_end_9e} :catchall_85

    if-eqz v0, :cond_bf

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    return v1

    :cond_a4
    :goto_a4
    :try_start_a4
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p1

    const-string v5, "Invalid sound model"

    invoke-direct {v4, v2, p1, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v4, v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_ba
    .catchall {:try_start_a4 .. :try_end_ba} :catchall_85

    if-eqz v0, :cond_bf

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_bf
    return v1

    :goto_c0
    if-eqz v0, :cond_ca

    :try_start_c2
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c6

    goto :goto_ca

    :catchall_c6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ca
    :goto_ca
    throw p0
.end method

.method public final queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 7

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_4
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_57

    :try_start_f
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez p1, :cond_27

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_25

    const/4 p0, 0x0

    if-eqz v0, :cond_24

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_24
    return-object p0

    :catchall_25
    move-exception p0

    goto :goto_55

    :cond_27
    :try_start_27
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_25

    :try_start_30
    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_48

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_25

    if-eqz v0, :cond_47

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_47
    return-object p0

    :catchall_48
    move-exception p0

    goto :goto_53

    :cond_4a
    :try_start_4a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_48

    :try_start_54
    throw p0

    :goto_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_25

    :try_start_56
    throw p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p0

    if-eqz v0, :cond_62

    :try_start_5a
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    throw p0
.end method

.method public final setParameter(Landroid/os/ParcelUuid;II)I
    .registers 9

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->SET_PARAMETER:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_15
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_81

    :try_start_20
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v3, :cond_51

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string/jumbo p3, "Model not loaded"

    invoke-direct {p2, v2, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_20 .. :try_end_49} :catchall_4f

    if-eqz v0, :cond_4e

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_4e
    return p0

    :catchall_4f
    move-exception p0

    goto :goto_7f

    :cond_51
    :try_start_51
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_4f

    :try_start_5a
    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    if-nez v3, :cond_74

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;II)I

    move-result p0

    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_5a .. :try_end_6b} :catchall_72

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_4f

    if-eqz v0, :cond_71

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_71
    return p0

    :catchall_72
    move-exception p0

    goto :goto_7d

    :cond_74
    :try_start_74
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "SoundTriggerHelper has been detached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_72

    :try_start_7e
    throw p0

    :goto_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_4f

    :try_start_80
    throw p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception p0

    if-eqz v0, :cond_8c

    :try_start_84
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8c

    :catchall_88
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8c
    :goto_8c
    throw p0
.end method

.method public final startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .registers 13

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    :try_start_15
    const-string/jumbo v0, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    if-nez p1, :cond_3f

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object p1

    const-string p3, "Invalid sound model"

    invoke-direct {p2, v2, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_3c

    const/high16 p0, -0x80000000

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_3b
    return p0

    :catchall_3c
    move-exception v0

    move-object p0, v0

    goto :goto_68

    :cond_3f
    if-eqz p4, :cond_47

    :try_start_41
    const-string/jumbo v0, "android.permission.SOUND_TRIGGER_RUN_IN_BATTERY_SAVER"

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    :cond_47
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p1

    if-nez p1, :cond_62

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V
    :try_end_62
    .catchall {:try_start_41 .. :try_end_62} :catchall_3c

    :cond_62
    if-eqz v1, :cond_67

    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_67
    return p1

    :goto_68
    if-eqz v1, :cond_73

    :try_start_6a
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_73

    :catchall_6e
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    throw p0
.end method

.method public final startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 20

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v7, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->START_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static/range {p1 .. p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v7, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v8

    :try_start_19
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    move-object/from16 v4, p3

    invoke-virtual {p0, v4}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceDetectionPermissions(Landroid/content/ComponentName;)V

    new-instance v12, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    move-object v12, v0

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_124

    :try_start_42
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v3, -0x80000000

    const/4 v4, 0x2

    if-nez v0, :cond_75

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const-string/jumbo v5, "Model not loaded"

    invoke-direct {v0, v7, v1, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo v1, "SoundTriggerService"

    invoke-virtual {v0, v4, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_42 .. :try_end_6b} :catchall_71

    if-eqz v8, :cond_c9

    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V

    return v3

    :catchall_71
    move-exception v0

    move-object p0, v0

    goto/16 :goto_122

    :cond_75
    :try_start_75
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_71

    :try_start_78
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    monitor-exit v5
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_11e

    if-eqz v6, :cond_a5

    :try_start_87
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const-string/jumbo v5, "Model already running"

    invoke-direct {v0, v7, v1, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo v1, "SoundTriggerService"

    invoke-virtual {v0, v4, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_87 .. :try_end_9f} :catchall_71

    if-eqz v8, :cond_c9

    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V

    return v3

    :cond_a5
    :try_start_a5
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_ca

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const-string/jumbo v5, "Unsupported model type"

    invoke-direct {v0, v7, v1, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo v1, "SoundTriggerService"

    invoke-virtual {v0, v4, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_a5 .. :try_end_c4} :catchall_71

    if-eqz v8, :cond_c9

    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_c9
    return v3

    :cond_ca
    :try_start_ca
    iget-object v9, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v10

    move-object v11, v0

    check-cast v11, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    const/4 v14, 0x0

    move-object/from16 v13, p4

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v0

    if-eqz v0, :cond_fa

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    const-string/jumbo v5, "Model start fail"

    invoke-direct {v1, v7, v3, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo v3, "SoundTriggerService"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v2
    :try_end_f4
    .catchall {:try_start_ca .. :try_end_f4} :catchall_71

    if-eqz v8, :cond_f9

    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_f9
    return v0

    :cond_fa
    :try_start_fa
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_71

    :try_start_fd
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_107
    .catchall {:try_start_fd .. :try_end_107} :catchall_11a

    :try_start_107
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStart(Ljava/util/UUID;)V

    monitor-exit v2
    :try_end_113
    .catchall {:try_start_107 .. :try_end_113} :catchall_71

    const/4 p0, 0x0

    if-eqz v8, :cond_119

    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_119
    return p0

    :catchall_11a
    move-exception v0

    move-object p0, v0

    :try_start_11c
    monitor-exit v3
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11a

    :try_start_11d
    throw p0
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_71

    :catchall_11e
    move-exception v0

    move-object p0, v0

    :try_start_120
    monitor-exit v5
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11e

    :try_start_121
    throw p0

    :goto_122
    monitor-exit v2
    :try_end_123
    .catchall {:try_start_121 .. :try_end_123} :catchall_71

    :try_start_123
    throw p0
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_124

    :catchall_124
    move-exception v0

    move-object p0, v0

    if-eqz v8, :cond_130

    :try_start_128
    invoke-interface {v8}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_12c

    goto :goto_130

    :catchall_12c
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_130
    :goto_130
    throw p0
.end method

.method public final stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_15
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p2

    if-nez p2, :cond_35

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_33

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_3b

    :cond_35
    :goto_35
    if-eqz v0, :cond_3a

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_3a
    return p2

    :goto_3b
    if-eqz v0, :cond_45

    :try_start_3d
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw p0
.end method

.method public final stopRecognitionForService(Landroid/os/ParcelUuid;)I
    .registers 11

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->STOP_RECOGNITION_SERVICE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_15
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_f8

    :try_start_20
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v4, -0x80000000

    const/4 v5, 0x2

    if-nez v3, :cond_52

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string/jumbo v6, "Model not loaded"

    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v3, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_20 .. :try_end_49} :catchall_4f

    if-eqz v0, :cond_a6

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    return v4

    :catchall_4f
    move-exception p0

    goto/16 :goto_f6

    :cond_52
    :try_start_52
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4f

    :try_start_55
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    monitor-exit v6
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_f3

    if-nez v7, :cond_82

    :try_start_64
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string/jumbo v6, "Model not running"

    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v3, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_64 .. :try_end_7c} :catchall_4f

    if-eqz v0, :cond_a6

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    return v4

    :cond_82
    :try_start_82
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_a7

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string/jumbo v6, "Unknown model type"

    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v3, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_82 .. :try_end_a1} :catchall_4f

    if-eqz v0, :cond_a6

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_a6
    return v4

    :cond_a7
    :try_start_a7
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v4, v3, v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v3

    if-eqz v3, :cond_d0

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string v6, "Failed to stop model"

    invoke-direct {v4, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_a7 .. :try_end_ca} :catchall_4f

    if-eqz v0, :cond_cf

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_cf
    return v3

    :cond_d0
    :try_start_d0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_4f

    :try_start_d3
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mCallbacks:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_dd
    .catchall {:try_start_d3 .. :try_end_dd} :catchall_f0

    :try_start_dd
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->onStop(Ljava/util/UUID;)V

    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_dd .. :try_end_e9} :catchall_4f

    const/4 p0, 0x0

    if-eqz v0, :cond_ef

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_ef
    return p0

    :catchall_f0
    move-exception p0

    :try_start_f1
    monitor-exit v2
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw p0
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_4f

    :catchall_f3
    move-exception p0

    :try_start_f4
    monitor-exit v6
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    :try_start_f5
    throw p0

    :goto_f6
    monitor-exit v1
    :try_end_f7
    .catchall {:try_start_f5 .. :try_end_f7} :catchall_4f

    :try_start_f7
    throw p0
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f8

    :catchall_f8
    move-exception p0

    if-eqz v0, :cond_103

    :try_start_fb
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_ff

    goto :goto_103

    :catchall_ff
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_103
    :goto_103
    throw p0
.end method

.method public final unloadSoundModel(Landroid/os/ParcelUuid;)I
    .registers 11

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UNLOAD_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/os/ParcelUuid;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_15
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_c7

    :try_start_20
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    const/high16 v4, -0x80000000

    const/4 v5, 0x2

    if-nez v3, :cond_51

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string/jumbo v6, "Model not loaded"

    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v3, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_20 .. :try_end_49} :catchall_4f

    if-eqz v0, :cond_78

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    return v4

    :catchall_4f
    move-exception p0

    goto :goto_c5

    :cond_51
    :try_start_51
    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_84

    const/4 v8, 0x1

    if-eq v6, v8, :cond_79

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string/jumbo v6, "Unknown model type"

    invoke-direct {v3, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v3, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_51 .. :try_end_73} :catchall_4f

    if-eqz v0, :cond_78

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_78
    return v4

    :cond_79
    :try_start_79
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadGenericSoundModel(Ljava/util/UUID;)I

    move-result v3

    goto :goto_96

    :cond_84
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result v3

    :goto_96
    if-eqz v3, :cond_b5

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    const-string v6, "Failed to unload model"

    invoke-direct {v4, v2, p1, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    const-string/jumbo p1, "SoundTriggerService"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v1
    :try_end_af
    .catchall {:try_start_79 .. :try_end_af} :catchall_4f

    if-eqz v0, :cond_b4

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_b4
    return v3

    :cond_b5
    :try_start_b5
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mLoadedModels:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_4f

    if-eqz v0, :cond_c4

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_c4
    return v7

    :goto_c5
    :try_start_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_4f

    :try_start_c6
    throw p0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c7

    :catchall_c7
    move-exception p0

    if-eqz v0, :cond_d2

    :try_start_ca
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_ce

    goto :goto_d2

    :catchall_ce
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d2
    :goto_d2
    throw p0
.end method

.method public final updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->UPDATE_MODEL:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->getUuid(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    :try_start_15
    const-string/jumbo v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_28

    if-eqz v0, :cond_27

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_27
    return-void

    :catchall_28
    move-exception p0

    if-eqz v0, :cond_33

    :try_start_2b
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    throw p0
.end method
