.class public final Lcom/android/server/pm/PackageInstallerService;
.super Landroid/content/pm/IPackageInstaller$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z

.field public static final INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

.field public static final LOGD:Z

.field public static final sStageFilter:Lcom/android/server/pm/PackageInstallerService$1;


# instance fields
.field public final mAllocatedSessions:Landroid/util/SparseBooleanArray;

.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public mAppOps:Landroid/app/AppOpsManager;

.field public volatile mBypassNextAllowedApexUpdateCheck:Z

.field public volatile mBypassNextStagedInstallerCheck:Z

.field public final mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

.field public final mContext:Landroid/content/Context;

.field public final mCreateLock:Ljava/lang/Object;

.field public volatile mDisableVerificationForUid:I

.field public final mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

.field public final mHistoricalSessions:Ljava/util/List;

.field public final mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

.field public final mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

.field public final mInstallHandler:Landroid/os/Handler;

.field public final mInstallThread:Landroid/os/HandlerThread;

.field public final mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field public final mLegacySessions:Landroid/util/SparseBooleanArray;

.field public volatile mOkToSendBroadcasts:Z

.field public final mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mRandom:Ljava/util/Random;

.field public final mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

.field public final mSessions:Landroid/util/SparseArray;

.field public final mSessionsDir:Ljava/io/File;

.field public final mSessionsFile:Landroid/util/AtomicFile;

.field public final mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

.field public final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field public mSmartSwitchUid:I

