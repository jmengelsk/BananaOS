.class public Lcom/android/server/notification/NotificationHistoryJobService;
.super Landroid/app/job/JobService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final JOB_RUN_INTERVAL:J


# instance fields
.field public mSignal:Landroid/os/CancellationSignal;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/notification/NotificationHistoryJobService;->JOB_RUN_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;)V
    .registers 5

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const v1, 0xe20f0bc

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    if-nez v2, :cond_3b

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/notification/NotificationHistoryJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    sget-wide v1, Lcom/android/server/notification/NotificationHistoryJobService;->JOB_RUN_INTERVAL:J

    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3b

    const-string/jumbo p0, "NotificationHistoryJob"

    const-string v0, "Failed to schedule history cleanup job"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/job/JobService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryJobService;->mSignal:Landroid/os/CancellationSignal;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationHistoryJobService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryJobService;->mSignal:Landroid/os/CancellationSignal;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
