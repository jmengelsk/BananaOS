.class public final Lcom/android/server/webkit/WebViewUpdateServiceImpl2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAnyWebViewInstalled:Z

.field public mAttemptedToRepairBefore:Z

.field public mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field public final mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

.field public final mLock:Ljava/lang/Object;

.field public mMinimumVersionCode:J

.field public mNumRelroCreationsFinished:I

.field public mNumRelroCreationsStarted:I

.field public final mSystemInterface:Lcom/android/server/webkit/SystemImpl;

.field public mWebViewPackageDirty:Z


# direct methods
.method public constructor <init>(Lcom/android/server/webkit/SystemImpl;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object p1, p1, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    array-length v2, p1

    :goto_21
    if-ge v0, v2, :cond_2e

    aget-object v3, p1, v0

    iget-boolean v4, v3, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v4, :cond_2b

    move-object v1, v3

    goto :goto_2e

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2e
    :goto_2e
    if-eqz v1, :cond_33

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    return-void

    :cond_33
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo p1, "No available by default WebView Provider."

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .registers 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UserPackage;

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1c
    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final attemptRepair()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    if-eqz v1, :cond_c

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto/16 :goto_b4

    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_9

    const-string/jumbo v0, "WebViewUpdateServiceImpl2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No provider available for all users, trying to install and enable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    iget-object v5, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/content/pm/PackageInstaller;->installExistingPackage(Ljava/lang/String;ILandroid/content/IntentSender;)V

    goto :goto_3b

    :cond_5a
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object p0, p0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_88
    invoke-virtual {v4, p0, v3, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_72

    :catch_8c
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Tried to enable "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "SystemImpl"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :cond_b3
    return-void

    :goto_b4
    :try_start_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_9

    throw p0
.end method

.method public final checkIfRelrosDoneLocked()V
    .registers 3

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_14
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_d .. :try_end_14} :catch_15

    return-void

    :catch_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    goto :goto_1e

    :cond_19
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v1, v0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    const-string v2, "  WebView packages:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_b0

    aget-object v5, v1, v4

    iget-object v6, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    iget-object v7, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v8, 0x4004c0

    invoke-static {v6, v7, v8}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/UserPackage;

    invoke-virtual {v6}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_38

    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "    %s is NOT installed."

    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_ac

    :cond_38
    invoke-virtual {p0, v5, v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v7

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v10, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    invoke-static {v10, v9}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_7f

    iget-object v7, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v5, v8}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v5

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_6e

    const-string v5, ""

    goto :goto_71

    :cond_6e
    const-string/jumbo v5, "NOT"

    :goto_71
    filled-new-array {v6, v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "    Valid package %s (%s) is %s installed/enabled for all users"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ac

    :cond_7f
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    if-eq v7, v6, :cond_9c

    const/4 v6, 0x2

    if-eq v7, v6, :cond_98

    const/4 v6, 0x3

    if-eq v7, v6, :cond_95

    const/4 v6, 0x4

    if-eq v7, v6, :cond_91

    const-string/jumbo v6, "Unexcepted validity-reason"

    goto :goto_9f

    :cond_91
    const-string/jumbo v6, "No WebView-library manifest flag"

    goto :goto_9f

    :cond_95
    const-string v6, "Incorrect signature"

    goto :goto_9f

    :cond_98
    const-string/jumbo v6, "Version code too low"

    goto :goto_9f

    :cond_9c
    const-string/jumbo v6, "Not compatible with this OS version"

    :goto_9f
    filled-new-array {v5, v9, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "    Invalid package %s (%s), reason: %s"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_ac
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    :cond_b0
    return-void
.end method

.method public final findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 10

    const-string/jumbo v0, "webview.value_find_preferred_webview_package_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v1, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "webview_provider"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    array-length v5, v2

    if-ge v4, v5, :cond_2c

    aget-object v5, v2, v4

    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    aget-object v2, v2, v4

    goto :goto_2d

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    const v4, 0x4004c0

    const-string v5, ") not found"

    const-string/jumbo v6, "WebViewUpdateServiceImpl2"

    if-eqz v2, :cond_5e

    :try_start_37
    iget-object v7, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v8

    if-nez v8, :cond_5e

    iget-object v8, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v2, v4}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v1
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_55} :catch_58

    if-eqz v1, :cond_5e

    return-object v7

    :catch_58
    const-string/jumbo v2, "User chosen WebView package ("

    invoke-static {v2, v1, v5, v6}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    :try_start_5e
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v0, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v1

    if-nez v1, :cond_75

    return-object v0

    :cond_75
    const-string/jumbo v0, "webview.value_default_webview_package_invalid_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5e .. :try_end_7b} :catch_7c

    goto :goto_8a

    :catch_7c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Default WebView package ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v5, v6}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8a
    const-string/jumbo v0, "webview.value_webview_not_usable_for_all_users_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    new-instance p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException;

    const-string v0, "Could not find a loadable WebView package"

    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_42

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/webkit/SystemImpl;->pinWebviewIfRequired(Landroid/content/pm/ApplicationInfo;)V

    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    invoke-static {p1}, Landroid/webkit/WebViewFactory;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    const-string/jumbo v1, "webview.value_on_webview_provider_changed_counter"

    invoke-static {v1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const-string/jumbo p1, "webview.value_on_webview_provider_changed_with_default_package_counter"

    invoke-static {p1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_50

    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->checkIfRelrosDoneLocked()V

    goto :goto_44

    :cond_42
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_3c

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/webkit/WebViewUpdateServiceImpl2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_50
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_3c

    throw p0
.end method

.method public final packageStateChanged(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v0, v0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_8e

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 p1, 0x0

    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_29

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_21
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_17 .. :try_end_21} :catch_25
    .catchall {:try_start_17 .. :try_end_21} :catchall_22

    goto :goto_2a

    :catchall_22
    move-exception p0

    goto/16 :goto_88

    :catch_25
    move-exception v0

    move-object v1, p1

    :goto_27
    move v3, v2

    goto :goto_56

    :cond_29
    move-object v1, p1

    :goto_2a
    :try_start_2a
    iget-object v3, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    iget-object v3, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_3e
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_2a .. :try_end_3e} :catch_43
    .catchall {:try_start_2a .. :try_end_3e} :catchall_22

    if-nez v3, :cond_41

    goto :goto_45

    :cond_41
    move v3, v2

    goto :goto_46

    :catch_43
    move-exception v0

    goto :goto_27

    :cond_45
    :goto_45
    const/4 v3, 0x1

    :goto_46
    :try_start_46
    iget-object v4, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v3, :cond_72

    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_51
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_46 .. :try_end_51} :catch_52
    .catchall {:try_start_46 .. :try_end_51} :catchall_22

    goto :goto_72

    :catch_52
    move-exception v0

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_56
    :try_start_56
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const-string/jumbo p1, "WebViewUpdateServiceImpl2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find valid WebView package to create relro with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v3

    move v3, v2

    move v2, v7

    :cond_72
    :goto_72
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    move-result p1

    monitor-exit v5
    :try_end_77
    .catchall {:try_start_56 .. :try_end_77} :catchall_22

    if-eqz v3, :cond_82

    if-nez v2, :cond_82

    if-eqz v1, :cond_82

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/webkit/SystemImpl;->killPackageDependents(Ljava/lang/String;)V

    :cond_82
    if-eqz p1, :cond_8e

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V

    goto :goto_8e

    :goto_88
    :try_start_88
    monitor-exit v5
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_22

    throw p0

    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_8e
    :goto_8e
    return-void
