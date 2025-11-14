.class public final Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/om/IOverlayManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public static $r8$lambda$brKP91vTER4zoSOxWJ1OnJjU4jQ(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/UserPackage;)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V

    :cond_a
    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method

.method public static checkUserOrTrialPackageJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/overlays/jsonfiles/userjson"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "/"

    const/4 v3, 0x0

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v5, v3

    :goto_1c
    if-ge v5, v4, :cond_40

    aget-object v6, v1, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_40
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/overlays/jsonfiles/trialjson"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7c

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    :goto_58
    if-ge v3, v4, :cond_7c

    aget-object v5, v1, v3

    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_7c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static printJsonInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "current theme Json: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_f
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_56

    :try_start_14
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_58

    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_28

    goto :goto_1e

    :catchall_28
    move-exception p0

    goto :goto_5a

    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_58

    :try_start_2d
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_56

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_56
    move-exception p0

    goto :goto_6c

    :catchall_58
    move-exception p0

    goto :goto_63

    :goto_5a
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v1

    :try_start_5f
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_62
    throw p0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_58

    :goto_63
    :try_start_63
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception p1

    :try_start_68
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6b
    throw p0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_56

    :goto_6c
    :try_start_6c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_74
    throw p0
.end method


# virtual methods
.method public final addOverlays(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.permission.MODIFY_THEME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    if-eqz p0, :cond_39

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    new-instance v2, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p3, p2, v3}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;ILandroid/content/om/ISamsungOverlayCallback;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/om/OverlayManagerServiceExt;->notifySystemServices(ILjava/util/List;Ljava/util/List;)V

    :cond_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_12 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final applyThemeParkWallpaperColor(Landroid/net/Uri;)V
    .registers 11

    const-string/jumbo v0, "SWT_OverlayManager"

    const-string/jumbo v1, "applyThemeParkWallpaperColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v1, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    iget-boolean v2, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsSuccessLoadMetadata:Z

    if-eqz v2, :cond_15

    invoke-virtual {v1, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyThemeParkWallpaperColor(Landroid/net/Uri;)V

    return-void

    :cond_15
    new-instance v1, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget v3, v1, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->id:I

    :try_start_24
    sget-boolean v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    const/4 v5, 0x1

    if-nez v4, :cond_31

    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerService;->backgroundAllowList()Z

    move-result v4

    if-eqz v4, :cond_31

    sput-boolean v5, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    :cond_31
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.samsung.android.shortcutbackupservice"

    const-string/jumbo v8, "com.samsung.android.shortcutbackupservice.colorthemevalidator.ValidatorService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.shortcutbackupservice.colorthemevalidator.action.ACTION_CHECK_ON_APPLY_THEMEPARK"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "UNIQUE_ID"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    sput-boolean v5, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsValidatorAvailable:Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_5b} :catch_5c

    goto :goto_6e

    :catch_5c
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t start ValidatorService, e :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->isValidated()Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyThemeParkWallpaperColor(Landroid/net/Uri;)V

    goto :goto_91

    :cond_7c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed at applyThemeParkWallpaperColor, "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_91
    return-void
.end method

.method public final applyWallpaperColor(Ljava/util/List;Ljava/util/List;Z)V
    .registers 14

    const-string/jumbo v0, "SWT_OverlayManager"

    const-string/jumbo v1, "applyWallpaperColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v1, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    iget-boolean v2, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsSuccessLoadMetadata:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    invoke-virtual {v1, p1, p2, p3, v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V

    return-void

    :cond_16
    new-instance v1, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget v4, v1, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->id:I

    :try_start_25
    sget-boolean v5, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    const/4 v6, 0x1

    if-nez v5, :cond_32

    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerService;->backgroundAllowList()Z

    move-result v5

    if-eqz v5, :cond_32

    sput-boolean v6, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    :cond_32
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.samsung.android.shortcutbackupservice"

    const-string/jumbo v9, "com.samsung.android.shortcutbackupservice.colorthemevalidator.ValidatorService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.shortcutbackupservice.colorthemevalidator.action.ACTION_CHECK_ON_APPLY"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "UNIQUE_ID"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    sput-boolean v6, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsValidatorAvailable:Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5c} :catch_5d

    goto :goto_6f

    :catch_5d
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t start ValidatorService, e :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6f
    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->isValidated()Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V

    goto :goto_92

    :cond_7d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed at applyWallpaperColor, "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_92
    return-void
.end method

