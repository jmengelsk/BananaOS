.class public final Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallerProcessId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .registers 5

    invoke-direct {p0, p3, p4, p2}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    iput p1, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    return-void
.end method


# virtual methods
.method public final dumpDetails(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findMethodName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "Failed to get method name"

    :cond_8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->activityManager()Landroid/app/IActivityManager;

    move-result-object p1

    const-string/jumbo v0, "No ActivityManager to find name of process with pid="

    iget p0, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    const-string/jumbo v1, "ShutdownCheckPoints"

    const/4 v2, 0x0

    if-eqz p1, :cond_21

    :try_start_1a
    invoke-interface {p1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    goto :goto_31

    :catch_1f
    move-exception p1

    goto :goto_4a

    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    :goto_31
    if-eqz p1, :cond_4f

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p0, :cond_37

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_49} :catch_1f

    goto :goto_4f

    :goto_4a
    const-string v0, "Failed to get running app processes from ActivityManager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    :goto_4f
    const-string p1, "From process "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v2, :cond_58

    const-string v2, "?"

    :cond_58
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getOrigin()Ljava/lang/String;
    .registers 1

    const-string p0, "BINDER"

    return-object p0
.end method
