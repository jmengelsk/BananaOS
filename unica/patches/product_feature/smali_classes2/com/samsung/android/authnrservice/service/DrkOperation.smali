.class public final Lcom/samsung/android/authnrservice/service/DrkOperation;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;


# instance fields
.field public mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/DrkOperation;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/authnrservice/service/DrkOperation;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    :cond_11
    :goto_11
    sget-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public final declared-synchronized getDrkKeyHandle()[B
    .registers 9

    const-string/jumbo v0, "get drk fail. "

    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const-string v0, "DO"

    const-string/jumbo v1, "not initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [B
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    goto :goto_57

    :cond_17
    :try_start_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const-string v5, "AUTHNR"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_32

    array-length v3, v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_30
    .catchall {:try_start_17 .. :try_end_2b} :catchall_15

    if-nez v3, :cond_2e

    goto :goto_32

    :cond_2e
    monitor-exit p0

    return-object v1

    :catch_30
    move-exception v1

    goto :goto_3e

    :cond_32
    :goto_32
    :try_start_32
    const-string v1, "DO"

    const-string/jumbo v3, "createServiceKeySession failed"

    invoke-static {v1, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [B
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_30
    .catchall {:try_start_32 .. :try_end_3c} :catchall_15

    monitor-exit p0

    return-object v0

    :goto_3e
    :try_start_3e
    const-string v3, "DO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [B
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_15

    monitor-exit p0

    return-object v0

    :goto_57
    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_15

    throw v0
.end method

.method public final declared-synchronized initialize(Landroid/content/Context;)Z
    .registers 7

    const-string/jumbo v0, "drk init failed : "

    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_5a

    :cond_12
    :goto_12
    iget-object p1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_25

    const-string p1, "DO"

    const-string/jumbo v0, "isAliveDeviceRootKeyService failed"

    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_10

    monitor-exit p0

    return v1

    :cond_25
    :try_start_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object p1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p1, :cond_41

    const-string p1, "DO"

    const-string/jumbo v2, "isExistDeviceRootKey failed"

    invoke-static {p1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3d} :catch_3f
    .catchall {:try_start_25 .. :try_end_3d} :catchall_10

    monitor-exit p0

    return v1

    :catch_3f
    move-exception p1

    goto :goto_43

    :cond_41
    monitor-exit p0

    return v4

    :goto_43
    :try_start_43
    const-string v2, "DO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_43 .. :try_end_58} :catchall_10

    monitor-exit p0

    return v1

    :goto_5a
    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_10

    throw p1
.end method

.method public final declared-synchronized terminate()Z
    .registers 6

    const-string/jumbo v0, "drk terminate failed : "

    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_15

    const-string v0, "DO"

    const-string/jumbo v1, "not initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_13

    monitor-exit p0

    return v2

    :catchall_13
    move-exception v0

    goto :goto_4d

    :cond_15
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    move-result v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_30

    const-string v1, "DO"

    const-string/jumbo v3, "releaseServiceKeySession failed"

    invoke-static {v1, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2c} :catch_2e
    .catchall {:try_start_15 .. :try_end_2c} :catchall_13

    monitor-exit p0

    return v2

    :catch_2e
    move-exception v1

    goto :goto_36

    :cond_30
    const/4 v1, 0x0

    :try_start_31
    iput-object v1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_33} :catch_2e
    .catchall {:try_start_31 .. :try_end_33} :catchall_13

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_36
    :try_start_36
    const-string v3, "DO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_13

    monitor-exit p0

    return v2

    :goto_4d
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_13

    throw v0
.end method