.end method

.method public final shouldTriggerRepairLocked()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    if-eqz v0, :cond_5

    goto :goto_2c

    :cond_5
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v2, 0x4004c0

    invoke-static {p0, v0, v2}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method public final updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 9

    const-string v0, "Couldn\'t find WebView package to use "

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_1a

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v3, v3, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "webview_provider"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_65

    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_30

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_29
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_1a .. :try_end_29} :catch_2e
    .catchall {:try_start_1a .. :try_end_29} :catchall_18

    if-nez v0, :cond_2c

    goto :goto_30

    :cond_2c
    move v0, v4

    goto :goto_31

    :catch_2e
    move-exception p1

    goto :goto_4e

    :cond_30
    :goto_30
    const/4 v0, 0x1

    :goto_31
    if-eqz v0, :cond_36

    :try_start_33
    invoke-virtual {p0, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    :cond_36
    if-nez p1, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    move-result v4

    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_18

    if-eqz v0, :cond_48

    if-eqz v2, :cond_48

    iget-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/webkit/SystemImpl;->killPackageDependents(Ljava/lang/String;)V

    :cond_48
    if-eqz v4, :cond_4d

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V

    :cond_4d
    return-object v3

    :goto_4e
    const/4 v2, 0x0

    :try_start_4f
    iput-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const-string/jumbo p0, "WebViewUpdateServiceImpl2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :goto_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_4f .. :try_end_66} :catchall_18

    throw p0
.end method

.method public final validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    invoke-static {v1}, Landroid/webkit/WebViewFactoryProvider;->isCompatibleImplementationPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_e

    return v4

    :cond_e
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    const/4 v11, 0x0

    if-lez v3, :cond_1c

    goto :goto_52

    :cond_1c
    iget-object v3, v2, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    array-length v7, v3

    const-wide/16 v12, -0x1

    move v8, v11

    :goto_22
    if-ge v8, v7, :cond_4f

    aget-object v14, v3, v8

    iget-boolean v15, v14, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v15, :cond_48

    :try_start_2a
    iget-object v14, v14, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v15, v2, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_32} :catch_48

    move-wide/from16 v16, v9

    const/high16 v9, 0x200000

    :try_start_36
    invoke-virtual {v15, v14, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_36 .. :try_end_3e} :catch_4a

    cmp-long v14, v12, v16

    if-ltz v14, :cond_46

    cmp-long v14, v9, v12

    if-gez v14, :cond_4a

    :cond_46
    move-wide v12, v9

    goto :goto_4a

    :catch_48
    :cond_48
    move-wide/from16 v16, v9

    :catch_4a
    :cond_4a
    :goto_4a
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v9, v16

    goto :goto_22

    :cond_4f
    iput-wide v12, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    move-wide v7, v12

    :goto_52
    const-wide/32 v2, 0x186a0

    div-long/2addr v5, v2

    div-long/2addr v7, v2

    cmp-long v0, v5, v7

    if-ltz v0, :cond_5c

    goto :goto_64

    :cond_5c
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_64

    const/4 v0, 0x2

    return v0

    :cond_64
    :goto_64
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_6b

    goto :goto_8e

    :cond_6b
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_8e

    :cond_74
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-eq v0, v4, :cond_7a

    goto :goto_9c

    :cond_7a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    move v3, v11

    :goto_80
    if-ge v3, v2, :cond_9c

    aget-object v4, v0, v3

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v11

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    :goto_8e
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_98

    const/4 v0, 0x4

    return v0

    :cond_98
    return v11

    :cond_99
    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    :cond_9c
    :goto_9c
    const/4 v0, 0x3

    return v0
