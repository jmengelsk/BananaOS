.class public final Lcom/android/server/wm/WindowManagerServiceExt;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SAFE_MODE_PROPERTY_REASONS:[Ljava/lang/String;

.field public static final SAFE_MODE_REASONS:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

.field public final mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;

.field public final mKeyEventListeners:Ljava/util/ArrayList;

.field public mLastReportedRotationToAudioManager:I

.field public final mLogResumedActivityForHalfOpenMode:Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

.field public final mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

.field public mSafeModeReason:Ljava/lang/String;

.field public final mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTspStateController:Lcom/android/server/wm/TspStateController;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string/jumbo v0, "TRACKBALL_BTN_MOUSE"

    const-string v1, "KEYCODE_VOLUME_DOWN"

    const-string v2, "KEYCODE_MENU"

    const-string v3, "KEYCODE_S"

    const-string v4, "KEYCODE_DPAD_CENTER"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceExt;->SAFE_MODE_REASONS:[Ljava/lang/String;

    const-string/jumbo v0, "ro.boot_recovery"

    const-string/jumbo v1, "persist.sys.emergency_reset"

    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v3, "ro.sys.safemode"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceExt;->SAFE_MODE_PROPERTY_REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mKeyEventListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastReportedRotationToAudioManager:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLogResumedActivityForHalfOpenMode:Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerServiceExt;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    new-instance v0, Lcom/android/server/wm/WmScreenshotController;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/WmScreenshotController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10701f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;

    new-instance v0, Lcom/android/server/wm/MultiResolutionController;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/MultiResolutionController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_67

    new-instance v0, Lcom/android/server/wm/TspStateController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TspStateController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    :cond_67
    iget-object p0, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo p1, "com.sec.feature.cover"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_84

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    sget-object p0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    if-nez p0, :cond_84

    new-instance p0, Lcom/android/server/wm/WmCoverState;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    sput-object p0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    :cond_84
    return-void
.end method

.method public static logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wmlogs.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x500000

    cmp-long v1, v3, v5

    if-lez v1, :cond_40

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_40

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_40
    :try_start_40
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_4b} :catch_87

    :try_start_4b
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_83

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_83

    new-instance p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_80
    .catchall {:try_start_4b .. :try_end_80} :catchall_81

    goto :goto_83

    :catchall_81
    move-exception p0

    goto :goto_89

    :cond_83
    :goto_83
    :try_start_83
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_86
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_a7

    :catch_87
    move-exception p0

    goto :goto_92

    :goto_89
    :try_start_89
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception p1

    :try_start_8e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_91
    throw p0
    :try_end_92
    .catch Ljava/io/FileNotFoundException; {:try_start_8e .. :try_end_92} :catch_87

    :goto_92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logCriticalInfo failed FileNotFoundException, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WindowManagerServiceExt"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a7
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1fc

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void
.end method


# virtual methods
.method public final executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8

    array-length v0, p2

    const/4 v1, 0x0

    if-ge p3, v0, :cond_9

    array-length v0, p2

    sub-int/2addr v0, p3

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_b

    :cond_9
    new-array v0, v1, [Ljava/lang/String;

    :goto_b
    array-length v2, p2

    sub-int/2addr v2, p3

    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_10
    sget-object p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;

    invoke-virtual {p2, p4, v0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_4d

    :try_start_22
    sget-object p2, Lcom/android/server/wm/PackagesChange;->sDumpCallbacks:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    move p4, v1

    :goto_2b
    if-ge p4, p3, :cond_39

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p4, p4, 0x1

    check-cast v0, Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;

    invoke-interface {v0}, Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;->executeShellCommand()V

    goto :goto_2b

    :cond_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_4f

    :try_start_3a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_STATUS_LOGGING:Z

    if-eqz p1, :cond_58

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mMultiTaskingAppCompatStatusLogger:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_4d

    return v1

    :catchall_4d
    move-exception p0

    goto :goto_55

    :catchall_4f
    move-exception p0

    :try_start_50
    monitor-exit p1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_4d

    :goto_55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_58
    return v1
.end method

.method public final getFocusedTaskIdWithoutHomeOrRecents()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_2b
    move-exception p0

    goto :goto_33

    :cond_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, -0x1

    return p0

    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getVisibleWindowInfoList()Ljava/util/List;
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_52

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda56;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v3, v5}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;I)V

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    goto :goto_4d

    :catchall_4b
    move-exception p0

    goto :goto_58

    :cond_4d
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :cond_52
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return-object p0

    :goto_58
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final moveDisplayToTop(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v1, p1, :cond_2a

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2f

    :cond_2a
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateTaskbarTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V
    .registers 12

    const-string/jumbo v0, "WindowManagerServiceExt"

    if-eqz p2, :cond_ad

    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v1, :cond_b

    goto/16 :goto_ad

    :cond_b
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-nez p2, :cond_22

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    :cond_22
    const/16 v1, 0x20

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_8d

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v5

    if-eqz v5, :cond_32

    goto :goto_8d

    :cond_32
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, p2, :cond_3c

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ac

    :cond_3c
    new-instance p1, Landroid/content/ComponentName;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v5

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateTaskbarTargetIfNeeded: cn="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " occludesParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isInSplitScreenMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    if-nez v5, :cond_7c

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->mWindowStyle:Lcom/android/server/wm/ActivityRecord$WindowStyle;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7c

    if-eqz v6, :cond_7b

    goto :goto_7c

    :cond_7b
    move v3, v2

    :cond_7c
    :goto_7c
    iget-object v4, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    invoke-virtual {v4, v1, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskbarVisibleChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

    return-void

    :cond_8d
    :goto_8d
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_ac

    const-string/jumbo p1, "updateTaskbarTargetIfNeeded: reset"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget-object p2, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object v1, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskbarVisibleChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

    :cond_ac
    return-void

    :cond_ad
    :goto_ad
    const-string/jumbo p0, "updateTaskbarTargetIfNeeded: display is null or not default"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateTspStateControllerWindowPolicyLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    goto :goto_d

    :cond_c
    move-object v2, v1

    :goto_d
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_21

    if-ne p1, v1, :cond_1b

    goto :goto_21

    :cond_1b
    if-ne p1, v2, :cond_4c

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    return-void

    :cond_21
    :goto_21
    iget-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_47

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_35
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3f
    invoke-static {p0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_47
    if-eqz v2, :cond_4c

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    :cond_4c
    return-void
.end method
