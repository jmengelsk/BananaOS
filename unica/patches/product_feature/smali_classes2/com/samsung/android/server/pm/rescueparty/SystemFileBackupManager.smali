.class public final Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEFAULT_BACKUP_PERIOD:J

.field public static final sFileBackupServiceName:Landroid/content/ComponentName;

.field public static sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;


# instance fields
.field public final mControllers:Landroid/util/ArrayMap;

.field public final mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLock:Ljava/lang/Object;

.field public mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->DEFAULT_BACKUP_PERIOD:J

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sFileBackupServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mSystemReady:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;
    .registers 2

    const-class v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    invoke-direct {v1}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;-><init>()V

    sput-object v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    :cond_11
    :goto_11
    sget-object v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    monitor-exit v0

    return-object v1

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public final registerController(Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;)V
    .registers 6

    invoke-virtual {p1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    const-string/jumbo v1, "SystemFileBackupManager"

    const-string v2, "Controller "

    const-string v3, " is registered"

    invoke-static {v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p0
.end method