.end method

.method public final waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .registers 12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_e
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_20

    iget v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v5, v8, :cond_20

    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    if-eqz v5, :cond_20

    :goto_1e
    move v5, v6

    goto :goto_21

    :cond_20
    move v5, v7

    :goto_21
    if-nez v5, :cond_46

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v2
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_35

    cmp-long v10, v8, v0

    if-ltz v10, :cond_2d

    goto :goto_46

    :cond_2d
    :try_start_2d
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    sub-long v8, v0, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_34} :catch_37
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_97

    :catch_37
    :goto_37
    :try_start_37
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    if-nez v5, :cond_20

    iget v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v5, v8, :cond_20

    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    if-eqz v5, :cond_20

    goto :goto_1e

    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_4b

    goto :goto_85

    :cond_4b
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    if-nez v1, :cond_51

    const/4 v7, 0x4

    goto :goto_85

    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " relros finished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package dirty? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "WebViewUpdateServiceImpl2"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    const/4 v7, 0x3

    :goto_85
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_37 .. :try_end_86} :catchall_35

    if-nez v5, :cond_91

    const-string/jumbo p0, "WebViewUpdateServiceImpl2"

    const-string/jumbo v1, "creating relro file timed out"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    new-instance p0, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {p0, v0, v7}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object p0

    :goto_97
    :try_start_97
    monitor-exit v4
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_35

    throw p0
.end method
