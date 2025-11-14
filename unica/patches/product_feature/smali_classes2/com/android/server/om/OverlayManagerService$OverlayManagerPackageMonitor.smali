.class public final Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    const-string/jumbo v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-wide/32 v3, 0x4000000

    if-eqz p2, :cond_5c

    const-string/jumbo p2, "OMS#onPackageReplaced "

    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v4, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p2, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_57

    :try_start_28
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    iget-object v1, v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_44

    if-nez v1, :cond_50

    :try_start_3a
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v1, p0, v2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(IILjava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_43
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_3a .. :try_end_43} :catch_46
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    goto :goto_50

    :catchall_44
    move-exception p0

    goto :goto_55

    :catch_46
    move-exception p0

    :try_start_47
    const-string/jumbo v1, "OverlayManager"

    const-string/jumbo v5, "onPackageReplaced internal error"

    invoke-static {v1, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    :goto_50
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_44

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_b0

    :goto_55
    :try_start_55
    monitor-exit p2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_44

    :try_start_56
    throw p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_5c
    const-string/jumbo p2, "OMS#onPackageAdded "

    :try_start_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v4, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p2, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_71
    .catchall {:try_start_5f .. :try_end_71} :catchall_18e

    :try_start_71
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v1

    if-eqz v1, :cond_ac

    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    iget-object v1, v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1
    :try_end_81
    .catchall {:try_start_71 .. :try_end_81} :catchall_9f

    if-nez v1, :cond_ac

    :try_start_83
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p0, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p0, v2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(IILjava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v5, v2}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_9e
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_83 .. :try_end_9e} :catch_a2
    .catchall {:try_start_83 .. :try_end_9e} :catchall_9f

    goto :goto_ac

    :catchall_9f
    move-exception p0

    goto/16 :goto_18c

    :catch_a2
    move-exception p0

    :try_start_a3
    const-string/jumbo v1, "OverlayManager"

    const-string/jumbo v5, "onPackageAdded internal error"

    invoke-static {v1, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ac
    :goto_ac
    monitor-exit p2
    :try_end_ad
    .catchall {:try_start_a3 .. :try_end_ad} :catchall_9f

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :goto_b0
    iget-object p0, v0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    iget-boolean p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsSuccessLoadMetadata:Z

    if-eqz p0, :cond_18b

    const-string/jumbo p0, "handleWallpaperThemeOnPackageAdded"

    const-string/jumbo p2, "SWT_OverlayManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->id:I

    const/4 v3, 0x1

    :try_start_cb
    sget-boolean v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    if-nez v4, :cond_d7

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->backgroundAllowList()Z

    move-result v4

    if-eqz v4, :cond_d7

    sput-boolean v3, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    :cond_d7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.samsung.android.shortcutbackupservice"

    const-string/jumbo v7, "com.samsung.android.shortcutbackupservice.colorthemevalidator.ValidatorService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.shortcutbackupservice.colorthemevalidator.action.ACTION_CHECK_ON_PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "PACKAGE_NAME"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "UNIQUE_ID"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    sput-boolean v3, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsValidatorAvailable:Z
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_107} :catch_108

    goto :goto_11a

    :catch_108
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t start ValidatorService, e :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11a
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->isValidated()Z

    move-result p0

    if-eqz p0, :cond_176

    iget-object p0, v0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    iget-object p2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    :try_start_124
    sget-object v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v4, 0x2280

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateTemplateMetadataFromPkg(Landroid/content/pm/PackageInfo;)V

    iget-object v0, p2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager;->writeLastPackageList()V

    new-instance v0, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

    sget-object v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p0

    if-nez p0, :cond_14f

    const/4 v2, -0x1

    goto :goto_156

    :cond_14f
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_156

    move v2, v3

    :cond_156
    :goto_156
    invoke-virtual {p2, v0, p1, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Ljava/lang/String;I)V

    const-string/jumbo p0, "overlay"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_16b} :catch_16c

    goto :goto_18b

    :catch_16c
    move-exception p0

    const-string p1, "FAILED at commit for packageAdded, e="

    const-string/jumbo p2, "SWT_WTM_Wrapper"

    invoke-static {p0, p1, p2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18b

    :cond_176
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed at handleWallpaperThemeOnPackageAdded : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18b
    :goto_18b
    return-void

    :goto_18c
    :try_start_18c
    monitor-exit p2
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_9f

    :try_start_18d
    throw p0
    :try_end_18e
    .catchall {:try_start_18d .. :try_end_18e} :catchall_18e

    :catchall_18e
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    const-string/jumbo v1, "android.intent.action.OVERLAY_CHANGED"

    const-string/jumbo v2, "android.intent.extra.REASON"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_65

    const-string/jumbo p2, "OMS#onPackageChanged "

    const-wide/32 v1, 0x4000000

    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p2, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_60

    :try_start_2e
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    if-eqz v3, :cond_59

    iget-object v3, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    iget-object v3, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, p1, p0}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_4d

    if-nez v3, :cond_59

    :try_start_40
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const/16 v4, 0x8

    invoke-virtual {v3, p0, v4, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(IILjava/lang/String;)Ljava/util/Set;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_4c
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_40 .. :try_end_4c} :catch_4f
    .catchall {:try_start_40 .. :try_end_4c} :catchall_4d

    goto :goto_59

    :catchall_4d
    move-exception p0

    goto :goto_5e

    :catch_4f
    move-exception p0

    :try_start_50
    const-string/jumbo p1, "OverlayManager"

    const-string/jumbo v0, "onPackageChanged internal error"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_59
    :goto_59
    monitor-exit p2
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_4d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_65

    :goto_5e
    :try_start_5e
    monitor-exit p2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_4d

    :try_start_5f
    throw p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    :catchall_60
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_65
    :goto_65
    return-void
