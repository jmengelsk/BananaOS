.class public final Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;
.super Landroid/app/supervision/SupervisionManagerInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method public constructor <init>(Lcom/android/server/supervision/SupervisionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-direct {p0}, Landroid/app/supervision/SupervisionManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final isActiveSupervisionApp(I)Z
    .locals 4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {v1, v0}, Lcom/android/server/supervision/SupervisionService;->getActiveSupervisionAppPackage(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    iget-object v2, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_1
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length p1, p0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final isSupervisionEnabledForUser(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->isSupervisionEnabledForUser(I)Z

    move-result p0

    return p0
.end method

.method public final isSupervisionLockscreenEnabledForUser(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    iget-object v0, v0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenEnabled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setSupervisionEnabledForUser(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUser(IZ)V

    return-void
.end method

.method public final setSupervisionLockscreenEnabledForUser(IZLandroid/os/PersistableBundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    iget-object v0, v0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iput-boolean p2, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenEnabled:Z

    iput-object p3, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenOptions:Landroid/os/PersistableBundle;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
