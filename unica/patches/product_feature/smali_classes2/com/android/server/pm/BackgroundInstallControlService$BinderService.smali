.class public final Lcom/android/server/pm/BackgroundInstallControlService$BinderService;
.super Landroid/content/pm/IBackgroundInstallControlService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/pm/BackgroundInstallControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    return-void
.end method


# virtual methods
.method public final getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    iget-object v0, v0, Lcom/android/server/pm/BackgroundInstallControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.GET_BACKGROUND_INSTALLED_PACKAGES"

    const-string/jumbo v2, "User is not permitted to call service: android.permission.GET_BACKGROUND_INSTALLED_PACKAGES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "debug.transparency.bg-install-apps"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo v2, "Package\'s PackageInfo not found "

    const-string v3, "BackgroundInstallControlService"

    invoke-static {v2, v1, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public final registerBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
