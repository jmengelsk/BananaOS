.class public final Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

.field public final val$callback:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Landroid/security/rkp/IGetKeyCallback;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iput-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Landroid/security/rkp/IStoreUpgradedKeyCallback;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iput-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .registers 9

    iget v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_128

    check-cast p1, Ljava/lang/Exception;

    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object v0, v0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast v1, Landroid/security/rkp/IGetKeyCallback;

    invoke-interface {v1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Landroid/os/OperationCanceledException;

    const-string v1, "Error invoking callback on client binder"

    const-string/jumbo v2, "RemoteProvisionSysSvc"

    if-eqz v0, :cond_54

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Operation cancelled for client "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast v0, Landroid/security/rkp/IGetKeyCallback;

    invoke-interface {v0}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast p0, Landroid/security/rkp/IGetKeyCallback;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_49
    invoke-interface {p0}, Landroid/security/rkp/IGetKeyCallback;->onCancel()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4e

    goto/16 :goto_f8

    :catch_4e
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f8

    :cond_54
    instance-of v0, p1, Landroid/security/rkp/service/RkpProxyException;

    const/4 v3, 0x1

    const-string v4, ": "

    if-eqz v0, :cond_bb

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "RKP error fetching key for client "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast v5, Landroid/security/rkp/IGetKeyCallback;

    invoke-interface {v5}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IBinder;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Landroid/security/rkp/service/RkpProxyException;

    iget-object v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_8b
    iget-object v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast v4, Landroid/security/rkp/IGetKeyCallback;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/security/rkp/service/RkpProxyException;->getError()I

    move-result p0

    if-eqz p0, :cond_ae

    const/4 v5, 0x2

    if-eq p0, v3, :cond_ad

    const/4 v6, 0x3

    if-eq p0, v5, :cond_ab

    if-eq p0, v6, :cond_a9

    const-string/jumbo p0, "Unexpected error code in RkpProxyException"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ae

    :cond_a9
    const/4 v3, 0x5

    goto :goto_ae

    :cond_ab
    move v3, v6

    goto :goto_ae

    :cond_ad
    move v3, v5

    :cond_ae
    :goto_ae
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, v3, p0}, Landroid/security/rkp/IGetKeyCallback;->onError(BLjava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_b5} :catch_b6

    goto :goto_f8

    :catch_b6
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f8

    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unknown error fetching key for client "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast v5, Landroid/security/rkp/IGetKeyCallback;

    invoke-interface {v5}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IBinder;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_e8
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast p0, Landroid/security/rkp/IGetKeyCallback;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Landroid/security/rkp/IGetKeyCallback;->onError(BLjava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f3} :catch_f4

    goto :goto_f8

    :catch_f4
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f8
    return-void

    :pswitch_f9  #0x0
    check-cast p1, Ljava/lang/Exception;

    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object v0, v0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast v1, Landroid/security/rkp/IStoreUpgradedKeyCallback;

    invoke-interface {v1}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast p0, Landroid/security/rkp/IStoreUpgradedKeyCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_115
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->onError(Ljava/lang/String;)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11c} :catch_11d

    goto :goto_126

    :catch_11d
    move-exception p0

    const-string/jumbo p1, "RemoteProvisionSysSvc"

    const-string v0, "Error invoking callback on client binder"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_126
    return-void

    nop

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_f9  #00000000
    .end packed-switch
.end method

.method public final onResult(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_8a

    check-cast p1, Landroid/security/rkp/service/RemotelyProvisionedKey;

    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object v0, v0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast v1, Landroid/security/rkp/IGetKeyCallback;

    invoke-interface {v1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Successfully fetched key for client "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast v1, Landroid/security/rkp/IGetKeyCallback;

    invoke-interface {v1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RemoteProvisionSysSvc"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/security/rkp/RemotelyProvisionedKey;

    invoke-direct {v0}, Landroid/security/rkp/RemotelyProvisionedKey;-><init>()V

    invoke-virtual {p1}, Landroid/security/rkp/service/RemotelyProvisionedKey;->getKeyBlob()[B

    move-result-object v2

    iput-object v2, v0, Landroid/security/rkp/RemotelyProvisionedKey;->keyBlob:[B

    invoke-virtual {p1}, Landroid/security/rkp/service/RemotelyProvisionedKey;->getEncodedCertChain()[B

    move-result-object p1

    iput-object p1, v0, Landroid/security/rkp/RemotelyProvisionedKey;->encodedCertChain:[B

    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4d
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast p0, Landroid/security/rkp/IGetKeyCallback;

    invoke-interface {p0, v0}, Landroid/security/rkp/IGetKeyCallback;->onSuccess(Landroid/security/rkp/RemotelyProvisionedKey;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_55

    goto :goto_5b

    :catch_55
    move-exception p0

    const-string p1, "Error invoking callback on client binder"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5b
    return-void

    :pswitch_5c  #0x0
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object p1, p1, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast v0, Landroid/security/rkp/IStoreUpgradedKeyCallback;

    invoke-interface {v0}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    check-cast p0, Landroid/security/rkp/IStoreUpgradedKeyCallback;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_7b
    invoke-interface {p0}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->onSuccess()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_88

    :catch_7f
    move-exception p0

    const-string/jumbo p1, "RemoteProvisionSysSvc"

    const-string v0, "Error invoking callback on client binder"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_5c  #00000000
    .end packed-switch
.end method