.field public final mStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "PackageInstaller"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageInstallerService;->DEBUG:Z

    const-string/jumbo v0, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    new-instance v0, Lcom/android/server/pm/PackageInstallerService$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Lcom/android/server/pm/PackageInstallerService$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;)V
    .registers 14

    invoke-direct {p0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    new-instance v1, Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-direct {v1}, Lcom/android/server/pm/SilentUpdatePolicy;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    iput v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCreateLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/utils/RequestThrottle;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/utils/RequestThrottle;-><init>(Landroid/os/Handler;Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PackageInstaller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "install_sessions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "package-session"

    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "install_sessions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    new-instance v1, Lcom/android/server/pm/StagingManager;

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/server/pm/StagingManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v4, Lcom/android/server/pm/PackageSessionVerifier;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageSessionVerifier;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

    new-instance p1, Lcom/android/server/pm/GentleUpdateHelper;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Lcom/android/server/pm/AppStateHelper;

    invoke-direct {p3, v5}, Lcom/android/server/pm/AppStateHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v5, p2, p3}, Lcom/android/server/pm/GentleUpdateHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/AppStateHelper;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    new-instance p1, Lcom/android/server/pm/PackageArchiver;

    invoke-direct {p1, v5, v6}, Lcom/android/server/pm/PackageArchiver;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    new-instance p1, Lcom/android/server/pm/InstallDependencyHelper;

    iget-object p2, v6, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p2

    invoke-direct {p1, v5, p2, p0}, Lcom/android/server/pm/InstallDependencyHelper;-><init>(Landroid/content/Context;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/PackageInstallerService;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    const-class p1, Lcom/android/server/SystemServiceManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/SystemServiceManager;

    new-instance p2, Lcom/android/server/pm/PackageInstallerService$Lifecycle;

    invoke-direct {p2, v5, p0}, Lcom/android/server/pm/PackageInstallerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;)V

    invoke-virtual {p1, p2}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    return-void
.end method

.method public static buildSuccessNotification(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/32 v2, 0x4000000

    invoke-interface {v1, p3, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-object p0, v0

    :goto_e
    if-eqz p0, :cond_7a

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_15

    goto :goto_7a

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    new-instance p3, Landroid/app/Notification$Builder;

    const-string v1, "DEVICE_ADMIN_ALERTS"

    invoke-direct {p3, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x108040b

    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x106001c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p1, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    :cond_7a
    :goto_7a
    const-string/jumbo p0, "Notification not built for package: "

    const-string/jumbo p1, "PackageInstaller"

    invoke-static {p0, p3, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_d

    :cond_7
    if-eqz p0, :cond_f

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, p0, :cond_f

    :goto_d
    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isStageName(Ljava/lang/String;)Z
    .registers 6

    const-string/jumbo v0, "vmdl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ".tmp"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    const-string/jumbo v4, "smdl"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    const-string/jumbo v4, "smdl2tmp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_37

    if-nez v1, :cond_37

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    return v2

    :cond_37
    :goto_37
    return v3
.end method

.method public static isValidDraftSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;II)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne p1, p3, :cond_1b

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne p2, p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public static prepareCustomCopyDir()Ljava/io/File;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "apk-tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, 0x1ff

    if-nez v1, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    :cond_22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    :cond_43
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    :cond_4c
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v4, 0xa

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_6e
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6e} :catch_6f

    return-object v5

    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to prepare temp session dir"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static prepareStageDir(Ljava/io/File;)V
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5f

    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_16} :catch_52

    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Failed to SELinux.restorecon session dir, path: ["

    const-string/jumbo v4, "], ctx: ["

    const-string/jumbo v5, "]. Retrying via SELinux.fileSelabelLookup/SELinux.setFileContext: "

    invoke-static {v3, v0, v4, v1, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v2, :cond_3a

    const-string/jumbo v1, "SUCCESS"

    goto :goto_3c

    :cond_3a
    const-string v1, "FAILURE"

    :goto_3c
    const-string/jumbo v3, "PackageInstaller"

    invoke-static {v0, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_45

    goto :goto_51

    :cond_45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to restorecon session dir: "

    invoke-static {p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    :goto_51
    return-void

    :catch_52
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to prepare session dir: "

    invoke-static {p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5f
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Session dir already exists: "

    invoke-static {p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prepareStageDirQuick(Ljava/io/File;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_63

    :try_start_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1fd

    invoke-static {p1, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_2b

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a4

    invoke-static {v4, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_36} :catch_57

    invoke-static {p0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_56

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService;->setSelinuxContext(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    :goto_48
    if-ge v2, p1, :cond_56

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->setSelinuxContext(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_56
    return-void

    :catch_57
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to rename temp dir"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_63
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "Session dir already exists: "

    invoke-static {p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setSelinuxContext(Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Failed to SELinux.restorecon session dir, path: ["

    const-string/jumbo v3, "], ctx: ["

    const-string/jumbo v4, "]. Retrying via SELinux.fileSelabelLookup/SELinux.setFileContext: "

    invoke-static {v2, p0, v3, v0, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v1, :cond_1a

    const-string/jumbo v2, "SUCCESS"

    goto :goto_1c

    :cond_1a
    const-string v2, "FAILURE"

    :goto_1c
    const-string/jumbo v3, "PackageInstaller"

    invoke-static {v0, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_25

    return-void

    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to restorecon session dir: "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 4

    if-nez p2, :cond_3

    goto :goto_15

    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerUid()I

    move-result v0

    if-eq p1, v0, :cond_15

    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final abandonSession(I)V
    .registers 5

    const-string v0, "Caller has no access to session "

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p0, :cond_1c

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception p0

    goto :goto_2e

    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_1a

    throw p0
.end method

.method public final addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_26

    const-string/jumbo v2, "PackageInstaller"

    const-string v3, "Historical sessions size reaches threshold, clear the oldest"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x190

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_26
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2b
    iget v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_d9

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    move/from16 v20, v4

    :try_start_35
    new-instance v4, Lcom/android/server/pm/PackageInstallerHistoricalSession;

    move/from16 v19, v5

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v6, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-wide v11, v1, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    iget-wide v13, v1, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_d4

    move-object/from16 v42, v2

    move-object/from16 v43, v3

    :try_start_4d
    iget-wide v2, v1, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    iget-object v15, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    move-wide/from16 v16, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v22

    iget-boolean v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    move-object/from16 v18, v2

    iget-boolean v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    move/from16 v24, v2

    iget-boolean v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    move/from16 v25, v2

    iget-boolean v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    move/from16 v26, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v27

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v28

    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    move/from16 v29, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    move-object/from16 v30, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    move-object/from16 v31, v2

    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v33

    move/from16 v32, v2

    iget-boolean v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    move/from16 v34, v2

    iget-boolean v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    move/from16 v35, v2

    iget-boolean v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    move/from16 v36, v2

    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    move/from16 v37, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    move-object/from16 v38, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    move-object/from16 v39, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    move-object/from16 v40, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    move-wide/from16 v44, v16

    move-object/from16 v17, v15

    move-wide/from16 v15, v44

    move-object/from16 v41, v2

    move/from16 v23, v3

    invoke-direct/range {v4 .. v41}, Lcom/android/server/pm/PackageInstallerHistoricalSession;-><init>(IIILjava/lang/String;Lcom/android/server/pm/InstallSource;IJJJLjava/io/File;Ljava/lang/String;FFZZZZZZIIILjava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;I[IZZZILjava/lang/String;Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/pm/verify/domain/DomainSet;Ljava/lang/String;)V

    monitor-exit v43
    :try_end_bd
    .catchall {:try_start_4d .. :try_end_bd} :catchall_d2

    move-object/from16 v2, v42

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :catchall_d2
    move-exception v0

    goto :goto_d7

    :catchall_d4
    move-exception v0

    move-object/from16 v43, v3

    :goto_d7
    :try_start_d7
    monitor-exit v43
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d2

    throw v0

    :catchall_d9
    move-exception v0

    :try_start_da
    monitor-exit v3
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw v0
.end method

.method public final allocateSessionIdLocked()I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v2

    :cond_1b
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_23

    move v1, v2

    goto :goto_2

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to allocate session ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final allocateStageDirLegacy(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "vmdl"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_2d} :catch_31
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2f

    :try_start_2d
    monitor-exit v0

    return-object p1

    :catchall_2f
    move-exception p0

    goto :goto_38

    :catch_31
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_2f

    throw p0
.end method

.method public final bypassNextAllowedApexUpdateCheck(Z)V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    return-void

    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to bypass allowed apex update check"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bypassNextStagedInstallerCheck(Z)V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    return-void

    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to bypass staged installer check"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/os/RemoteCallback;)V
    .registers 11

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService;->checkInstallConstraintsInternal(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;J)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda5;

    invoke-direct {p1, p4}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda5;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final checkInstallConstraintsInternal(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;J)Ljava/util/concurrent/CompletableFuture;
    .registers 13

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_75

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_69

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    const-string/jumbo v6, "android.permission.INSTALL_SELF_UPDATES"

    invoke-interface {v5, v6, v1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4d

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    :goto_4e
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    if-eqz v5, :cond_69

    goto :goto_24

    :cond_69
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller has no access to package "

    invoke-static {p1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object p0, v1, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/GentleUpdateHelper;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Ljava/util/concurrent/CompletableFuture;J)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v4

    :cond_8d
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "The installerPackageName set by the caller doesn\'t match the caller\'s own package name."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 4

    if-eqz p1, :cond_26

    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    goto :goto_26

    :cond_c
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_24

    :cond_13
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_26

    :goto_24
    const/4 p0, 0x1

    return p0

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return p0
.end method

.method public final createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.permission.USE_INSTALLER_V2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_19

    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need the com.android.permission.USE_INSTALLER_V2 permission to use a data loader"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 40

    move-object/from16 v4, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p2

    const/16 v1, 0x24

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    const-string/jumbo v6, "createSession"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v5 .. v10}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    move v10, v7

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v7, "no_install_apps"

    invoke-virtual {v6, v8, v7}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_860

    invoke-static/range {p4 .. p5}, Lcom/android/server/pm/PersonaServiceHelper;->isCallerApprovedToInstall(II)Z

    move-result v6

    if-eqz v6, :cond_84e

    const-string/jumbo v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, " getting through the check "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " user id "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6e

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_6e

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_66

    goto :goto_6e

    :cond_66
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "INSTALL_REASON_ROLLBACK requires the MANAGE_ROLLBACKS permission or the TEST_MANAGE_ROLLBACKS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    :goto_6e
    iget-object v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/16 v7, 0xff

    const/4 v9, 0x0

    const/4 v11, 0x0

    if-eqz v6, :cond_85

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v7, :cond_7d

    goto :goto_83

    :cond_7d
    invoke-static {v6, v9, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_85

    :goto_83
    iput-object v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    :cond_85
    iget-object v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    const/16 v13, 0x3e8

    invoke-static {v6, v13}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iget-object v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    if-eqz v6, :cond_a4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v7, :cond_9c

    goto :goto_a2

    :cond_9c
    invoke-static {v6, v9, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a4

    :goto_a2
    iput-object v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    :cond_a4
    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_ad

    goto :goto_b3

    :cond_ad
    invoke-static {v0, v9, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b4

    :goto_b3
    move-object v0, v11

    :cond_b4
    iget-object v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    if-eqz v6, :cond_b9

    goto :goto_ba

    :cond_b9
    move-object v6, v0

    :goto_ba
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v7

    const-wide/16 v14, 0x0

    if-nez v7, :cond_d5

    invoke-static {v12}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v7

    if-nez v7, :cond_d5

    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    if-eq v10, v13, :cond_d9

    const-string/jumbo v11, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    invoke-virtual {v7, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_d9

    :cond_d5
    move/from16 v19, v3

    goto/16 :goto_144

    :cond_d9
    if-eq v10, v13, :cond_e0

    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7, v10, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    :cond_e0
    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f6

    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v7, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_f6

    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7, v10, v6}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    :cond_f6
    iget v7, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v11, -0x8000061

    and-int/2addr v7, v11

    or-int/2addr v7, v2

    iput v7, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v11, 0x10000

    and-int/2addr v7, v11

    if-eqz v7, :cond_12e

    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v13, v7

    move v2, v9

    :goto_111
    if-ge v2, v13, :cond_123

    move/from16 v19, v3

    aget-object v3, v7, v2

    invoke-interface {v5, v3, v14, v15, v11}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    if-ne v10, v3, :cond_11e

    goto :goto_130

    :cond_11e
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v19

    goto :goto_111

    :cond_123
    move/from16 v19, v3

    iget v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v3, -0x10001

    and-int/2addr v2, v3

    iput v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_130

    :cond_12e
    move/from16 v19, v3

    :goto_130
    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.INSTALL_TEST_ONLY_PACKAGE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_141

    iget v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_141
    iput v9, v12, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    goto :goto_14d

    :goto_144
    iget v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const-string/jumbo v0, "com.android.shell"

    :goto_14d
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v2, :cond_17a

    iget-wide v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v2, v2, v14

    if-lez v2, :cond_17a

    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v2

    iget v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v8, v0}, Lcom/android/server/pm/AsecInstallHelper;->canInstallOnExternal(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17a

    iget-object v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v2, :cond_17e

    invoke-interface {v5, v2, v14, v15, v9}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_17e

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17e

    :cond_17a
    move-wide/from16 v20, v14

    goto/16 :goto_258

    :cond_17e
    const-string/jumbo v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "App size: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v20, v14

    iget-wide v14, v12, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v13, 0x2

    mul-long/2addr v2, v13

    invoke-virtual {v12, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1a2
    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v12}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v7
    :try_end_1a8
    .catchall {:try_start_1a2 .. :try_end_1a8} :catchall_253

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_1cb

    iget v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const-string/jumbo v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "modification done for package "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v3, v7, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24c

    :cond_1cb
    iget-wide v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v2, v2, v20

    if-lez v2, :cond_24c

    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    if-eqz v3, :cond_1d8

    goto :goto_1da

    :cond_1d8
    const-string v3, "Application"

    :goto_1da
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x10407c4

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, " "

    invoke-static {v3, v11}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v15, 0x10407c3

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Landroid/app/Notification$Builder;

    const-string v15, "DEVICE_ADMIN_ALERTS"

    invoke-direct {v11, v2, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v15, 0x1080be2

    invoke-virtual {v11, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x106001c

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v7, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_24c

    iget-object v3, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    const/16 v7, 0x17

    invoke-virtual {v3, v0, v7, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_24c
    :goto_24c
    iget-wide v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    div-long/2addr v2, v13

    invoke-virtual {v12, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto :goto_258

    :catchall_253
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_258
    iget v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26b

    if-eq v2, v10, :cond_26b

    invoke-interface {v5, v2}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26b

    array-length v7, v2

    if-lez v7, :cond_26b

    aget-object v2, v2, v9

    goto :goto_26c

    :cond_26b
    const/4 v2, 0x0

    :goto_26c
    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v7, :cond_280

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v11

    if-eqz v11, :cond_277

    goto :goto_280

    :cond_277
    iget v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v13, -0x100001

    and-int/2addr v11, v13

    iput v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_287

    :cond_280
    :goto_280
    iget v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v13, 0x100000

    or-int/2addr v11, v13

    iput v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_287
    iget v11, v4, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    const v13, -0x80001

    if-eq v11, v3, :cond_2a2

    iget v1, v4, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    if-ne v10, v1, :cond_29a

    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v11, 0x80000

    or-int/2addr v1, v11

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_29f

    :cond_29a
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v1, v13

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_29f
    iput v3, v4, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    goto :goto_2ac

    :cond_2a2
    iget v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v14, v11, 0x24

    if-eq v14, v1, :cond_2ac

    and-int v1, v11, v13

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_2ac
    :goto_2ac
    iget-wide v13, v12, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    cmp-long v1, v13, v20

    const/high16 v11, 0x40000

    if-lez v1, :cond_2d6

    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v1, v11

    if-eqz v1, :cond_2ce

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v1, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c5

    goto :goto_2d8

    :cond_2c5
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Setting rollback lifetime requires the MANAGE_ROLLBACKS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set rollbackLifetimeMillis when rollback is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d6
    if-ltz v1, :cond_845

    :goto_2d8
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    move/from16 v13, v19

    if-eq v1, v13, :cond_2ee

    const/4 v13, 0x2

    if-ne v1, v13, :cond_2e2

    goto :goto_2ee

    :cond_2e2
    if-ltz v1, :cond_2e5

    goto :goto_2fe

    :cond_2e5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rollbackImpactLevel can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2ee
    :goto_2ee
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v1, v11

    if-eqz v1, :cond_83d

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v1, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_834

    :goto_2fe
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v11, 0x20000

    and-int/2addr v1, v11

    if-eqz v1, :cond_307

    const/4 v13, 0x1

    goto :goto_308

    :cond_307
    move v13, v9

    :goto_308
    if-eqz v13, :cond_32a

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.INSTALL_PACKAGE_UPDATES"

    invoke-virtual {v1, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_339

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_321

    goto :goto_339

    :cond_321
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Not allowed to perform APEX updates"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32a
    iget-boolean v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_339

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.INSTALL_PACKAGES"

    const-string/jumbo v15, "PackageInstaller"

    invoke-virtual {v1, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_339
    :goto_339
    if-eqz v13, :cond_368

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_360

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v1

    if-nez v1, :cond_358

    iget-boolean v1, v4, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    if-eqz v1, :cond_34f

    goto :goto_358

    :cond_34f
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v14, -0x800001

    and-int/2addr v1, v14

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_368

    :cond_358
    :goto_358
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v14, 0x800000

    or-int/2addr v1, v14

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_368

    :cond_360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A multi-session can\'t be set as APEX."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_368
    :goto_368
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    if-eq v1, v14, :cond_3fd

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_376
    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 p2, v11

    const-string/jumbo v11, "no_non_market_app_by_knox"

    invoke-virtual {v1, v9, v11}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3ec

    const-string/jumbo v1, "PackageInstaller"

    const-string/jumbo v11, "UserManager.DISALLOW_NON_MARKET_APP_BY_KNOX : true"

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3c4

    const-string/jumbo v1, "com.google.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a3

    const-string/jumbo v1, "com.samsung.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c4

    goto :goto_3a3

    :catchall_3a1
    move-exception v0

    goto :goto_3f9

    :cond_3a3
    :goto_3a3
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0
    :try_end_3ae
    .catchall {:try_start_376 .. :try_end_3ae} :catchall_3a1

    if-eqz v0, :cond_3bc

    :try_start_3b0
    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const v2, 0x10401eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->showRestrictionToast(Ljava/lang/String;)V
    :try_end_3bc
    .catch Landroid/os/RemoteException; {:try_start_3b0 .. :try_end_3bc} :catch_3bc
    .catchall {:try_start_3b0 .. :try_end_3bc} :catchall_3a1

    :catch_3bc
    :cond_3bc
    :try_start_3bc
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Admin doesn\'t allow installation from unknown sources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c4
    const-string/jumbo v1, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v5, v1, v10}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3df

    const-string/jumbo v1, "android.permission.INSTALL_PACKAGE_UPDATES"

    invoke-interface {v5, v1, v10}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3d7

    goto :goto_3df

    :cond_3d7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Admin doesn\'t allow installation from unknown sources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3df
    :goto_3df
    const/16 v1, 0x7d0

    if-eq v10, v1, :cond_3e4

    goto :goto_3f5

    :cond_3e4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Admin doesn\'t allow installation from unknown sources"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3ec
    const-string/jumbo v1, "PackageInstaller"

    const-string/jumbo v11, "UserManager.DISALLOW_NON_MARKET_APP_BY_KNOX : false"

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f5
    .catchall {:try_start_3bc .. :try_end_3f5} :catchall_3a1

    :goto_3f5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3ff

    :goto_3f9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3fd
    move/from16 p2, v11

    :goto_3ff
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v11, 0x1000000

    and-int/2addr v1, v11

    if-eqz v1, :cond_426

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v1

    if-nez v1, :cond_426

    if-nez v7, :cond_426

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const/16 v7, 0x3e8

    if-eq v10, v7, :cond_41e

    const-string/jumbo v7, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    invoke-virtual {v1, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_41e

    goto :goto_426

    :cond_41e
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v7, -0x1000001

    and-int/2addr v1, v7

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_426
    :goto_426
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v7, -0x40000001  # -1.9999999f

    and-int/2addr v1, v7

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    sget-object v1, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v1, :cond_463

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v7, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/16 v11, 0x3e8

    invoke-interface {v1, v11, v7}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_463

    invoke-interface {v1, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v7

    if-eqz v7, :cond_463

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_463

    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v7, 0x40000000  # 2.0f

    or-int/2addr v1, v7

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_463
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_483

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v1

    if-nez v1, :cond_483

    invoke-interface {v5, v10}, Lcom/android/server/pm/Computer;->getFlagsForUid(I)I

    move-result v1

    const/16 v19, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_47a

    goto :goto_483

    :cond_47a
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only system apps could use the PackageManager.INSTALL_INSTANT_APP flag."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_483
    :goto_483
    iget-boolean v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_4a6

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v1

    if-nez v1, :cond_4a6

    iget-boolean v1, v4, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-nez v1, :cond_4a6

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49e

    goto :goto_4a6

    :cond_49e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit staged install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a6
    :goto_4a6
    if-eqz v13, :cond_4c7

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v1

    if-nez v1, :cond_4c7

    iget-boolean v1, v4, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-nez v1, :cond_4c7

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/SystemConfig;->mWhitelistedStagedInstallers:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4bf

    goto :goto_4c7

    :cond_4bf
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit non-staged APEX install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c7
    :goto_4c7
    iput-boolean v9, v4, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    iput-boolean v9, v4, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    iget-boolean v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_5cb

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4dc

    const/4 v1, 0x1

    goto :goto_4dd

    :cond_4dc
    move v1, v9

    :goto_4dd
    iget v7, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_4ef

    if-eqz v1, :cond_4e6

    goto :goto_4ef

    :cond_4e6
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to use the PackageManager.INSTALL_GRANT_ALL_REQUESTED_PERMISSIONS flag"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4ef
    :goto_4ef
    invoke-virtual {v12}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_51e

    if-nez v1, :cond_51e

    move v1, v9

    :goto_4fc
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v1, v11, :cond_51e

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sget-object v14, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v14, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_515

    const/16 v19, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4fc

    :cond_515
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to grant runtime permissions for a session"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51e
    iget-object v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_546

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    iget-object v7, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/16 v18, 0x2

    mul-int/lit8 v11, v1, 0x2

    if-gt v7, v11, :cond_548

    iget-object v7, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v7, v11, :cond_546

    goto :goto_548

    :cond_546
    const/4 v11, 0x1

    goto :goto_551

    :cond_548
    :goto_548
    iget-object v7, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    const/4 v11, 0x1

    invoke-static {v7, v1, v1, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    :goto_551
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-eq v1, v11, :cond_56f

    const/4 v7, 0x2

    if-ne v1, v7, :cond_559

    goto :goto_56f

    :cond_559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid install mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56f
    :goto_56f
    iget v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_587

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v1

    if-eqz v1, :cond_57e

    goto :goto_5cb

    :cond_57e
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No suitable internal storage available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_587
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_5a9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_58f
    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v1
    :try_end_595
    .catchall {:try_start_58f .. :try_end_595} :catchall_5a4

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_59b

    goto :goto_5cb

    :cond_59b
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No suitable external storage available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5a4
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5a9
    and-int/lit16 v7, v1, 0x200

    if-eqz v7, :cond_5b2

    or-int/lit8 v1, v1, 0x10

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_5cb

    :cond_5b2
    or-int/lit8 v1, v1, 0x10

    iput v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_5ba
    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;
    :try_end_5c2
    .catchall {:try_start_5ba .. :try_end_5c2} :catchall_5c6

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5cb

    :catchall_5c6
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5cb
    :goto_5cb
    if-eqz v6, :cond_5d4

    move-wide/from16 v14, v20

    invoke-interface {v5, v6, v14, v15, v8}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    goto :goto_5d5

    :cond_5d4
    move v1, v3

    :goto_5d5
    if-ne v1, v3, :cond_5da

    const/16 v22, 0x0

    goto :goto_5dc

    :cond_5da
    move-object/from16 v22, v6

    :goto_5dc
    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_5df
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v11, v9

    move v14, v11

    :goto_5e7
    if-ge v11, v7, :cond_5fa

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageInstallerSession;

    iget v15, v15, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v19, 0x1

    if-ne v15, v10, :cond_5f7

    add-int/lit8 v14, v14, 0x1

    :cond_5f7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5e7

    :cond_5fa
    const/16 v19, 0x1

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_62a

    int-to-long v6, v14

    const-wide/16 v14, 0x400

    cmp-long v6, v6, v14

    if-gez v6, :cond_60f

    goto :goto_631

    :cond_60f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many active sessions for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_627
    move-exception v0

    goto/16 :goto_832

    :cond_62a
    int-to-long v6, v14

    const-wide/16 v14, 0x32

    cmp-long v6, v6, v14

    if-gez v6, :cond_81a

    :goto_631
    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    int-to-long v6, v6

    const-wide/32 v14, 0x100000

    cmp-long v6, v6, v14

    if-gez v6, :cond_802

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_642
    .catchall {:try_start_5df .. :try_end_642} :catchall_627

    :try_start_642
    invoke-virtual {v4, v1, v12, v8}, Lcom/android/server/pm/PackageInstallerService;->getExistingDraftSessionIdInternal(ILandroid/content/pm/PackageInstaller$SessionParams;I)I

    move-result v7

    monitor-exit v6
    :try_end_647
    .catchall {:try_start_642 .. :try_end_647} :catchall_7ff

    if-eq v7, v3, :cond_64a

    goto :goto_64e

    :cond_64a
    :try_start_64a
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v7

    :goto_64e
    monitor-exit v5
    :try_end_64f
    .catchall {:try_start_64a .. :try_end_64f} :catchall_627

    move v5, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-boolean v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v6, :cond_702

    iget v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v11, v6, 0x10

    if-eqz v11, :cond_6f5

    iget-boolean v11, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v11, :cond_6e0

    and-int v6, v6, p2

    if-eqz v6, :cond_667

    goto :goto_6e0

    :cond_667
    iget-object v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    new-instance v11, Ljava/io/File;

    const-string/jumbo v15, "vmdl"

    const-string v3, ".tmp"

    invoke-static {v7, v15, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/pm/PackageInstallerService;->DEBUG:Z

    if-eqz v3, :cond_6f2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "vmdl"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d7

    const-string v6, ".tmp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v15, 0x4

    sub-int/2addr v6, v15

    invoke-virtual {v3, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b1

    goto :goto_6f2

    :cond_6b1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "session folder format is off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a temporary session directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e0
    :goto_6e0
    iget-object v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v11, Ljava/io/File;

    const-string/jumbo v6, "session_"

    invoke-static {v7, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_6f2
    :goto_6f2
    const/16 v18, 0x0

    goto :goto_704

    :cond_6f5
    const-string/jumbo v3, "smdl"

    const-string v6, ".tmp"

    invoke-static {v7, v3, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    const/4 v11, 0x0

    goto :goto_704

    :cond_702
    const/4 v11, 0x0

    goto :goto_6f2

    :goto_704
    const v3, -0x2000001

    const/16 v6, 0x3e8

    if-eq v10, v6, :cond_718

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_718

    iget v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    and-int/2addr v6, v3

    iput v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    :cond_718
    iget-boolean v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    if-eqz v6, :cond_724

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v6

    if-nez v6, :cond_724

    iput-boolean v9, v12, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    :cond_724
    const-class v6, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v6, :cond_73b

    invoke-virtual {v6, v8}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result v6

    if-eqz v6, :cond_73b

    iget v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x4000000

    or-int/2addr v6, v9

    iput v6, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_73b
    if-nez v5, :cond_749

    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.ENFORCE_UPDATE_OWNERSHIP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_74e

    :cond_749
    iget v5, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v3, v5

    iput v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_74e
    iget v3, v12, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v22

    move-object/from16 v25, p3

    move-object/from16 v20, v0

    move/from16 v23, v1

    move-object/from16 v21, v2

    move/from16 v26, v3

    invoke-static/range {v20 .. v28}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    move-object/from16 v17, v11

    move-object v11, v0

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v3, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move v8, v7

    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    const-string v31, ""

    iget-object v9, v4, Lcom/android/server/pm/PackageInstallerService;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v15, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v22, v21

    const/16 v21, 0x0

    move/from16 v23, v22

    const/16 v22, 0x0

    move/from16 v24, v23

    const/16 v23, 0x0

    move/from16 v25, v24

    const/16 v24, 0x0

    move/from16 v26, v25

    const/16 v25, 0x0

    move/from16 v27, v26

    const/16 v26, -0x1

    move/from16 v28, v27

    const/16 v27, 0x0

    move/from16 v32, v28

    const/16 v28, 0x0

    move/from16 v33, v32

    const/16 v32, 0x0

    move-object/from16 v33, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v33}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/InstallDependencyHelper;)V

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_7ba
    iget-object v2, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_7c0
    .catchall {:try_start_7ba .. :try_end_7c0} :catchall_7fc

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    :try_start_7c9
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    monitor-exit v3
    :try_end_7cf
    .catchall {:try_start_7c9 .. :try_end_7cf} :catchall_7f9

    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    sget v3, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    const/4 v11, 0x1

    invoke-virtual {v1, v11, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {v0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v0, :cond_7f8

    const-string/jumbo v0, "PackageInstaller"

    const-string v1, "Created session id="

    const-string v2, " staged="

    invoke-static {v8, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v12, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_7f8
    return v8

    :catchall_7f9
    move-exception v0

    :try_start_7fa
    monitor-exit v3
    :try_end_7fb
    .catchall {:try_start_7fa .. :try_end_7fb} :catchall_7f9

    throw v0

    :catchall_7fc
    move-exception v0

    :try_start_7fd
    monitor-exit v1
    :try_end_7fe
    .catchall {:try_start_7fd .. :try_end_7fe} :catchall_7fc

    throw v0

    :catchall_7ff
    move-exception v0

    :try_start_800
    monitor-exit v6
    :try_end_801
    .catchall {:try_start_800 .. :try_end_801} :catchall_7ff

    :try_start_801
    throw v0

    :cond_802
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many historical sessions for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many active sessions for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_832
    monitor-exit v5
    :try_end_833
    .catchall {:try_start_801 .. :try_end_833} :catchall_627

    throw v0

    :cond_834
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Setting rollbackImpactLevel requires the MANAGE_ROLLBACKS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set rollbackImpactLevel when rollback is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rollbackLifetimeMillis can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84e
    const-string/jumbo v0, "PackageInstaller"

    const-string/jumbo v1, "not an approved installer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "not an approved installer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_860
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "User restriction prevents installing"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final disableVerificationForUid(I)V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iput p1, p0, Lcom/android/server/pm/PackageInstallerService;->mDisableVerificationForUid:I

    return-void

    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Operation not allowed for caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    new-instance v2, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    new-instance v3, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v3}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1a
    if-ge v6, v4, :cond_4d

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v8

    goto :goto_37

    :catchall_33
    move-exception p0

    goto/16 :goto_1d7

    :cond_36
    move-object v8, v7

    :goto_37
    if-nez v8, :cond_3d

    invoke-virtual {v2, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_4a

    :cond_3d
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-virtual {v3, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_4a

    :cond_47
    invoke-virtual {v1, v7, v8}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    :goto_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_4d
    const-string v4, "Active"

    invoke-virtual {v1, v4, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    iget-object v1, v2, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_60

    const-string/jumbo v1, "Orphaned"

    invoke-virtual {v2, v1, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_60
    const-string v1, "Finalized"

    invoke-virtual {v3, v1, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v1, "Historical install sessions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v5

    :goto_76
    if-ge v2, v1, :cond_8b

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerHistoricalSession;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageInstallerHistoricalSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_8b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "Legacy install sessions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_3 .. :try_end_aa} :catchall_33

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    iget-object v1, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_af
    iget-object v2, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_bc

    monitor-exit v1

    goto :goto_fe

    :catchall_b9
    move-exception p0

    goto/16 :goto_1d5

    :cond_bc
    const-string v2, "Last silent updated Infos:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v5

    :goto_cb
    if-ge v3, v2, :cond_fa

    iget-object v4, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_d8

    goto :goto_f7

    :cond_d8
    const-string/jumbo v6, "installerPackageName"

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v6, "packageName"

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v6, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "silentUpdatedMillis"

    iget-object v6, v0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_f7
    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    :cond_fa
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v1
    :try_end_fe
    .catchall {:try_start_af .. :try_end_fe} :catchall_b9

    :goto_fe
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mGentleUpdateHelper:Lcom/android/server/pm/GentleUpdateHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Gentle update with constraints info:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHasPendingIdleJob:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "hasPendingIdleJob"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingIdleFutures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "Num of PendingIdleFutures"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Num of PendingChecks"

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_147
    if-ge v5, v0, :cond_1d4

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v1, ":"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    iget-object v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->packageNames:Ljava/util/List;

    const-string/jumbo v3, "packageNames"

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-wide v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->mFinishTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "finishTime"

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isNotInCallRequired()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "constraints notInCallRequired"

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isDeviceIdleRequired()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "constraints deviceIdleRequired"

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotForegroundRequired()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "constraints appNotForegroundRequired"

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v2, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotInteractingRequired()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "constraints appNotInteractingRequired"

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotTopVisibleRequired()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "constraints appNotTopVisibleRequired"

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_147

    :cond_1d4
    return-void

    :goto_1d5
    :try_start_1d5
    monitor-exit v1
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_b9

    throw p0

    :goto_1d7
    :try_start_1d7
    monitor-exit v0
    :try_end_1d8
    .catchall {:try_start_1d7 .. :try_end_1d8} :catchall_33

    throw p0
.end method

.method public final expireSessionsLocked()V
    .registers 14

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_fa

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v6

    if-eqz v6, :cond_1f

    goto/16 :goto_f3

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v5, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_2d
    iget-wide v11, v5, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    monitor-exit v10
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_f7

    sub-long/2addr v8, v11

    iget-object v10, v5, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v10, v10, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v10, :cond_46

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v6

    if-eqz v6, :cond_f3

    const-wide/32 v6, 0x6c258c00

    cmp-long v6, v8, v6

    if-gez v6, :cond_d9

    goto/16 :goto_f3

    :cond_46
    const-wide/32 v8, 0xf731400

    cmp-long v8, v6, v8

    if-ltz v8, :cond_65

    const-string/jumbo v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Abandoning old session created at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v5, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    :cond_65
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v8

    if-eqz v8, :cond_f3

    const-string/jumbo v8, "com.sec.android.easyMover"

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f3

    iget v8, v5, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    if-gt v9, v1, :cond_cb

    iput v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    :try_start_82
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_82 .. :try_end_88} :catch_ad

    const-string/jumbo v10, "com.sec.android.easyMover"

    if-nez v9, :cond_8f

    const/4 v11, 0x0

    goto :goto_95

    :cond_8f
    const/16 v11, 0x80

    :try_start_91
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    :goto_95
    if-nez v11, :cond_99

    move v11, v3

    goto :goto_9b

    :cond_99
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_9b
    iput v11, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    if-lez v11, :cond_cb

    invoke-virtual {v9, v10, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_af

    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    const v10, 0x11e1a300

    if-ge v9, v10, :cond_cb

    goto :goto_af

    :catch_ad
    move-exception v9

    goto :goto_b2

    :cond_af
    :goto_af
    iput v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I
    :try_end_b1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_91 .. :try_end_b1} :catch_ad

    goto :goto_cb

    :goto_b2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "isValidSmartSwitchSession "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "PackageInstaller"

    invoke-static {v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    :goto_cb
    iget v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSmartSwitchUid:I

    if-lez v9, :cond_d9

    if-ne v9, v8, :cond_d9

    const-wide/32 v8, 0x1499700

    cmp-long v6, v6, v8

    if-gez v6, :cond_d9

    goto :goto_f3

    :cond_d9
    :goto_d9
    const-string/jumbo v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Remove old session: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageInstallerService;->removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V

    :cond_f3
    :goto_f3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    :catchall_f7
    move-exception p0

    :try_start_f8
    monitor-exit v10
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    throw p0

    :cond_fa
    return-void
.end method

.method public final getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string/jumbo v1, "getAllSessions"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1d
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_59

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    iget v7, v6, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v7, v3, :cond_56

    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v7

    if-nez v7, :cond_56

    sget-boolean v7, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v7, :cond_43

    iget-object v7, v6, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-nez v7, :cond_56

    goto :goto_43

    :catchall_40
    move-exception v0

    move-object p0, v0

    goto :goto_69

    :cond_43
    :goto_43
    iget-object v7, v6, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v7, :cond_4f

    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_56

    :cond_4f
    invoke-virtual {v6, v2, v4}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(IZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_1d .. :try_end_5a} :catchall_40

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :goto_69
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_40

    throw p0
.end method

.method public final getExistingDraftSessionIdInternal(ILandroid/content/pm/PackageInstaller$SessionParams;I)I
    .registers 8

    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    sget-object v1, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_59

    if-nez v0, :cond_a

    goto :goto_59

    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-interface {v2, v3, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_59

    invoke-interface {v2, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_59

    :cond_23
    iget p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    if-lez p2, :cond_3a

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p0, :cond_59

    invoke-static {p0, v0, p1, p3}, Lcom/android/server/pm/PackageInstallerService;->isValidDraftSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_59

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    return p0

    :cond_3a
    const/4 p2, 0x0

    :goto_3b
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_59

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v2, :cond_56

    invoke-static {v2, v0, p1, p3}, Lcom/android/server/pm/PackageInstallerService;->isValidDraftSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_56

    iget p0, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    return p0

    :cond_56
    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    :cond_59
    :goto_59
    return v1
.end method

.method public final getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string/jumbo v1, "getAllSessions"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v4, 0x0

    :goto_1c
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_45

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerHistoricalSession;

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3b

    iget v6, v5, Lcom/android/server/pm/PackageInstallerHistoricalSession;->userId:I

    if-ne v6, v3, :cond_42

    goto :goto_3b

    :catchall_38
    move-exception v0

    move-object p0, v0

    goto :goto_55

    :cond_3b
    :goto_3b
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerHistoricalSession;->generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_38

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :goto_55
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_38

    throw p0
.end method

.method public final getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v2, "getMySessions"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p2, v3, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_22
    :try_start_22
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_65

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(IZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    iget v6, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v6, v4, :cond_62

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v6

    if-nez v6, :cond_62

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v6

    if-eqz v6, :cond_62

    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v6, 0x20000000

    and-int/2addr v3, v6

    if-nez v3, :cond_62

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :catchall_5f
    move-exception v0

    move-object p0, v0

    goto :goto_6c

    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_22 .. :try_end_66} :catchall_5f

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :goto_6c
    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_5f

    throw p0
.end method

.method public final getSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v2, 0x0

    if-eqz p1, :cond_27

    iget-object v3, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v3, :cond_21

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_37

    :cond_21
    :goto_21
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(IZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    goto :goto_28

    :cond_27
    move-object p1, v2

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_1f

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    if-eqz p0, :cond_36

    return-object v2

    :cond_36
    return-object p1

    :goto_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_1f

    throw p0
.end method

.method public final getStagedSessions()Landroid/content/pm/ParceledListSlice;
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    :try_start_e
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_37

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v6, v5, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v6, :cond_34

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_34

    invoke-virtual {v5, v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(IZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_4d

    :cond_34
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_32

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v2, v0, v4}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :goto_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_32

    throw p0
.end method

.method public final installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    .registers 13

    iget-object p6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p6, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILandroid/content/IntentSender;)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/IntentSender;

    if-eqz p1, :cond_20

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {p2, p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V

    :cond_20
    return-void
.end method

.method public final installPackageArchived(Landroid/content/pm/ArchivedPackageParcel;Landroid/content/pm/PackageInstaller$SessionParams;Landroid/content/IntentSender;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 15

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Requested archived install of package %s for user %s."

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageInstaller"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    move v6, v4

    const-string/jumbo v4, "installPackageArchived"

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7a

    iget v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v0, :cond_72

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forArchived(Landroid/content/pm/ArchivedPackageParcel;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v5

    new-instance v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v7, p1

    move-object v2, p2

    move-object v3, p4

    move v4, v6

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;Landroid/content/IntentSender;Landroid/content/pm/ArchivedPackageParcel;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incompatible session param: dataLoaderParams has to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7a
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need the com.android.permission.INSTALL_PACKAGES permission to request archived package install"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onInstallerPackageDeleted(II)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne p1, v5, :cond_22

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v4, p1, :cond_2a

    goto :goto_28

    :cond_22
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    if-ne v7, v4, :cond_2a

    :goto_28
    move v4, v6

    goto :goto_2b

    :cond_2a
    move v4, v1

    :goto_2b
    if-nez v4, :cond_2e

    goto :goto_64

    :cond_2e
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_41

    :cond_35
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    :goto_41
    if-eqz v3, :cond_64

    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne p1, v5, :cond_4e

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v4, p1, :cond_55

    goto :goto_56

    :cond_4e
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    if-ne v5, v4, :cond_55

    goto :goto_56

    :cond_55
    move v6, v1

    :goto_56
    if-eqz v6, :cond_64

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_64

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    goto :goto_64

    :catchall_62
    move-exception p0

    goto :goto_69

    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_67
    monitor-exit v0

    return-void

    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_62

    throw p0
.end method

.method public final openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final openSessionInternal(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 5

    const-string v0, "Caller has no access to session "

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerService;->checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    monitor-exit v1

    return-object v2

    :catchall_18
    move-exception p0

    goto :goto_2c

    :cond_1a
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_18

    throw p0
.end method

.method public final openSessionInternalQuick(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession;
    .registers 6

    const-string v0, "Caller has no access to session "

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerService;->checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageInstallerSession;->openQuick(Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    :catchall_18
    move-exception p0

    goto :goto_2c

    :cond_1a
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_18

    throw p0
.end method

.method public final openSessionQuick(ILjava/lang/String;)Landroid/content/pm/IPackageInstallerSession;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternalQuick(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final readSessionsLocked()V
    .registers 14

    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "PackageInstaller"

    const-string/jumbo v1, "readSessionsLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_14
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_76

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1e

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "session"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_32} :catch_76
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_32} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_32} :catch_73
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_14 .. :try_end_32} :catch_73
    .catchall {:try_start_14 .. :try_end_32} :catchall_5c

    if-eqz v0, :cond_71

    :try_start_34
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    iget-object v12, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallDependencyHelper:Lcom/android/server/pm/InstallDependencyHelper;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_48} :catch_64
    .catchall {:try_start_34 .. :try_end_48} :catchall_5c

    move-object v10, p0

    :try_start_49
    invoke-static/range {v3 .. v12}, Lcom/android/server/pm/PackageInstallerSession;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/SilentUpdatePolicy;Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_62
    .catchall {:try_start_49 .. :try_end_4d} :catchall_5c

    :try_start_4d
    iget-object v0, v10, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v4, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_6f

    :catchall_5c
    move-exception v0

    move-object p0, v0

    goto :goto_84

    :catch_5f
    move-exception v0

    :goto_60
    move-object p0, v0

    goto :goto_7b

    :catch_62
    move-exception v0

    goto :goto_66

    :catch_64
    move-exception v0

    move-object v10, p0

    :goto_66
    move-object p0, v0

    const-string/jumbo v0, "PackageInstaller"

    const-string v4, "Could not read session"

    invoke-static {v0, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_6f} :catch_77
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_6f} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_6f} :catch_5f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4d .. :try_end_6f} :catch_5f
    .catchall {:try_start_4d .. :try_end_6f} :catchall_5c

    :goto_6f
    move-object p0, v10

    goto :goto_1e

    :cond_71
    move-object v10, p0

    goto :goto_6f

    :catch_73
    move-exception v0

    move-object v10, p0

    goto :goto_60

    :catch_76
    :cond_76
    move-object v10, p0

    :catch_77
    :goto_77
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_88

    :goto_7b
    :try_start_7b
    const-string/jumbo v0, "PackageInstaller"

    const-string v3, "Failed reading install sessions"

    invoke-static {v0, v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_5c

    goto :goto_77

    :goto_84
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :goto_88
    const/4 p0, 0x0

    :goto_89
    iget-object v0, v10, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_13d

    iget-object v0, v10, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v2, v10, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9e
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_a5
    if-ltz v4, :cond_de

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v6, :cond_bf

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_db

    :catchall_bb
    move-exception v0

    move-object p0, v0

    goto/16 :goto_13b

    :cond_bf
    const-string/jumbo v6, "PackageInstallerSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Child session not existed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_db
    add-int/lit8 v4, v4, -0x1

    goto :goto_a5

    :cond_de
    iget-boolean v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v4, :cond_136

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v4
    :try_end_e6
    .catchall {:try_start_9e .. :try_end_e6} :catchall_bb

    if-eqz v4, :cond_e9

    goto :goto_136

    :cond_e9
    :try_start_e9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v5, :cond_129

    iget-boolean v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v4, :cond_129

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_ff

    goto :goto_129

    :cond_ff
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-eqz v4, :cond_112

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    goto :goto_113

    :catch_110
    move-exception v0

    goto :goto_12b

    :cond_112
    move-object v2, v0

    :goto_113
    if-eqz v2, :cond_134

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v2

    if-nez v2, :cond_134

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_134

    :cond_125
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()V
    :try_end_128
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e9 .. :try_end_128} :catch_110
    .catchall {:try_start_e9 .. :try_end_128} :catchall_bb

    goto :goto_134

    :cond_129
    :goto_129
    :try_start_129
    monitor-exit v3

    goto :goto_137

    :goto_12b
    const-string/jumbo v2, "PackageInstallerSession"

    const-string/jumbo v4, "Package not valid"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_134
    :goto_134
    monitor-exit v3

    goto :goto_137

    :cond_136
    :goto_136
    monitor-exit v3

    :goto_137
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_89

    :goto_13b
    monitor-exit v3
    :try_end_13c
    .catchall {:try_start_129 .. :try_end_13c} :catchall_bb

    throw p0

    :cond_13d
    return-void
.end method

.method public final reconcileStagesLocked(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Lcom/android/server/pm/PackageInstallerService$1;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    if-eqz v0, :cond_18

    array-length v2, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->ensureCapacity(I)V

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_18
    invoke-static {p1}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p1, :cond_2e

    array-length v2, p1

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->ensureCapacity(I)V

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2e
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 p1, 0x0

    :goto_32
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_32

    :cond_4a
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    return-void
.end method

.method public final registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v2, "registerCallback"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    new-instance p2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda6;

    invoke-direct {p2, v4}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda6;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    new-instance v0, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;-><init>(ILjava/util/function/IntPredicate;)V

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_12

    :cond_29
    return-void
.end method

.method public final removeStagingDirs(Landroid/util/ArraySet;)V
    .registers 5

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deleting orphan stage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PackageInstaller"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    goto :goto_4

    :cond_2c
    return-void
.end method

.method public final reportUnarchivalStatus(IIJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 18

    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_1b

    cmp-long v4, p3, v1

    if-lez v4, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Insufficient storage error set, but requiredStorageBytes unspecified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    if-eq p2, v3, :cond_37

    cmp-long v1, p3, v1

    if-gtz v1, :cond_22

    goto :goto_37

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "requiredStorageBytes set, but error is %s."

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_72
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v3, :cond_b3

    iget p0, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne p0, v0, :cond_b3

    iget-object p0, v3, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz p0, :cond_b3

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    if-eqz p0, :cond_9a

    move v5, p1

    move v4, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageInstallerSession;->reportUnarchivalStatus(IIJLandroid/app/PendingIntent;)V

    monitor-exit v2

    return-void

    :catchall_97
    move-exception v0

    move-object p0, v0

    goto :goto_d1

    :cond_9a
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p2, "The caller UID %s does not have access to the session with unarchiveId %d."

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b3
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo v1, "No valid session with unarchival ID %s found for user %s."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :goto_d1
    monitor-exit v2
    :try_end_d2
    .catchall {:try_start_72 .. :try_end_d2} :catchall_97

    throw p0

    :cond_d3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid status code passed "

    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageArchiver;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final requestCopy(Ljava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    .registers 8

    const-string v0, "Invalid name: "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_1c

    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const-string/jumbo v3, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v2, v3, v1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_8a

    :goto_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mCreateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_84

    :try_start_1f
    invoke-static {}, Lcom/android/server/pm/PackageInstallerService;->prepareCustomCopyDir()Ljava/io/File;

    move-result-object v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_81

    :try_start_24
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_84

    :try_start_2f
    new-instance p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    sget v3, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v2, v3

    const/16 v3, 0x1b6

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_62

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V
    :try_end_62
    .catch Landroid/system/ErrnoException; {:try_start_2f .. :try_end_62} :catch_63
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_62} :catch_84

    :cond_62
    return-object p1

    :catch_63
    move-exception p0

    :try_start_64
    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to open tempStageDir"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_81} :catch_84

    :catchall_81
    move-exception p0

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    :try_start_83
    throw p0
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_84} :catch_84

    :catch_84
    move-exception p0

    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_8a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not authorised to use this method !!"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageArchiver;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final restoreAndApplyStagedSessionIfNeeded()V
    .registers 16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v5, -0x80

    if-ge v3, v4, :cond_8d

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v6, :cond_23

    goto :goto_89

    :cond_23
    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v6

    if-nez v6, :cond_6e

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v6

    if-eqz v6, :cond_6e

    iget-object v6, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v6

    if-nez v6, :cond_6e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An orphan staged session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v7, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is found, parent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is missing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_89

    :catchall_6b
    move-exception p0

    goto/16 :goto_362

    :cond_6e
    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v5

    if-nez v5, :cond_89

    iget-object v5, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v5

    if-nez v5, :cond_89

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_a .. :try_end_8e} :catchall_6b

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/util/TimingsTraceLog;

    const-string/jumbo v4, "StagingManagerTiming"

    const-wide/32 v6, 0x40000

    invoke-direct {v3, v4, v6, v7}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v4, "restoreSessions"

    invoke-virtual {v3, v4}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v4, "sys.boot_completed"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b5

    goto/16 :goto_358

    :cond_b5
    move v4, v2

    :goto_b6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_128

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/StagingManager$StagedSession;

    move-object v8, v6

    check-cast v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v9, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v9

    xor-int/2addr v9, v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v11, v11, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is a child session"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v9, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v9, v9, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v11, v11, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is not committed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v9

    xor-int/2addr v7, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v8, v8, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is in terminal state"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    :cond_128
    if-eqz p0, :cond_140

    :goto_12a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_358

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/StagingManager$StagedSession;

    const-string v1, "Build fingerprint has changed"

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p0, v5, v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12a

    :cond_140
    :try_start_140
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result p0

    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->needsCheckpoint()Z

    move-result v4
    :try_end_150
    .catch Landroid/os/RemoteException; {:try_start_140 .. :try_end_150} :catch_359

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_161

    if-eqz p0, :cond_159

    goto :goto_161

    :cond_159
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Detected multiple staged sessions on a device without fs-checkpoint support"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_161
    :goto_161
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v2

    :goto_166
    if-ge v8, v6, :cond_1be

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/StagingManager$StagedSession;

    move-object v10, v9

    check-cast v10, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v11, v10, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v11

    if-eqz v11, :cond_18c

    iget-object v10, v10, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v0, v10, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/StagingManager$StagedSession;

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_189
    add-int/lit8 v6, v6, -0x1

    goto :goto_166

    :cond_18c
    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    move-result v11

    if-nez v11, :cond_1bb

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Restart verification for session="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v10, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v10, v10, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string/jumbo v12, "StagingManager"

    invoke-static {v11, v10, v12}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    new-instance v11, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;

    const/4 v12, 0x1

    invoke-direct {v11, v12, v9}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v0, v10, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/StagingManager$StagedSession;

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_189

    :cond_1bb
    add-int/lit8 v8, v8, 0x1

    goto :goto_166

    :cond_1be
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v0, v6, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, v1, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    check-cast v6, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1d0
    invoke-virtual {v6}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v6

    invoke-interface {v6}, Landroid/apex/IApexService;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object v6

    new-instance v8, Landroid/util/SparseArray;

    array-length v9, v6

    invoke-direct {v8, v9}, Landroid/util/SparseArray;-><init>(I)V

    move v9, v2

    :goto_1df
    array-length v10, v6

    if-ge v9, v10, :cond_1fa

    aget-object v10, v6, v9

    iget v11, v10, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {v8, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1e9
    .catch Landroid/os/RemoteException; {:try_start_1d0 .. :try_end_1e9} :catch_1ec

    add-int/lit8 v9, v9, 0x1

    goto :goto_1df

    :catch_1ec
    move-exception v6

    const-string v8, "ApexManager"

    const-string/jumbo v9, "Unable to contact apexservice"

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8, v2}, Landroid/util/SparseArray;-><init>(I)V

    :cond_1fa
    move v6, v2

    move v9, v6

    move v10, v9

    :goto_1fd
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_2ea

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/StagingManager$StagedSession;

    check-cast v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    move-result v12

    if-nez v12, :cond_213

    goto/16 :goto_2e6

    :cond_213
    iget-object v12, v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v12, v12, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/apex/ApexSessionInfo;

    if-eqz v12, :cond_2de

    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-eqz v13, :cond_225

    goto/16 :goto_2de

    :cond_225
    iget-boolean v14, v12, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v14, :cond_27e

    if-nez v13, :cond_27e

    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-nez v13, :cond_27e

    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-nez v13, :cond_27e

    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    if-eqz v13, :cond_238

    goto :goto_27e

    :cond_238
    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-nez v13, :cond_27c

    iget-boolean v13, v12, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v13, :cond_241

    goto :goto_27c

    :cond_241
    iget-boolean v10, v12, Landroid/apex/ApexSessionInfo;->isStaged:Z

    if-eqz v10, :cond_263

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Staged session "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v12, v12, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " at boot didn\'t activate nor fail. Marking it as failed anyway."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v5, v10}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    :goto_260
    move v10, v7

    goto/16 :goto_2e6

    :cond_263
    const-string/jumbo v10, "StagingManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Apex session "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v13, v13, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v14, " is in impossible state"

    invoke-static {v13, v14, v10, v12}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v10, "Impossible state"

    invoke-virtual {v11, v5, v10}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_260

    :cond_27c
    :goto_27c
    move v9, v7

    goto :goto_2e6

    :cond_27e
    :goto_27e
    iget-object v10, v12, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2a9

    iget-object v10, v12, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v13

    :try_start_28b
    iput-object v10, v1, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    iget-object v10, v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2a5

    iget-object v10, v1, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    iget-object v14, v11, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v14

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a5

    :catchall_2a3
    move-exception p0

    goto :goto_2a7

    :cond_2a5
    :goto_2a5
    monitor-exit v13

    goto :goto_2a9

    :goto_2a7
    monitor-exit v13
    :try_end_2a8
    .catchall {:try_start_28b .. :try_end_2a8} :catchall_2a3

    throw p0

    :cond_2a9
    :goto_2a9
    const-string v10, "APEX activation failed."

    invoke-virtual {v1}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2bc

    const-string v10, "APEX activation failed. Reason: "

    invoke-static {v10, v13}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2d4

    :cond_2bc
    iget-object v13, v12, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2d4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "APEX activation failed. Error: "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v12, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_2d4
    :goto_2d4
    const-string/jumbo v12, "StagingManager"

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v5, v10}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_260

    :cond_2de
    :goto_2de
    const-string/jumbo v10, "apexd did not know anything about a staged session supposed to be activated"

    invoke-virtual {v11, v5, v10}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto/16 :goto_260

    :goto_2e6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1fd

    :cond_2ea
    if-eqz v9, :cond_2f4

    if-eqz v10, :cond_2f4

    const-string v0, "Found both applied and failed apex sessions"

    invoke-virtual {v1, v0, p0, v4}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    goto :goto_358

    :cond_2f4
    if-eqz v10, :cond_31a

    :goto_2f6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_358

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/StagingManager$StagedSession;

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_309
    iget-boolean v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    monitor-exit v3
    :try_end_30c
    .catchall {:try_start_309 .. :try_end_30c} :catchall_317

    if-eqz v1, :cond_30f

    goto :goto_314

    :cond_30f
    const-string v1, "Another apex session failed"

    invoke-virtual {p0, v5, v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    :goto_314
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f6

    :catchall_317
    move-exception p0

    :try_start_318
    monitor-exit v3
    :try_end_319
    .catchall {:try_start_318 .. :try_end_319} :catchall_317

    throw p0

    :cond_31a
    :goto_31a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_355

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/StagingManager$StagedSession;

    :try_start_326
    invoke-virtual {v1, v5, p0, v4}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    :try_end_329
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_326 .. :try_end_329} :catch_34e
    .catch Ljava/lang/Exception; {:try_start_326 .. :try_end_329} :catch_32a

    goto :goto_352

    :catch_32a
    move-exception v6

    const-string/jumbo v7, "StagingManager"

    const-string/jumbo v8, "Staged install failed due to unhandled exception"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Staged install failed due to unhandled exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, -0x6e

    invoke-direct {v7, v8, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5, v7, p0, v4}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    goto :goto_352

    :catch_34e
    move-exception v6

    invoke-virtual {v1, v5, v6, p0, v4}, Lcom/android/server/pm/StagingManager;->onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V

    :goto_352
    add-int/lit8 v2, v2, 0x1

    goto :goto_31a

    :cond_355
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_358
    :goto_358
    return-void

    :catch_359
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to get checkpoint status"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_362
    :try_start_362
    monitor-exit v1
    :try_end_363
    .catchall {:try_start_362 .. :try_end_363} :catchall_6b

    throw p0
.end method

.method public final setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    iget-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    monitor-enter v0

    if-nez p1, :cond_19

    :try_start_11
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_1d

    :cond_19
    :goto_19
    iput-object p1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mAllowUnlimitedSilentUpdatesInstaller:Ljava/lang/String;

    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_17

    throw p0

    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to unlimite silent updates"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPermissionsResult(IZ)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub;->setPermissionsResult_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_6
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p0, :cond_16

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_18

    :cond_16
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_14

    throw p0
.end method

.method public final setSilentUpdatesThrottleTime(J)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    iget-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1e

    :try_start_15
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    goto :goto_20

    :catchall_1c
    move-exception p0

    goto :goto_24

    :cond_1e
    sget-wide p1, Lcom/android/server/pm/SilentUpdatePolicy;->SILENT_UPDATE_THROTTLE_TIME_MS:J

    :goto_20
    iput-wide p1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateThrottleTimeMs:J

    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_1c

    throw p0

    :cond_26
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to set silent updates throttle time"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setUnknownSourceConfirmResult(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INSTALL_PACKAGES"

    const-string/jumbo v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_e
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setUnknownSourceConfirmResult(Z)V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_20

    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1c

    throw p0
.end method

.method public final uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .registers 14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageInstallerService;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;III)V

    return-void
.end method

.method public final uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;III)V
    .registers 22

    move-object/from16 v0, p2

    move/from16 v9, p7

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-string/jumbo v2, "uninstall"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move/from16 v4, p5

    move/from16 v3, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    move-object v11, v1

    move v10, v3

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v10, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    :cond_23
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_35

    invoke-virtual {v1, v0, v10}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3f

    :cond_35
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v10, v11, v1}, Lcom/android/server/pm/PackageInstallerSession;->isEmergencyInstallerEnabled(IILcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_3f
    move v5, v13

    goto :goto_42

    :cond_41
    move v5, v12

    :goto_42
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    move/from16 v8, p3

    move-object/from16 v3, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZILcom/android/server/pm/PackageArchiver;I)V

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v2, v3, v9, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_73

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v6, 0x0

    move-object v1, p1

    move/from16 v4, p3

    move/from16 v3, p5

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIIZ)V

    return-void

    :cond_73
    if-eqz v5, :cond_a8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_79
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p1

    move/from16 v5, p3

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIIZ)V
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_a2

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, 0x71

    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void

    :catchall_a2
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_a8
    move/from16 v4, p5

    new-instance v2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v4}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/PackageInstallerService;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v5, 0x0

    if-nez v2, :cond_bc

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c7

    :cond_bc
    invoke-interface {v11, v2, v5, v6, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne v2, v10, :cond_c3

    move v12, v13

    :cond_c3
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_c7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_db

    new-instance v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;

    move-object v2, p1

    move/from16 v5, p3

    move-object v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/VersionedPackage;Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :cond_db
    move/from16 v8, p3

    move-object v3, v1

    invoke-interface {v11, v0, v5, v6, v4}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    const/4 v4, 0x0

    if-lt v0, v2, :cond_f1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {p0, v0, v9, v10, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_f1
    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v0, Landroid/content/pm/PackageManager$UninstallCompleteCallback;

    invoke-virtual {v3}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$UninstallCompleteCallback;-><init>(Landroid/os/IBinder;)V

    const-string/jumbo v1, "android.content.pm.extra.CALLBACK"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    and-int/lit8 v0, v8, 0x10

    if-eqz v0, :cond_124

    const-string/jumbo v0, "android.content.pm.extra.DELETE_FLAGS"

    invoke-virtual {p0, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_124
    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    return-void
.end method

.method public final uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    .registers 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DELETE_PACKAGES"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string/jumbo v1, "uninstall"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result p4

    if-nez p4, :cond_27

    iget-object p4, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p4, v2, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    :cond_27
    new-instance p2, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object p4, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v3, p4, p3, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/pm/PackageManagerService;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    return-void
.end method

.method public final unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .registers 9

    const/4 v0, 0x2

    const-string v1, "Caller has no access to session "

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_6
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v3, :cond_5f

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v4

    if-eqz v4, :cond_5f

    if-eqz p2, :cond_3d

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v4, p1, 0x2

    if-gt v1, v4, :cond_38

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v4, :cond_3d

    goto :goto_38

    :catchall_36
    move-exception p0

    goto :goto_71

    :cond_38
    :goto_38
    const/4 v1, 0x1

    invoke-static {p2, p1, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_3d
    iget-object p1, v3, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    const-wide/16 v4, -0x1

    iput-wide v4, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget p2, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v1, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    sget v3, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    monitor-exit v2

    return-void

    :cond_5f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_6 .. :try_end_72} :catchall_36

    throw p0
.end method

.method public final updateSessionAppLabel(ILjava/lang/String;)V
    .registers 7

    const-string v0, "Caller has no access to session "

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v2, :cond_41

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object p1, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget p2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    sget v2, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_53

    :cond_3f
    :goto_3f
    monitor-exit v1

    return-void

    :cond_41
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_3d

    throw p0
.end method

.method public final waitForInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V
    .registers 14

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_22

    const-wide/32 v0, 0x240c8400

    cmp-long v0, p5, v0

    if-gtz v0, :cond_22

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageInstallerService;->checkInstallConstraintsInternal(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;J)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1, v3, v4, p4}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageInstallerService;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :cond_22
    move-wide v5, p5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid timeoutMillis="

    invoke-static {v5, v6, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