.end method

.method public final onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    const-string/jumbo v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-wide/32 v3, 0x4000000

    if-eqz v1, :cond_da

    const-string/jumbo v1, "OMS#onPackageReplacing "

    :try_start_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_d5

    :try_start_2f
    iget-object v5, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v5, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5

    if-eqz v5, :cond_cd

    iget-object v5, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    iget-object v5, v5, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p1, p0}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v5
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_84

    if-nez v5, :cond_cd

    :try_start_41
    iget-object v5, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_4a

    const/4 v6, 0x6

    goto :goto_4b

    :cond_4a
    const/4 v6, 0x2

    :goto_4b
    invoke-virtual {v5, p0, v6, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(IILjava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_52
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_41 .. :try_end_52} :catch_c3
    .catchall {:try_start_41 .. :try_end_52} :catchall_84

    if-eqz p2, :cond_cd

    :try_start_54
    iget-object p2, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string/jumbo v0, "android"

    invoke-virtual {p2, p0, v0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(ILjava/lang/String;Z)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_65

    const-string v5, "/data/overlays/currentstyle"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_cd

    const-string v5, "/data/resource-cache/android-SemWT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    goto :goto_cd

    :catchall_84
    move-exception p0

    goto :goto_d3

    :catch_86
    move-exception p0

    goto :goto_bf

    :cond_88
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Landroid/util/ArrayMap;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p0, v2, p2, v5}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V

    const-string/jumbo p0, "OverlayManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "OM_BUG_FIX_LOST_OVERLAY_WHEN_UPDATE_UNINSTALL : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_be} :catch_86
    .catchall {:try_start_54 .. :try_end_be} :catchall_84

    goto :goto_cd

    :goto_bf
    :try_start_bf
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_bf .. :try_end_c2} :catch_c3
    .catchall {:try_start_bf .. :try_end_c2} :catchall_84

    goto :goto_cd

    :catch_c3
    move-exception p0

    :try_start_c4
    const-string/jumbo p1, "OverlayManager"

    const-string/jumbo p2, "onPackageReplacing internal error"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cd
    :goto_cd
    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_c4 .. :try_end_ce} :catchall_84

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_16e

    :goto_d3
    :try_start_d3
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_84

    :try_start_d4
    throw p0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d5

    :catchall_d5
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_da
    iget-object p2, v0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "com.samsung.android.themedesigner"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_135

    const-string v1, "/data/overlays/themepark/state_applied.txt"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_f5

    invoke-virtual {p2, v5, v5, v2, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V

    goto :goto_119

    :cond_f5
    new-instance v1, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    invoke-virtual {p2, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->disableThemeParkOverlays(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    :try_start_fd
    const-string/jumbo p2, "overlay"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p2

    invoke-virtual {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v1

    invoke-interface {p2, v1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_10f} :catch_110

    goto :goto_119

    :catch_110
    move-exception p2

    const-string v1, "FAILED at commit, e= "

    const-string/jumbo v6, "SWT_WTM_Wrapper"

    invoke-static {p2, v1, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_119
    new-instance p2, Ljava/io/File;

    const-string v1, "/data/overlays/themepark/icons/"

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_135

    invoke-static {p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->deleteFile(Ljava/io/File;)V

    sget-object p2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "current_sec_appicon_theme_package"

    invoke-static {p2, v1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_135
    const-string/jumbo p2, "OMS#onPackageRemoved "

    :try_start_138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v4, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p2, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_14a
    .catchall {:try_start_138 .. :try_end_14a} :catchall_175

    :try_start_14a
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    iget-object v5, v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_14f
    .catchall {:try_start_14a .. :try_end_14f} :catchall_16f

    :try_start_14f
    iget-object v6, v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    if-nez v6, :cond_15d

    monitor-exit v5

    goto :goto_161

    :catchall_15b
    move-exception p0

    goto :goto_171

    :cond_15d
    invoke-virtual {v1, v6, p0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;I)V

    monitor-exit v5
    :try_end_161
    .catchall {:try_start_14f .. :try_end_161} :catchall_15b

    :goto_161
    :try_start_161
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(ILjava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V

    monitor-exit p2
    :try_end_16b
    .catchall {:try_start_161 .. :try_end_16b} :catchall_16f

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :goto_16e
    return-void

    :catchall_16f
    move-exception p0

    goto :goto_173

    :goto_171
    :try_start_171
    monitor-exit v5
    :try_end_172
    .catchall {:try_start_171 .. :try_end_172} :catchall_15b

    :try_start_172
    throw p0

    :goto_173
    monitor-exit p2
    :try_end_174
    .catchall {:try_start_172 .. :try_end_174} :catchall_16f

    :try_start_174
    throw p0
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_175

    :catchall_175
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
