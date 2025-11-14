.class public final synthetic Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field public final synthetic f$1:Landroid/media/permission/Identity;

.field public final synthetic f$2:Landroid/os/PersistableBundle;

.field public final synthetic f$3:Landroid/os/SharedMemory;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$1:Landroid/media/permission/Identity;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$2:Landroid/os/PersistableBundle;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$3:Landroid/os/SharedMemory;

    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$4:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$5:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iput p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$6:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v6, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$1:Landroid/media/permission/Identity;

    iget-object v12, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$2:Landroid/os/PersistableBundle;

    iget-object v13, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$3:Landroid/os/SharedMemory;

    iget-object v14, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$4:Landroid/os/IBinder;

    iget-object v15, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$5:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iget v10, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$6:I

    iget-object v0, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v10, v3, :cond_7

    const-string/jumbo v4, "verifyDetectorForHotwordDetectionLocked"

    const-string/jumbo v5, "VoiceInteractionServiceManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_6

    iget v8, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-static {v8, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getServiceInfoLocked(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    iget v8, v7, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_4

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_4

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v8, "android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v9}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v13, :cond_1

    sget v7, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v13, v7}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Can\'t set sharedMemory to be read-only"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15, v10, v2, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-static {v15, v10, v1, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, "Voice interaction service should not hold permission android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15, v10, v2, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "Hotword detection service does not require permission android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15, v10, v2, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "Hotword detection service not in isolated process"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15, v10, v2, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "Hotword detection service info not found"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15, v10, v2, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "Hotword detection service name not found"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15, v10, v2, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string/jumbo v4, "verifyDetectorForVisualQueryDetectionLocked"

    const-string/jumbo v5, "VoiceInteractionServiceManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    const-string/jumbo v7, "Visual query detection service name not found"

    if-eqz v4, :cond_1d

    iget v8, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-static {v8, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getServiceInfoLocked(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_1c

    iget v7, v4, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_1b

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_1b

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v7, "android.permission.BIND_VISUAL_QUERY_DETECTION_SERVICE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v8, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v13, :cond_9

    sget v4, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v13, v4}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_1

    :cond_8
    const-string v0, "Can\'t set sharedMemory to be read-only"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_1
    sget-boolean v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    iget v5, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-static {v5, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getServiceInfoLocked(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    invoke-static {v5, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getServiceInfoLocked(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    if-eqz v4, :cond_c

    if-nez v5, :cond_a

    goto :goto_2

    :cond_a
    iget v4, v4, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_b

    iget v4, v5, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    const-string/jumbo v0, "VoiceInteractionServiceManager"

    const-string/jumbo v1, "Sandboxed detection service not in shared isolated process"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "VisualQueryDetectionService or HotworDetectionService not in a shared isolated process. Please make sure to set android:allowSharedIsolatedProcess and android:isolatedProcess to be true and android:externalService to be false in the manifest file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_2
    iget-object v4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    if-nez v4, :cond_d

    move v4, v2

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    move v5, v3

    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move v7, v4

    iget-object v4, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v7

    iget-object v7, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    move v11, v5

    move v5, v8

    iget-object v8, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    move/from16 v16, v9

    iget v9, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    move/from16 v17, v11

    new-instance v11, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    move/from16 v1, v17

    invoke-direct/range {v2 .. v11}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;-><init>(Ljava/lang/Object;Landroid/content/Context;ILandroid/media/permission/Identity;Landroid/content/ComponentName;Landroid/content/ComponentName;IILcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;)V

    iput-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAccessibilitySettingsListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAccessibilitySettingsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    move v1, v3

    if-eq v10, v1, :cond_e

    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput v10, v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    :cond_e
    :goto_3
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/voiceinteraction/DetectorSession;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->remove(I)V

    :cond_f
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v10, v3, :cond_11

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    :cond_10
    move-object/from16 v18, v14

    new-instance v14, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    iget-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget-object v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v7, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    iget-object v8, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    iget v9, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v8

    move/from16 v25, v9

    invoke-direct/range {v14 .. v25}, Lcom/android/server/voiceinteraction/DetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;I)V

    const/4 v4, 0x0

    iput-boolean v4, v14, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    iput-object v2, v14, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mLastHotwordRejectedResult:Landroid/service/voice/HotwordRejectedResult;

    :goto_4
    move-object/from16 v1, v19

    goto/16 :goto_6

    :cond_11
    move-object/from16 v18, v14

    move-object/from16 v19, v15

    const/4 v4, 0x0

    if-ne v10, v1, :cond_14

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    :cond_12
    new-instance v14, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v15, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    iget-object v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget-object v7, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v8, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    iget-object v9, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    iget v11, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v11

    invoke-direct/range {v14 .. v25}, Lcom/android/server/voiceinteraction/DetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;I)V

    iput-boolean v4, v14, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    iput-boolean v4, v14, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    iput-object v2, v14, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    iget-object v1, v14, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "visual_query_accessibility_detection_enabled"

    iget v3, v14, Lcom/android/server/voiceinteraction/DetectorSession;->mUserId:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_13

    const/4 v2, 0x1

    goto :goto_5

    :cond_13
    move v2, v4

    :goto_5
    iput-boolean v2, v14, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEnableAccessibilityDataEgress:Z

    goto :goto_4

    :cond_14
    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    :cond_15
    new-instance v14, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-object v15, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    iget-object v4, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget-object v5, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v6, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    iget-object v7, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    iget v8, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v25, v8

    invoke-direct/range {v14 .. v25}, Lcom/android/server/voiceinteraction/DetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;I)V

    goto/16 :goto_4

    :goto_6
    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordRecognitionCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, v14, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v14, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    if-nez v0, :cond_18

    iget-boolean v0, v14, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    if-eqz v0, :cond_16

    goto :goto_7

    :cond_16
    iget-object v0, v14, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    new-instance v2, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, v14, v12, v13}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v2, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;

    invoke-direct {v2, v14}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    if-nez v0, :cond_17

    const-string v0, "DetectorSession"

    const-string v2, "Failed to create AndroidFuture"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v3, 0x1

    iput-boolean v3, v14, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_18
    :goto_7
    monitor-exit v1

    return-void

    :goto_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_19
    const-string/jumbo v0, "Voice interaction service should not hold permission android.permission.BIND_VISUAL_QUERY_DETECTION_SERVICE"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    const-string/jumbo v0, "Visual query detection does not require permission android.permission.BIND_VISUAL_QUERY_DETECTION_SERVICE"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const-string/jumbo v0, "Visual query detection service not in isolated process"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Visual query detection not in isolated process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const-string/jumbo v0, "Visual query detection service info not found"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
