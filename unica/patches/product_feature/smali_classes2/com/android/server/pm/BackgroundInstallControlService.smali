.class public Lcom/android/server/pm/BackgroundInstallControlService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

.field public final mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

.field public final mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDiskFile:Ljava/io/File;

.field public final mHandler:Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

.field public final mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field protected final mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundInstallControlService;-><init>(Lcom/android/server/pm/BackgroundInstallControlService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService$Injector;)V
    .registers 7

    check-cast p1, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;

    iget-object v0, p1, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundInstallControlService$1;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    iget-object v0, p1, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "BackgroundInstallControlService"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "bic"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "states"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    iget-object p1, p1, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    invoke-direct {p1}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    new-instance p1, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    return-void
.end method


# virtual methods
.method public getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1, p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object p1

    invoke-virtual {v2, p1, p3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    sget-boolean p2, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_50

    const-string v2, "BackgroundInstallControlService"

    if-eqz p2, :cond_6b

    :try_start_17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tracked background installed package size: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_31
    iget-object v4, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_52

    iget-object v4, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p2, v4}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :catchall_50
    move-exception p0

    goto :goto_aa

    :cond_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tracked background installed package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    :cond_6f
    :goto_6f
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, p3, v3}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_9d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not tracked, removing"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    goto :goto_6f

    :cond_a1
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_a6
    .catchall {:try_start_17 .. :try_end_a6} :catchall_50

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_aa
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public getBackgroundInstalledPackages()Landroid/util/SparseSetArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public getInstallerForegroundTimeFrames()Landroid/util/SparseArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet<",
            "Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public initBackgroundInstalledPackages()V
    .registers 13

    const-string v0, "BackgroundInstallControlService"

    iget-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    if-eqz v1, :cond_8

    goto/16 :goto_b0

    :cond_8
    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_b0

    :cond_19
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_20
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_9e

    :try_start_24
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_29
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_98

    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_38

    goto :goto_29

    :cond_38
    const-wide v6, 0x20b00000001L

    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    const/16 v3, -0x2710

    const/4 v8, 0x0

    move v9, v3

    :goto_45
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v10

    if-eq v10, v4, :cond_85

    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v10

    if-eq v10, v5, :cond_7b

    const/4 v11, 0x2

    if-eq v10, v11, :cond_70

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Undefined field in proto: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :catchall_6e
    move-exception p0

    goto :goto_a0

    :cond_70
    const-wide v9, 0x10500000002L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v9

    sub-int/2addr v9, v5

    goto :goto_45

    :cond_7b
    const-wide v10, 0x10900000001L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_45

    :cond_85
    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz v8, :cond_92

    if-eq v9, v3, :cond_92

    iget-object v3, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v9, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_29

    :cond_92
    const-string v3, "Fails to get packageName or UserId from proto file"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_24 .. :try_end_97} :catchall_6e

    goto :goto_29

    :cond_98
    if-eqz v1, :cond_b0

    :try_start_9a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    return-void

    :catch_9e
    move-exception p0

    goto :goto_ab

    :goto_a0
    if-eqz v1, :cond_aa

    :try_start_a2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_aa

    :catchall_a6
    move-exception v1

    :try_start_a7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_aa
    :goto_aa
    throw p0
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ab} :catch_9e

    :goto_ab
    const-string v1, "Error reading state from the disk"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b0
    :goto_b0
    return-void
.end method

.method public final onStart()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/BackgroundInstallControlService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .registers 3

    if-nez p1, :cond_a

    const-string/jumbo p1, "background_install_control"

    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_a
    iget-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    return-void
.end method

.method public writeBackgroundInstalledPackagesToDisk()V
    .registers 13

    const-string v0, "BackgroundInstallControlService"

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_9
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_6b

    :try_start_d
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    :goto_13
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v5}, Landroid/util/SparseSetArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5b

    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-wide v8, 0x20b00000001L

    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x10900000001L

    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v7, v5, 0x1

    const-wide v10, 0x10500000002L

    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2b

    :catch_56
    move-exception p0

    goto :goto_62

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_5b
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_61} :catch_56

    return-void

    :goto_62
    const-string v3, "Failed to finish write to states protobuf."

    invoke-static {v0, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catch_6b
    move-exception p0

    const-string v1, "Failed to start write to states protobuf."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
