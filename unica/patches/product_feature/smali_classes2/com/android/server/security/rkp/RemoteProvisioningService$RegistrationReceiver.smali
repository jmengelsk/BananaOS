.class public final Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final mCallback:Landroid/security/rkp/IGetRegistrationCallback;

.field public final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/security/rkp/IGetRegistrationCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .registers 4

    check-cast p1, Ljava/lang/Exception;

    :try_start_2
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/security/rkp/IGetRegistrationCallback;->onError(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error calling error callback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    invoke-interface {p0}, Landroid/security/rkp/IGetRegistrationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "RemoteProvisionSysSvc"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/security/rkp/service/RegistrationProxy;

    :try_start_2
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    new-instance v1, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object v2, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p1, v2}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;-><init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Landroid/security/rkp/IGetRegistrationCallback;->onSuccess(Landroid/security/rkp/IRegistration;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error calling success callback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    invoke-interface {p0}, Landroid/security/rkp/IGetRegistrationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "RemoteProvisionSysSvc"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
