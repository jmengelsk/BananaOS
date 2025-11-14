.class public final Lcom/android/server/power/ForegroundPackageObserver;
.super Ljava/util/Observable;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityManagerNative:Landroid/app/IActivityManager;

.field public mEnabled:Z

.field public mForegroundPackageName:Ljava/lang/String;

.field public final mForegroundPidSet:Ljava/util/LinkedHashSet;

.field public final mProcessObserver:Lcom/android/server/power/ForegroundPackageObserver$1;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;Landroid/app/IActivityManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mEnabled:Z

    new-instance v0, Lcom/android/server/power/ForegroundPackageObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ForegroundPackageObserver$1;-><init>(Lcom/android/server/power/ForegroundPackageObserver;)V

    iput-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mProcessObserver:Lcom/android/server/power/ForegroundPackageObserver$1;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    iput-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManager:Landroid/app/ActivityManager;

    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManagerNative:Landroid/app/IActivityManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/power/ForegroundPackageObserver;)V
    .registers 1

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized addObserver(Ljava/util/Observer;)V
    .registers 5

    const-string/jumbo v0, "addObserver: "

    monitor-enter p0

    :try_start_4
    const-string v1, "ForegroundPackageObserver"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_25

    invoke-virtual {p0, v1}, Lcom/android/server/power/ForegroundPackageObserver;->setEnabled(Z)V

    goto :goto_25

    :catchall_23
    move-exception p1

    goto :goto_50

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v0, ""

    goto :goto_4b

    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_49
    iget-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    :goto_4b
    invoke-interface {p1, p0, v0}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_23

    monitor-exit p0

    return-void

    :goto_50
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_23

    throw p1
.end method

.method public final declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .registers 5

    const-string/jumbo v0, "deleteObserver: "

    monitor-enter p0

    :try_start_4
    const-string v1, "ForegroundPackageObserver"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    move-result p1

    if-nez p1, :cond_25

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/power/ForegroundPackageObserver;->setEnabled(Z)V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_23

    goto :goto_25

    :catchall_23
    move-exception p1

    goto :goto_27

    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_23

    throw p1
.end method

.method public final setEnabled(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mEnabled:Z

    if-eq v0, p1, :cond_36

    iput-boolean p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mEnabled:Z

    const-string v0, "ForegroundPackageObserver"

    if-eqz p1, :cond_1a

    :try_start_a
    const-string/jumbo p1, "register process observer"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManagerNative:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mProcessObserver:Lcom/android/server/power/ForegroundPackageObserver$1;

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    return-void

    :catch_18
    move-exception p0

    goto :goto_31

    :cond_1a
    const-string/jumbo p1, "unregister process observer"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManagerNative:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mProcessObserver:Lcom/android/server/power/ForegroundPackageObserver$1;

    invoke-interface {p1, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->clear()V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_30} :catch_18

    return-void

    :goto_31
    const-string p1, "Failed to register/unregister process observer"

    invoke-static {v0, p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    return-void
.end method
