.class public final Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCoreSaStatusLoggers:Ljava/util/HashSet;

.field public final mParams:Landroid/app/job/JobParameters;

.field public final synthetic this$0:Lcom/android/server/wm/CoreSaStatusLoggingService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CoreSaStatusLoggingService;Landroid/app/job/JobParameters;Ljava/util/HashSet;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/wm/CoreSaStatusLoggingService;

    sget-object p1, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    const-string p1, "CoreSaStatusLoggingService_IdleLoggingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;->mCoreSaStatusLoggers:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string/jumbo v0, "MultiTaskingAppCompatStatusLogger"

    const-string v1, "CoreSaStatusLoggingService"

    :try_start_5
    iget-object v2, p0, Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;->mCoreSaStatusLoggers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

    sget-object v4, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting IdleLoggingJob run, logger="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_3c

    :try_start_31
    invoke-virtual {v3}, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;->collectAndSendStatus()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_b

    :catchall_35
    move-exception v3

    :try_start_36
    const-string v4, "Failed to logAppCompatStatus"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3c

    goto :goto_b

    :catchall_3c
    move-exception v0

    :try_start_3d
    sget-object v2, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    const-string v2, "Failed to run."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/wm/CoreSaStatusLoggingService;

    iget-object p0, p0, Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4d

    goto :goto_55

    :catchall_4d
    move-exception p0

    sget-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    const-string v0, "Failed to jobFinished."

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_55
    return-void
.end method
