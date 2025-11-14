.class public final synthetic Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;

    iput-object p2, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;

    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    sget v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;->$r8$clinit:I

    const-string/jumbo v2, "SystemFileBackupManager"

    const-string/jumbo v3, "Running BackupJobServiceThread"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    move-result-object v2

    iget-boolean v3, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mSystemReady:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const-string/jumbo v2, "SystemFileBackupManager"

    const-string/jumbo v3, "System is not ready"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "SystemFileBackupManager"

    const-string v3, "Backup is running"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v5, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    new-instance v6, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v0, v4

    :goto_0
    xor-int/2addr v0, v4

    invoke-virtual {v1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
