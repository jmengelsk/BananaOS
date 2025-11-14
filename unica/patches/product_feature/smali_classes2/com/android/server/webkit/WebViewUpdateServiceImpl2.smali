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
    .locals 5

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

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    iget-boolean v4, v3, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    return-void

    :cond_2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo p1, "No available by default WebView Provider."

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UserPackage;

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final attemptRepair()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

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

    goto :goto_0

    :cond_1
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

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_1
    invoke-virtual {v4, p0, v3, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
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

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final checkIfRelrosDoneLocked()V
    .locals 2

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v1, v0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    const-string v2, "  WebView packages:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

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

    if-nez v6, :cond_0

    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "    %s is NOT installed."

    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
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

    if-nez v7, :cond_2

    iget-object v7, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v5, v8}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v5

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v5, ""

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "NOT"

    :goto_1
    filled-new-array {v6, v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "    Valid package %s (%s) is %s installed/enabled for all users"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    if-eq v7, v6, :cond_6

    const/4 v6, 0x2

    if-eq v7, v6, :cond_5

    const/4 v6, 0x3

    if-eq v7, v6, :cond_4

    const/4 v6, 0x4

    if-eq v7, v6, :cond_3

    const-string/jumbo v6, "Unexcepted validity-reason"

    goto :goto_2

    :cond_3
    const-string/jumbo v6, "No WebView-library manifest flag"

    goto :goto_2

    :cond_4
    const-string v6, "Incorrect signature"

    goto :goto_2

    :cond_5
    const-string/jumbo v6, "Version code too low"

    goto :goto_2

    :cond_6
    const-string/jumbo v6, "Not compatible with this OS version"

    :goto_2
    filled-new-array {v5, v9, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "    Invalid package %s (%s), reason: %s"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 9

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

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    aget-object v5, v2, v4

    iget-object v5, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v2, v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const v4, 0x4004c0

    const-string v5, ") not found"

    const-string/jumbo v6, "WebViewUpdateServiceImpl2"

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v7, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v2, v4}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object v7

    :catch_0
    const-string/jumbo v2, "User chosen WebView package ("

    invoke-static {v2, v1, v5, v6}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_1
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

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string/jumbo v0, "webview.value_default_webview_package_invalid_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Default WebView package ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v5, v6}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v0, "webview.value_webview_not_usable_for_all_users_counter"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    new-instance p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException;

    const-string v0, "Could not find a loadable WebView package"

    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_1

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

    if-eqz p1, :cond_0

    const-string/jumbo p1, "webview.value_on_webview_provider_changed_with_default_package_counter"

    invoke-static {p1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->checkIfRelrosDoneLocked()V

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/webkit/WebViewUpdateServiceImpl2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final packageStateChanged(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v0, v0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v1, p1

    :goto_1
    move v3, v2

    goto :goto_5

    :cond_0
    move-object v1, p1

    :goto_2
    :try_start_1
    iget-object v3, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    move v3, v2

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_3
    const/4 v3, 0x1

    :goto_4
    :try_start_2
    iget-object v4, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_5
    :try_start_3
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

    :cond_3
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    move-result p1

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/webkit/SystemImpl;->killPackageDependents(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V

    goto :goto_8

    :goto_7
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_8
    return-void
.end method

.method public final shouldTriggerRepairLocked()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAttemptedToRepairBefore:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mDefaultProvider:Landroid/webkit/WebViewProviderInfo;

    iget-object v2, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 7

    const-string v0, "Couldn\'t find WebView package to use "

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v3, v3, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "webview_provider"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdateServiceImpl2$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->shouldTriggerRepairLocked()Z

    move-result v4

    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/webkit/SystemImpl;->killPackageDependents(Ljava/lang/String;)V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->attemptRepair()V

    :cond_6
    return-object v3

    :goto_3
    const/4 v2, 0x0

    :try_start_3
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

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mSystemInterface:Lcom/android/server/webkit/SystemImpl;

    invoke-static {v1}, Landroid/webkit/WebViewFactoryProvider;->isCompatibleImplementationPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    const/4 v11, 0x0

    if-lez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    array-length v7, v3

    const-wide/16 v12, -0x1

    move v8, v11

    :goto_0
    if-ge v8, v7, :cond_5

    aget-object v14, v3, v8

    iget-boolean v15, v14, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v15, :cond_3

    :try_start_0
    iget-object v14, v14, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v15, v2, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v16, v9

    const/high16 v9, 0x200000

    :try_start_1
    invoke-virtual {v15, v14, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    cmp-long v14, v12, v16

    if-ltz v14, :cond_2

    cmp-long v14, v9, v12

    if-gez v14, :cond_4

    :cond_2
    move-wide v12, v9

    goto :goto_1

    :catch_0
    :cond_3
    move-wide/from16 v16, v9

    :catch_1
    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v9, v16

    goto :goto_0

    :cond_5
    iput-wide v12, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mMinimumVersionCode:J

    move-wide v7, v12

    :goto_2
    const-wide/32 v2, 0x186a0

    div-long/2addr v5, v2

    div-long/2addr v7, v2

    cmp-long v0, v5, v7

    if-ltz v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x2

    return v0

    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-eq v0, v4, :cond_a

    goto :goto_6

    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    move v3, v11

    :goto_4
    if-ge v3, v2, :cond_d

    aget-object v4, v0, v3

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v11

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_5
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x4

    return v0

    :cond_b
    return v11

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    const/4 v0, 0x3

    return v0
.end method

.method public final waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 11

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v5, v8, :cond_0

    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    if-eqz v5, :cond_0

    :goto_0
    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v7

    :goto_1
    if-nez v5, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v10, v8, v0

    if-ltz v10, :cond_1

    goto :goto_3

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mLock:Ljava/lang/Object;

    sub-long v8, v0, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    :goto_2
    :try_start_2
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mWebViewPackageDirty:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsStarted:I

    iget v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mNumRelroCreationsFinished:I

    if-ne v5, v8, :cond_0

    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->mAnyWebViewInstalled:Z

    if-nez v1, :cond_4

    const/4 v7, 0x4

    goto :goto_4

    :cond_4
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

    :goto_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_5

    const-string/jumbo p0, "WebViewUpdateServiceImpl2"

    const-string/jumbo v1, "creating relro file timed out"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p0, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {p0, v0, v7}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object p0

    :goto_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
