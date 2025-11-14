.class public final Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;
.super Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPackagesBackupFile:Ljava/io/File;

.field public final mPackagesFile:Ljava/io/File;

.field public mRebootCntByPackages:I

.field public mRebootCntByPkgsState:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesBackupFile:Ljava/io/File;

    iput-object p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object p2, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "reboot_cnt_by_packages"

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getBackupConfigInt(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    const-string/jumbo p1, "reboot_cnt_by_packages_state"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getBackupConfigInt(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    return-void
.end method


# virtual methods
.method public final getControllerName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "pm_settings_backup"

    return-object p0
.end method

.method public final onSaveFiles(Ljava/io/File;)Z
    .locals 7

    const-string/jumbo v0, "PmBackupController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSaveFiles: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string/jumbo p0, "PmBackupController"

    const-string/jumbo p1, "No UserManager registered"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesBackupFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "packages.xml"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mPackagesFile:Ljava/io/File;

    invoke-static {v6, v5}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo v5, "PmBackupController"

    const-string/jumbo v6, "There\'s something wrong, skip copying of the packages file"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    :goto_1
    if-nez v5, :cond_3

    monitor-exit v4

    return v3

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_1
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->savePackagesStateForUser(Ljava/io/File;I)V

    monitor-exit v4

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_4
    const-string/jumbo p0, "PmBackupController"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Total time: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final onSystemReady()V
    .locals 3

    const-string/jumbo v0, "PmBackupController"

    const-string/jumbo v1, "Reset reboot counts"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPackages:I

    iput v0, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    const-string/jumbo v1, "reboot_cnt_by_packages"

    invoke-virtual {p0, v0, v1, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V

    const-string/jumbo v1, "reboot_cnt_by_packages_state"

    iget v2, p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;->mRebootCntByPkgsState:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V

    return-void
.end method

.method public final savePackagesStateForUser(Ljava/io/File;I)V
    .locals 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string/jumbo v3, "package-restrictions-backup.xml"

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string/jumbo v3, "PmBackupController"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "users/"

    invoke-static {p2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "!@Failed to make dirs for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    return-void

    :cond_2
    :goto_0
    const-string/jumbo p0, "There\'s something wrong, skip copying of the packages state file for user "

    invoke-static {p2, p0, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
