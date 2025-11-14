.class public abstract Lcom/samsung/android/server/hwrs/samba/ServerUserManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static addUser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "addUser - UserName:"

    const-string/jumbo v1, "[HWRS_SYS]ServerUserManager"

    invoke-static {v0, p0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_56

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    const-string/jumbo v0, "ksmbd.au.u"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "ksmbd.au.p"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "ksmbd_add_user"

    invoke-static {p1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string/jumbo v2, "wait for  ksmbd add user to stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {p1, v2}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V

    const-string p1, "KSMBD add user Successful!!!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_42
    const-string p1, "KSMBD add user already running..."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    const-string p1, ""

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "addUser success!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    new-instance p0, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    const-string/jumbo p1, "fields cannot be null or empty!!!"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static delUser(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "deleteUser - UserName:"

    const-string/jumbo v1, "[HWRS_SYS]ServerUserManager"

    invoke-static {v0, p0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_45

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    const-string/jumbo v0, "ksmbd.au.u"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "ksmbd_delete_user"

    invoke-static {p0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-static {p0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string/jumbo v2, "wait for  ksmbd delete user to stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {p0, v2}, Lcom/samsung/android/server/hwrs/samba/ServerManager;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;)V

    const-string p0, "KSMBD delete user Successful!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_34
    const-string p0, "KSMBD delete user already running..."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    const-string p0, ""

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "delUser success!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_45
    new-instance p0, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    const-string/jumbo v0, "fields cannot be null or empty!!!"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
