.class public abstract Lcom/samsung/android/server/hwrs/samba/ServerManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static startSmbServer()V
    .registers 3

    const-string/jumbo v0, "[HWRS_SYS]ServerManager"

    const-string/jumbo v1, "startSmbServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ksmbd_stop"

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "ksmbd_start"

    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "/data/misc/hwrs/ksmbd.lock"

    invoke-static {v2}, Lcom/samsung/android/server/hwrs/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    const-string/jumbo v2, "start ksmbd prop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    sget-object v2, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-static {v1, v2}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V

    const-string/jumbo v1, "Start KSMBD Successful!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    const-string v1, "KSMBD already running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    const-string/jumbo v1, "Server stopping is in progress, can\'t start server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    const-string/jumbo v1, "ServerBusy"

    invoke-direct {v0, v1}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stopSmbServer()V
    .registers 3

    const-string/jumbo v0, "[HWRS_SYS]ServerManager"

    const-string/jumbo v1, "stopSmbServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ksmbd_stop"

    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string/jumbo v2, "stop ksmbd prop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string/jumbo v2, "wait for  ksmbd_stop to stop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {v1, v2}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V

    const-string/jumbo v1, "wait for  ksmbd_start to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ksmbd_start"

    invoke-static {v1, v2}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V

    const-string/jumbo v1, "Stop KSMBD Successful!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    const-string v1, "KSMBD stopping..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V
    .registers 8

    const-wide/16 v0, 0x2710

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    :goto_7
    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_2e

    const-wide/16 v0, 0xa

    :try_start_1c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_7

    :catch_20
    move-exception v0

    const-string/jumbo v1, "[HWRS_SYS]ServerManager"

    const-string/jumbo v4, "sleep: exception"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    :cond_2e
    new-instance v1, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Service "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " currently "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; waited 10000ms for "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
