.class public final Lcom/android/server/tracing/TracingServiceProxy$1;
.super Landroid/tracing/ITracingServiceProxy$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tracing/TracingServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tracing/TracingServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    invoke-direct {p0}, Landroid/tracing/ITracingServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyTraceSessionEnded(Z)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    iget-object p1, p1, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "should_notify_trace_session_ended"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_0

    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "TracingServiceProxy"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "com.android.traceur"

    const/high16 v5, 0x100000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.android.traceur.StopTraceService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.traceur.NOTIFY_SESSION_STOPPED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_3
    const-string v2, "Failed to notifyTraceSessionEnded"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    const-string v2, "Failed to locate Traceur"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final reportTrace(Landroid/tracing/TraceReportParams;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    iget-wide v2, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v4, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v0, 0x1a8

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/tracing/TraceReportParams;->reporterPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/tracing/TraceReportParams;->reporterClassName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Trace reporting service "

    const-string/jumbo v2, "TracingServiceProxy"

    :try_start_0
    iget-object v3, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v5, "android.permission.BIND_TRACE_REPORT_SERVICE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not request android.permission.BIND_TRACE_REPORT_SERVICE permission; instead requests "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tracing/TracingServiceProxy;->hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/tracing/TracingServiceProxy;->hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/tracing/TracingServiceProxy;->getOrCreateReporterService(Landroid/content/ComponentName;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object p0

    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;-><init>(Landroid/tracing/TraceReportParams;)V

    invoke-interface {p0, v0}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;-><init>(Landroid/tracing/TraceReportParams;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_0
    iget-wide v5, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v7, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v3, 0x1a8

    const/4 v4, 0x4

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    return-void

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-wide v5, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v7, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v3, 0x1a8

    const/4 v4, 0x3

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    return-void
.end method