.method public final applyWallpaperColors(Ljava/util/List;II)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "(Deprecated) invoked applyWallpaperColors, colors="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "SWT_WTM_Wrapper"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p1, p2, p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V

    return-void
.end method

.method public final changeOverlayState(Ljava/lang/String;IZ)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.permission.MODIFY_THEME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    const/4 v1, 0x0

    if-eqz p0, :cond_65

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_63

    if-nez p1, :cond_1e

    goto :goto_61

    :cond_1e
    :try_start_1e
    new-instance v4, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v4, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p1
    :try_end_27
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1e .. :try_end_27} :catch_5d
    .catchall {:try_start_1e .. :try_end_27} :catchall_63

    :try_start_27
    invoke-static {p1}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    move-result-object v4

    if-eqz v4, :cond_61

    iget-object v5, v4, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_63

    if-nez v5, :cond_32

    goto :goto_61

    :cond_32
    :try_start_32
    invoke-virtual {v4}, Landroid/content/om/OverlayInfoExt;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v4

    invoke-virtual {v3, p2, v4, p3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z

    iget-object p3, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p3, p3, Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;->packageManagerHelper:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {p3, p2, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p3

    if-nez p3, :cond_48

    goto :goto_4c

    :cond_48
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    :goto_4c
    invoke-virtual {p0, v2, p1, v1, p2}, Lcom/android/server/om/OverlayManagerServiceExt;->handleStateUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/CriticalOverlayInfo;II)I

    move-result p0
    :try_end_50
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_32 .. :try_end_50} :catch_58
    .catchall {:try_start_32 .. :try_end_50} :catchall_63

    const/4 p1, 0x1

    if-eq p0, p1, :cond_56

    const/4 p2, 0x2

    if-ne p0, p2, :cond_61

    :cond_56
    move v1, p1

    goto :goto_61

    :catch_58
    move-exception p0

    :try_start_59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_61

    :catch_5d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_61
    :goto_61
    monitor-exit v0

    return v1

    :catchall_63
    move-exception p0

    goto :goto_67

    :cond_65
    monitor-exit v0

    return v1

    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_63

    throw p0
.end method

.method public final commit(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 9

    const-string/jumbo v0, "commit failed: "

    const-string/jumbo v1, "commit failed: "

    const-string/jumbo v2, "OMS#commit "

    const-wide/32 v3, 0x4000000

    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v2, v2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_6a

    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->executeAllRequestsLocked(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_2a
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_28

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_28
    move-exception p0

    goto :goto_68

    :catch_2a
    move-exception p1

    :try_start_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_28

    :try_start_2f
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettingsLocked()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_63

    :try_start_34
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo p0, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_63
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_34 .. :try_end_69} :catchall_28

    :try_start_69
    throw p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/om/DumpState;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v1, v3, Lcom/android/server/om/DumpState;->mUserId:I

    move v4, v0

    move v5, v1

    :goto_d
    array-length v6, p3

    if-ge v4, v6, :cond_92

    aget-object v6, p3, v4

    if-eqz v6, :cond_92

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_92

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_23

    goto :goto_92

    :cond_23
    add-int/lit8 v7, v4, 0x1

    const-string v8, "-a"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    goto :goto_8f

    :cond_2e
    const-string v8, "-h"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    const-string/jumbo p0, "dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    const-string p1, "  Print debugging information about the overlay manager."

    const-string p3, "  With optional parameter PACKAGE, limit output to the specified"

    const-string v0, "  package. With optional parameter FIELD, limit output to"

    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "  the value of that SettingsItem field. Field names are"

    const-string p1, "  case insensitive and out.println the m prefix can be omitted,"

    const-string p3, "  so the following are equivalent: mState, mstate, State, state."

    invoke-static {p2, p0, p1, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4c
    const-string v8, "--user"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7c

    array-length v5, p3

    if-lt v7, v5, :cond_5d

    const-string p0, "Error: user missing argument"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5d
    :try_start_5d
    aget-object v5, p3, v7

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_63} :catch_65

    add-int/2addr v4, p1

    goto :goto_d

    :catch_65
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Error: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_7c
    const-string v4, "--verbose"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    iput-boolean v2, v3, Lcom/android/server/om/DumpState;->mVerbose:Z

    goto :goto_8f

    :cond_87
    const-string/jumbo v4, "Unknown argument: "

    const-string v8, "; use -h for help"

    invoke-static {p2, v4, v6, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8f
    move v4, v7

    goto/16 :goto_d

    :cond_92
    :goto_92
    array-length v6, p3

    if-ge v4, v6, :cond_134

    aget-object v6, p3, v4

    add-int/2addr v4, v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_30a

    :goto_a2
    move p1, v1

    goto/16 :goto_11e

    :sswitch_a5
    const-string/jumbo p1, "basecodepath"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    goto :goto_a2

    :cond_af
    const/16 p1, 0x9

    goto/16 :goto_11e

    :sswitch_b3
    const-string/jumbo p1, "packagename"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bd

    goto :goto_a2

    :cond_bd
    const/16 p1, 0x8

    goto/16 :goto_11e

    :sswitch_c1
    const-string/jumbo p1, "isenabled"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cb

    goto :goto_a2

    :cond_cb
    const/4 p1, 0x7

    goto :goto_11e

    :sswitch_cd
    const-string/jumbo p1, "state"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d7

    goto :goto_a2

    :cond_d7
    const/4 p1, 0x6

    goto :goto_11e

    :sswitch_d9
    const-string/jumbo p1, "category"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e3

    goto :goto_a2

    :cond_e3
    const/4 p1, 0x5

    goto :goto_11e

    :sswitch_e5
    const-string/jumbo p1, "ismutable"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ef

    goto :goto_a2

    :cond_ef
    const/4 p1, 0x4

    goto :goto_11e

    :sswitch_f1
    const-string/jumbo p1, "userid"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fb

    goto :goto_a2

    :cond_fb
    const/4 p1, 0x3

    goto :goto_11e

    :sswitch_fd
    const-string/jumbo v7, "priority"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11e

    goto :goto_a2

    :sswitch_107
    const-string/jumbo p1, "targetpackagename"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_111

    goto :goto_a2

    :cond_111
    move p1, v2

    goto :goto_11e

    :sswitch_113
    const-string/jumbo p1, "targetoverlayablename"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11d

    goto :goto_a2

    :cond_11d
    move p1, v0

    :cond_11e
    :goto_11e
    packed-switch p1, :pswitch_data_334

    invoke-static {v6}, Landroid/content/om/OverlayIdentifier;->fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    goto :goto_134

    :pswitch_132  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    iput-object v6, v3, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    :cond_134
    :goto_134
    iget-object p1, v3, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    if-nez p1, :cond_14d

    array-length p1, p3

    if-ge v4, p1, :cond_14d

    aget-object p1, p3, v4

    invoke-static {p1}, Landroid/content/om/OverlayIdentifier;->fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v3, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    :cond_14d
    const-string/jumbo p1, "dump"

    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {p3, v4, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v5, v1, :cond_165

    const-string/jumbo p1, "dump"

    invoke-static {v5, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result v5

    :cond_165
    iput v5, v3, Lcom/android/server/om/DumpState;->mUserId:I

    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p1, p1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_16c
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p3, p3, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {p3, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    iget-object p3, v3, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    if-nez p3, :cond_182

    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p3, p3, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {p3, p2, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    goto :goto_182

    :catchall_17f
    move-exception p0

    goto/16 :goto_308

    :cond_182
    :goto_182
    monitor-exit p1
    :try_end_183
    .catchall {:try_start_16c .. :try_end_183} :catchall_17f

    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p1, p1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "\n Color palette history :"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/om/wallpapertheme/ThemeUtil;->getLogText()Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    sget-boolean p3, Lcom/samsung/android/rune/ResRune;->THEME_WALLPAPER_THEMING_DEBUG:Z

    if-eqz p3, :cond_1ae

    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "<ColorPalette Information>"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-virtual {p3, p2}, Landroid/content/om/wallpapertheme/MetaDataManager;->dump(Ljava/io/PrintWriter;)V

    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    invoke-virtual {p1, p2}, Landroid/content/om/wallpapertheme/TemplateManager;->dump(Ljava/io/PrintWriter;)V

    :cond_1ae
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "ThemeFramework Information:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "/data/overlays/main_packages"

    const-string/jumbo v1, "current_sec_active_themepackage"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "current_sec_appicon_theme_package"

    invoke-static {p1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wallpapertheme_state"

    invoke-static {p1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/overlays/themepark/state_applied.txt"

    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v6, "wallpapertheme_color_isgray"

    invoke-static {p1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "wallpapertheme_color"

    invoke-static {p1, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "colortheme_app_icon"

    invoke-static {p1, v8, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "current_theme_package : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "current_app_icon_package : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "wallpapertheme_state : "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "themepark theme is applied : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "wallpapertheme_color_isgray : "

    invoke-static {p2, v3, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_285

    :try_start_240
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_285

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v3

    :goto_25c
    if-ge v0, v5, :cond_26f

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v2

    goto :goto_25c

    :catch_26d
    move-exception v0

    goto :goto_29b

    :cond_26f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpapertheme_color(toHex) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2b0

    :cond_285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wallpapertheme_color : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_29a} :catch_26d

    goto :goto_2b0

    :goto_29b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wallpapertheme_color : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2b0
    const-string/jumbo v0, "colortheme_app_icon : "

    invoke-static {p2, v0, p1}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    if-eqz v1, :cond_2e4

    :try_start_2b8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "available theme content at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$1;->dumpFilesInDir(Ljava/io/File;Ljava/io/PrintWriter;)V

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService$1;->checkUserOrTrialPackageJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_307

    invoke-static {p2, p0}, Lcom/android/server/om/OverlayManagerService$1;->printJsonInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_307

    :cond_2e4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "available theme content at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_302
    .catch Ljava/lang/Exception; {:try_start_2b8 .. :try_end_302} :catch_303

    goto :goto_307

    :catch_303
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_307
    :goto_307
    return-void

    :goto_308
    :try_start_308
    monitor-exit p1
    :try_end_309
    .catchall {:try_start_308 .. :try_end_309} :catchall_17f

    throw p0

    :sswitch_data_30a
    .sparse-switch
        -0x685a1e7c -> :sswitch_113
        -0x4a674a60 -> :sswitch_107
        -0x4577865c -> :sswitch_fd
        -0x31d4cdda -> :sswitch_f1
        -0x3188d944 -> :sswitch_e5
        0x302bcfe -> :sswitch_d9
        0x68ac491 -> :sswitch_cd
        0x1a483ad7 -> :sswitch_c1
        0x36391bd1 -> :sswitch_b3
        0x64f6f963 -> :sswitch_a5
    .end sparse-switch

    :pswitch_data_334
    .packed-switch 0x0
        :pswitch_132  #00000000
        :pswitch_132  #00000001
        :pswitch_132  #00000002
        :pswitch_132  #00000003
        :pswitch_132  #00000004
        :pswitch_132  #00000005
        :pswitch_132  #00000006
        :pswitch_132  #00000007
        :pswitch_132  #00000008
        :pswitch_132  #00000009
    .end packed-switch
.end method

.method public final dumpFilesInDir(Ljava/io/File;Ljava/io/PrintWriter;)V
    .registers 10

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_68

    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_68

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1000

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_65

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_65

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "   "

    if-eqz v3, :cond_59

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "("

    const-string v6, ")"

    invoke-static {v5, v2, v4, v3, v6}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_65

    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "()"

    invoke-static {p2, v2, v4, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_65
    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_68
    return-void
.end method

.method public final enableWithConstraints(Ljava/lang/String;ILjava/util/List;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/android/server/om/OverlayManagerService$1;->setEnabled(ILjava/lang/String;ZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_7
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_d
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_72

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/android/server/om/OverlayActorEnforcer;->isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    move-result-object p0

    sget-object v1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-ne p0, v1, :cond_22

    return-void

    :cond_22
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    const-string/jumbo v2, "UID"

    const-string v3, " is not allowed to call "

    const-string v4, " for "

    invoke-static {p2, v2, v3, p3, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_38

    const-string p3, ""

    goto :goto_3e

    :cond_38
    const-string p3, " in "

    invoke-static {v1, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_3e
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " because "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "OverlayManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unable to retrieve overlay information for "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final executeAllRequestsLocked(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 18

    move-object/from16 v0, p0

    const-string/jumbo v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "commit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v1, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_55

    invoke-virtual {v3}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {v3}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayManagerTransaction$Request;

    if-eqz v1, :cond_47

    iget-object v1, v1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    :goto_48
    if-eqz v1, :cond_55

    const-string/jumbo v6, "SemWT_"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    move v1, v5

    goto :goto_56

    :cond_55
    move v1, v4

    :goto_56
    const/4 v6, 0x2

    if-eqz v1, :cond_e1

    invoke-virtual {v3}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/om/OverlayManagerTransaction$Request;

    iget-object v8, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    if-eqz v7, :cond_6d

    iget v9, v7, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    if-ne v9, v6, :cond_6d

    move v9, v5

    goto :goto_6e

    :cond_6d
    move v9, v4

    :goto_6e
    iget-object v10, v8, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_71
    iget-object v11, v8, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v11}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :cond_7e
    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v14}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "com.android.systemui"

    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v2}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string/jumbo v2, "neutral"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c3

    const-string/jumbo v2, "accent"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c3

    if-nez v9, :cond_7e

    const-string/jumbo v2, "dynamic"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7e

    goto :goto_c3

    :catchall_c1
    move-exception v0

    goto :goto_df

    :cond_c3
    :goto_c3
    iget-object v2, v8, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v2, v13}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v12

    goto :goto_7e

    :cond_d2
    monitor-exit v10
    :try_end_d3
    .catchall {:try_start_71 .. :try_end_d3} :catchall_c1

    if-eqz v7, :cond_e2

    iget v2, v7, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    if-ne v2, v5, :cond_e2

    iget-object v2, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerService;->disableDynamicContrast()V

    goto :goto_e2

    :goto_df
    :try_start_df
    monitor-exit v10
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_c1

    throw v0

    :cond_e1
    const/4 v12, 0x0

    :cond_e2
    :goto_e2
    invoke-virtual {v3}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_e7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/om/OverlayManagerTransaction$Request;

    const-string/jumbo v8, "unsupported request: "

    const-string/jumbo v9, "Transaction contains a null request"

    invoke-static {v7, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v9, v7, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    const-string/jumbo v10, "Transaction overlay identifier must be non-null"

    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    iget v10, v7, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v11, 0x3

    if-eq v10, v6, :cond_153

    if-ne v10, v11, :cond_110

    goto :goto_153

    :cond_110
    iget v9, v7, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {v7}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result v9

    if-eqz v1, :cond_149

    iget-object v10, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v10, v10, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v13, v7, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_125
    iget-object v10, v10, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v13, v9}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v10
    :try_end_12b
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_125 .. :try_end_12b} :catch_12c

    goto :goto_12d

    :catch_12c
    const/4 v10, 0x0

    :goto_12d
    if-nez v10, :cond_149

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "OverlayInfo is not founded, skip request "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "SWT_OverlayManager"

    invoke-static {v8, v7}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_146
    const/4 v10, 0x0

    goto/16 :goto_209

    :cond_149
    iget-object v10, v7, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v7}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v9, v10, v13}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    goto :goto_18a

    :cond_153
    :goto_153
    iget v10, v7, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    const/4 v13, -0x1

    if-ne v10, v13, :cond_22e

    const/16 v10, 0x7d0

    if-eq v9, v10, :cond_213

    iget-object v10, v7, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v10}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_189

    iget-object v14, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v14, v14, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_16b
    iget-object v14, v14, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v14, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14
    :try_end_171
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_171} :catch_172

    goto :goto_173

    :catch_172
    const/4 v14, 0x0

    :goto_173
    invoke-static {v14, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17a

    goto :goto_189

    :cond_17a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "UID "

    const-string v2, " does not own packageName "

    invoke-static {v9, v1, v2, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_189
    :goto_189
    move v9, v13

    :goto_18a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_18e
    iget v10, v7, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    if-eqz v10, :cond_1e3

    if-eq v10, v5, :cond_1d6

    if-eq v10, v6, :cond_1ba

    if-ne v10, v11, :cond_1a8

    iget-object v8, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v8, v8, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v7, v7, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v8, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;

    move-result-object v7
    :try_end_1a2
    .catchall {:try_start_18e .. :try_end_1a2} :catchall_1a6

    :goto_1a2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_146

    :catchall_1a6
    move-exception v0

    goto :goto_20f

    :cond_1a8
    :try_start_1a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ba
    iget-object v7, v7, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "fabricated_overlay"

    const-class v9, Landroid/os/FabricatedOverlayInternal;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/FabricatedOverlayInternal;

    const-string/jumbo v8, "no fabricated overlay attached to request"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v8, v8, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v8, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;

    move-result-object v7

    goto :goto_1a2

    :cond_1d6
    iget-object v8, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v8, v8, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v10, v7, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    iget-object v7, v7, Landroid/content/om/OverlayManagerTransaction$Request;->constraints:Ljava/util/List;

    invoke-virtual {v8, v10, v4, v9, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Ljava/util/Set;

    move-result-object v7

    goto :goto_1a2

    :cond_1e3
    iget-object v8, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v8, v8, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v10, v7, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    iget-object v11, v7, Landroid/content/om/OverlayManagerTransaction$Request;->constraints:Ljava/util/List;

    invoke-virtual {v8, v10, v5, v9, v11}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Ljava/util/Set;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v10, v8}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v8

    iget-object v11, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v11, v11, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v7, v7, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v11, v7, v9}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7
    :try_end_206
    .catchall {:try_start_1a8 .. :try_end_206} :catchall_1a6

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_209
    invoke-static {v3, v7}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    goto/16 :goto_e7

    :goto_20f
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_213
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    const-string v2, "202768292"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-root shell cannot fabricate overlays"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unsupported for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24e
    invoke-static {v12}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_25a
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_25f
    .catchall {:try_start_25a .. :try_end_25f} :catchall_263

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_263
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final getAllOverlays(I)Ljava/util/Map;
    .registers 6

    const-string/jumbo v0, "OMS#getAllOverlays "

    const-wide/32 v1, 0x4000000

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v0, "getAllOverlays"

    invoke-static {p1, v0}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_33

    :try_start_21
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_30

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_30
    move-exception p0

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final getAllOverlaysInCategory(II)[Landroid/content/om/OverlayInfoExt;
    .registers 6

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.permission.MODIFY_THEME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    if-eqz p0, :cond_20

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceExt;->getAllOverlaysInCategory(II)[Landroid/content/om/OverlayInfoExt;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    goto :goto_25

    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1e

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/content/om/OverlayInfoExt;

    return-object p0

    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1e

    throw p0
.end method

.method public final getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 6

    const-wide/32 v0, 0x4000000

    :try_start_3
    const-string/jumbo v2, "OMS#getDefaultOverlayPackages"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.MODIFY_THEME_OVERLAY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2d

    :try_start_1a
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v4, v4, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_32

    :try_start_1f
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2f

    :try_start_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_2d
    move-exception p0

    goto :goto_37

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    :try_start_33
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_2d

    :goto_37
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final getLastPalette(Ljava/util/List;Ljava/util/List;)Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readLastPalette()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p0, p1, p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->splitPalette(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final getOverlayForPath(Ljava/lang/String;I)Landroid/content/om/OverlayInfoExt;
    .registers 7

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.permission.MODIFY_THEME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    if-eqz p0, :cond_52

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_36
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    iget-object v3, v1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {v1}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    move-result-object v2

    :cond_4e
    monitor-exit v0

    return-object v2

    :catchall_50
    move-exception p0

    goto :goto_54

    :cond_52
    monitor-exit v0

    return-object v2

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_12 .. :try_end_55} :catchall_50

    throw p0
.end method

.method public final getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 4

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$1;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .registers 8

    const-string/jumbo v0, "OMS#getOverlayInfo "

    const/4 v1, 0x0

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_45

    :cond_d
    const-wide/32 v2, 0x4000000

    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v0, "getOverlayInfo"

    invoke-static {p2, v0}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_40

    :try_start_2b
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_3d

    :try_start_32
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v1
    :try_end_38
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_32 .. :try_end_38} :catch_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_3d

    :catch_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_3d

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :catchall_3d
    move-exception p0

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_45
    :goto_45
    return-object v1
.end method

.method public final getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 6

    const-string/jumbo v0, "OMS#getOverlayInfosForTarget "

    if-nez p1, :cond_8

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_8
    const-wide/32 v1, 0x4000000

    :try_start_b
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v0, "getOverlayInfosForTarget"

    invoke-static {p2, v0}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_30

    :try_start_1e
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final getOverlaysForTarget(Ljava/lang/String;II)[Landroid/content/om/OverlayInfoExt;
    .registers 7

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.permission.MODIFY_THEME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    const/4 v1, 0x0

    if-eqz p0, :cond_4e

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/om/OverlayInfo;

    invoke-static {p3, p2}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExtOfCategory(Landroid/content/om/OverlayInfo;I)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {p3}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_42
    new-array p0, v1, [Landroid/content/om/OverlayInfoExt;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/om/OverlayInfoExt;

    monitor-exit v0

    return-object p0

    :catchall_4c
    move-exception p0

    goto :goto_52

    :cond_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_4c

    new-array p0, v1, [Landroid/content/om/OverlayInfoExt;

    return-object p0

    :goto_52
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4c

    throw p0
.end method

.method public final getPartitionOrder()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfig;->getPartitionOrder()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getThemeParkOverlayNames(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "getAllOverlays"

    invoke-static {v0, v1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, v0}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getWallpaperColors()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    invoke-virtual {p0}, Landroid/content/om/wallpapertheme/ThemePalette;->getPaletteSS()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invalidateCachesForOverlay(Ljava/lang/String;I)V
    .registers 8

    const-string/jumbo v0, "invalidate caches for overlay \'"

    if-nez p1, :cond_6

    goto :goto_47

    :cond_6
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v1, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "invalidateCachesForOverlay"

    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "invalidateCachesForOverlay"

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1c
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_4a

    :try_start_21
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    :try_end_28
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_21 .. :try_end_28} :catch_2b
    .catchall {:try_start_21 .. :try_end_28} :catchall_29

    goto :goto_43

    :catchall_29
    move-exception p0

    goto :goto_48

    :catch_2b
    move-exception p0

    :try_start_2c
    const-string/jumbo p1, "OverlayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' failed"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    monitor-exit p2
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_29

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_47
    return-void

    :goto_48
    :try_start_48
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_29

    :try_start_49
    throw p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isDefaultPartitionOrder()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfig;->isDefaultPartitionOrder()Z

    move-result p0

    return p0
.end method

.method public final notifyValidatorListener(IZ)V
    .registers 7

    sget-object p0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->mValidatorListeners:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_8
    if-ge v1, v0, :cond_20

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/om/OverlayManagerService$ValidatorListener;

    iget v3, v2, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->id:I

    if-ne v3, p1, :cond_8

    iput-boolean p2, v2, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->isValidated:Z

    iget-object p1, v2, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->validationLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_20

    :catchall_1e
    move-exception p1

    goto :goto_22

    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1e

    throw p1
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/om/OverlayManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/om/OverlayManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/om/OverlayManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final readLastPalette()Ljava/util/List;
    .registers 3

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readLastPalette()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    const/16 v1, 0x41

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeOverlays(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.permission.MODIFY_THEME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    if-eqz p0, :cond_1f

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceExt;->removeOverlaysInternal(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/om/OverlayManagerServiceExt;->notifySystemServices(ILjava/util/List;Ljava/util/List;)V

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final replaceOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.permission.MODIFY_THEME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/om/OverlayManagerServiceExt;->replaceOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V

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
    .catchall {:try_start_12 .. :try_end_21} :catchall_1c

    throw p0
.end method

.method public final setEnabled(ILjava/lang/String;ZLjava/util/List;)Z
    .registers 12

    const-string/jumbo v0, "OMS#setEnabled "

    const/4 v1, 0x0

    if-nez p2, :cond_7

    return v1

    :cond_7
    const-string/jumbo v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setEnabled packageName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", enable= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x4000000

    :try_start_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "setEnabled"

    invoke-static {p1, p2}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "setEnabled"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_61
    .catchall {:try_start_34 .. :try_end_61} :catchall_7a

    :try_start_61
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_88

    :try_start_66
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v6, v0, p3, p1, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_71
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_66 .. :try_end_71} :catch_7e
    .catchall {:try_start_66 .. :try_end_71} :catchall_7c

    :try_start_71
    monitor-exit p2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_7c

    :try_start_72
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_7a

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_7a
    move-exception p0

    goto :goto_8d

    :catchall_7c
    move-exception p0

    goto :goto_86

    :catch_7e
    :try_start_7e
    monitor-exit p2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7c

    :try_start_7f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_7a

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :goto_86
    :try_start_86
    monitor-exit p2
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_7c

    :try_start_87
    throw p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception p0

    :try_start_89
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_7a

    :goto_8d
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setEnabled(Ljava/lang/String;ZI)Z
    .registers 5

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService$1;->setEnabled(ILjava/lang/String;ZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 10

    const-string/jumbo v0, "OMS#setEnabledExclusive "

    const/4 v1, 0x0

    if-eqz p1, :cond_9b

    if-nez p2, :cond_a

    goto/16 :goto_9b

    :cond_a
    const-string/jumbo v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setEnabledExclusive packageName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", enable= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x4000000

    :try_start_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v3, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance p2, Landroid/content/om/OverlayIdentifier;

    invoke-direct {p2, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "setEnabledExclusive"

    invoke-static {p3, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p3, "setEnabledExclusive"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_64
    .catchall {:try_start_37 .. :try_end_64} :catchall_84

    :try_start_64
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p3, p3, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_92

    :try_start_69
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance p2, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_7b
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_69 .. :try_end_7b} :catch_88
    .catchall {:try_start_69 .. :try_end_7b} :catchall_86

    :try_start_7b
    monitor-exit p3
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_86

    :try_start_7c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_84

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_84
    move-exception p0

    goto :goto_97

    :catchall_86
    move-exception p0

    goto :goto_90

    :catch_88
    :try_start_88
    monitor-exit p3
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_86

    :try_start_89
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_84

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :goto_90
    :try_start_90
    monitor-exit p3
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_86

    :try_start_91
    throw p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    :catchall_92
    move-exception p0

    :try_start_93
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_84

    :goto_97
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_9b
    :goto_9b
    return v1
.end method

.method public final setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .registers 11

    const-string/jumbo v0, "OMS#setEnabledExclusiveInCategory "

    const/4 v1, 0x0

    if-nez p1, :cond_7

    return v1

    :cond_7
    const-wide/32 v2, 0x4000000

    :try_start_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "setEnabledExclusiveInCategory"

    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "setEnabledExclusiveInCategory"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_47

    :try_start_27
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_55

    :try_start_2c
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v6, v6, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v0, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v0, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_3f
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2c .. :try_end_3f} :catch_4b
    .catchall {:try_start_2c .. :try_end_3f} :catchall_49

    :try_start_3f
    monitor-exit p2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_49

    :try_start_40
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_47

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v7

    :catchall_47
    move-exception p0

    goto :goto_5a

    :catchall_49
    move-exception p0

    goto :goto_53

    :catch_4b
    :try_start_4b
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_49

    :try_start_4c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_47

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :goto_53
    :try_start_53
    monitor-exit p2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_49

    :try_start_54
    throw p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p0

    :try_start_56
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_47

    :goto_5a
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setHighestPriority(Ljava/lang/String;I)Z
    .registers 10

    const-string/jumbo v0, "OMS#setHighestPriority "

    const/4 v1, 0x0

    if-nez p1, :cond_7

    return v1

    :cond_7
    const-wide/32 v2, 0x4000000

    :try_start_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "setHighestPriority"

    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "setHighestPriority"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_40

    :try_start_27
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_4e

    :try_start_2c
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v6, v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_37
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2c .. :try_end_37} :catch_44
    .catchall {:try_start_2c .. :try_end_37} :catchall_42

    :try_start_37
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_42

    :try_start_38
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_40
    move-exception p0

    goto :goto_53

    :catchall_42
    move-exception p0

    goto :goto_4c

    :catch_44
    :try_start_44
    monitor-exit p2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_42

    :try_start_45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :goto_4c
    :try_start_4c
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_42

    :try_start_4d
    throw p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p0

    :try_start_4f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_40

    :goto_53
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setLowestPriority(Ljava/lang/String;I)Z
    .registers 10

    const-string/jumbo v0, "OMS#setLowestPriority "

    const/4 v1, 0x0

    if-nez p1, :cond_7

    return v1

    :cond_7
    const-wide/32 v2, 0x4000000

    :try_start_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "setLowestPriority"

    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "setLowestPriority"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_47

    :try_start_27
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_55

    :try_start_2c
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v6, v6, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v6, v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v0, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_3e
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2c .. :try_end_3e} :catch_4b
    .catchall {:try_start_2c .. :try_end_3e} :catchall_49

    :try_start_3e
    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_49

    :try_start_3f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_47

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_47
    move-exception p0

    goto :goto_5a

    :catchall_49
    move-exception p0

    goto :goto_53

    :catch_4b
    :try_start_4b
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_49

    :try_start_4c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_47

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :goto_53
    :try_start_53
    monitor-exit p2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_49

    :try_start_54
    throw p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p0

    :try_start_56
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_47

    :goto_5a
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    const-string/jumbo v0, "OMS#setPriority "

    const/4 v1, 0x0

    if-eqz p1, :cond_75

    if-nez p2, :cond_9

    goto :goto_75

    :cond_9
    const-wide/32 v2, 0x4000000

    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/content/om/OverlayIdentifier;

    invoke-direct {p1, p2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "setPriority"

    invoke-static {p3, p2}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result p2

    const-string/jumbo p3, "setPriority"

    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_5e

    :try_start_3e
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object p3, p3, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_6c

    :try_start_43
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v6, v6, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v6, v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance p2, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_55
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_43 .. :try_end_55} :catch_62
    .catchall {:try_start_43 .. :try_end_55} :catchall_60

    :try_start_55
    monitor-exit p3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_60

    :try_start_56
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5e

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_5e
    move-exception p0

    goto :goto_71

    :catchall_60
    move-exception p0

    goto :goto_6a

    :catch_62
    :try_start_62
    monitor-exit p3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_60

    :try_start_63
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_5e

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :goto_6a
    :try_start_6a
    monitor-exit p3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_60

    :try_start_6b
    throw p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p0

    :try_start_6d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_5e

    :goto_71
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_75
    :goto_75
    return v1
.end method
