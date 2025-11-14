.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mBinder:Landroid/os/IHwBinder;

.field public final mDeathRecipientMap:Ljava/util/Map;

.field public final mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

.field public final mProperties:Landroid/media/soundtrigger/Properties;

.field public final mRebootRunnable:Ljava/lang/Runnable;

.field public final mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

.field public final mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

.field public final mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

.field public final mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;Ljava/lang/Runnable;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mRebootRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    const-string/jumbo p2, "android.hardware.soundtrigger@2.3::ISoundTriggerHw"

    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    goto :goto_0

    :catch_0
    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    goto/16 :goto_3

    :cond_3
    const-string/jumbo p2, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v3, v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    if-eqz v3, :cond_4

    check-cast v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_5
    if-ge v5, v4, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_5

    goto :goto_1

    :catch_1
    :cond_6
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    goto :goto_3

    :cond_7
    const-string/jumbo p2, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v3, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    if-eqz v3, :cond_8

    check-cast v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    goto :goto_2

    :cond_8
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_9
    if-ge v1, v4, :cond_a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v5, :cond_9

    goto :goto_2

    :catch_2
    :cond_a
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_b

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    goto :goto_3

    :cond_b
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p1

    if-eqz p1, :cond_c

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    :goto_3
    :try_start_3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->getProperties_2_3(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
    :try_end_4
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string/jumbo v0, "getProperties_2_3"

    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/V2_3/Properties;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;

    move-result-object p1

    goto :goto_4

    :catch_3
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getProperties_2_0()Landroid/media/soundtrigger/Properties;

    move-result-object p1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    return-void

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Binder doesn\'t support ISoundTriggerHw@2.0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static handleHalStatus(ILjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/HalException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/HalException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;
    .locals 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string/jumbo v0, "Underlying driver version < 2.3"

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clientAttached(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final detach()V
    .locals 0

    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->getModelState(I)I

    move-result p0

    const-string/jumbo p1, "getModelState"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string/jumbo p1, "Underlying driver version < 2.2"

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 v0, 0x2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    throw p1

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final getModelParameter(II)I
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    move-result-object p0

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {p0, p1, p2, v2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->getParameter(IILcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string/jumbo p1, "getParameter"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 p2, 0x2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    return-object p0
.end method

.method public final getProperties_2_0()Landroid/media/soundtrigger/Properties;
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p0, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getProperties(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string/jumbo v0, "getProperties"

    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    new-instance v0, Landroid/hardware/soundtrigger/V2_3/Properties;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_3/Properties;-><init>()V

    iput-object p0, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;

    move-result-object p0

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 3

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    return-void
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Failed to close file"

    const-string/jumbo v4, "SoundTriggerHw2Compat"

    new-instance v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>(I)V

    new-instance v6, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-direct {v6}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    iput-object v6, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    iget-object v6, v1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    invoke-static {v6}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move-result-object v6

    iput-object v6, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    iget-object v1, v1, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    array-length v6, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, v1, v8

    iget-object v10, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    new-instance v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput v7, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    iput v7, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    iput-object v12, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    iput-object v12, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    iget v12, v9, Landroid/media/soundtrigger/Phrase;->id:I

    iput v12, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    iget v12, v9, Landroid/media/soundtrigger/Phrase;->recognitionModes:I

    invoke-static {v12}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    move-result v12

    iput v12, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    iget-object v12, v9, Landroid/media/soundtrigger/Phrase;->users:[I

    array-length v13, v12

    move v14, v7

    :goto_1
    if-ge v14, v13, :cond_0

    aget v15, v12, v14

    iget-object v7, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    iget-object v7, v9, Landroid/media/soundtrigger/Phrase;->locale:Ljava/lang/String;

    iput-object v7, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    iget-object v7, v9, Landroid/media/soundtrigger/Phrase;->text:Ljava/lang/String;

    iput-object v7, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, -0x1

    invoke-direct {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    if-eqz v7, :cond_3

    new-instance v8, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    invoke-direct {v8, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    new-instance v9, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;

    invoke-direct {v9, v1, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v7, v5, v8, v9}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string/jumbo v7, "loadPhraseSoundModel_2_1"

    invoke-static {v1, v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast v0, Landroid/os/HidlMemory;

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Landroid/os/HidlMemory;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    :try_start_4
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string/jumbo v6, "Underlying driver version < 2.1"

    invoke-direct {v1, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :try_start_5
    invoke-virtual {v0, v5, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast v0, Landroid/os/HidlMemory;

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Landroid/os/HidlMemory;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return v1

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    iget-object v0, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast v0, Landroid/os/HidlMemory;

    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Landroid/os/HidlMemory;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    throw v1
.end method

.method public final loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 5

    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    invoke-direct {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;-><init>()V

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v2, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast v1, Landroid/os/HidlMemory;

    invoke-static {v1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteList(Landroid/os/HidlMemory;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    iput-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    invoke-direct {v3, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v2, v0, v3, v4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;)V

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string/jumbo v0, "loadSoundModel"

    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 7

    const-string v0, "Failed to close file"

    const-string/jumbo v1, "SoundTriggerHw2Compat"

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move-result-object p1

    :try_start_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    if-eqz v4, :cond_1

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    invoke-direct {v5, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;

    invoke-direct {v6, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v4, p1, v5, v6}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string/jumbo v4, "loadSoundModel_2_1"

    invoke-static {v2, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast p1, Landroid/os/HidlMemory;

    if-eqz p1, :cond_0

    :try_start_3
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_4
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string/jumbo v3, "Underlying driver version < 2.1"

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast p1, Landroid/os/HidlMemory;

    if-eqz p1, :cond_2

    :try_start_6
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return p0

    :goto_1
    :try_start_7
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast p1, Landroid/os/HidlMemory;

    if-eqz p1, :cond_3

    :try_start_8
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    throw p0
.end method

.method public final loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 5

    iget-object v0, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast p1, Landroid/os/HidlMemory;

    invoke-static {p1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteList(Landroid/os/HidlMemory;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    invoke-direct {v3, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v2, v0, v3, v4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;)V

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string/jumbo v0, "loadSoundModel"

    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    move-result-object p0

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, p1, p2, v2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->queryParameter(IILcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string/jumbo p1, "queryParameter"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/media/soundtrigger/ModelParameterRange;

    invoke-direct {p1}, Landroid/media/soundtrigger/ModelParameterRange;-><init>()V

    iget p2, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    iput p2, p1, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    iput p0, p1, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final reboot()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mRebootRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .locals 0

    return-void
.end method

.method public final setModelParameter(III)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->setParameter(III)I

    move-result p0

    const-string/jumbo p1, "setParameter"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 p2, 0x2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p4

    new-instance v2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>(I)V

    new-instance v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput v5, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    iput v5, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    iput-boolean v5, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    iput-object v4, v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    iput-object v3, v2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move/from16 v3, p2

    iput v3, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    move/from16 v3, p3

    iput v3, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    iget-boolean v3, v1, Landroid/media/soundtrigger/RecognitionConfig;->captureRequested:Z

    iput-boolean v3, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    iget-object v3, v1, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v4, v3

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    iget-object v8, v2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v8, v8, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    check-cast v8, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-object v8, v8, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    new-instance v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    invoke-direct {v9}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;-><init>()V

    iget v10, v7, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    iput v10, v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    iget v10, v7, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v10}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    move-result v10

    iput v10, v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    iget v10, v7, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    iput v10, v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    iget-object v10, v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    iget-object v11, v7, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v7, v7, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v10, v7

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v7, v11

    iget-object v13, v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    new-instance v14, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    invoke-direct {v14}, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;-><init>()V

    iget v15, v12, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    iput v15, v14, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    iget v12, v12, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    iput v12, v14, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v4, v1, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    const-string/jumbo v5, "SoundTrigger RecognitionConfig"

    invoke-static {v4, v5}, Landroid/os/HidlMemoryUtil;->byteArrayToHidlMemory([BLjava/lang/String;)Landroid/os/HidlMemory;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    iget v1, v1, Landroid/media/soundtrigger/RecognitionConfig;->audioCapabilities:I

    iput v1, v2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->audioCapabilities:I

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->startRecognition_2_3(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)I

    move-result v1

    const-string/jumbo v3, "startRecognition_2_3"

    invoke-static {v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-object/from16 v1, p0

    :try_start_1
    invoke-virtual {v1, v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    .locals 3

    iget-object p2, p2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v0, p2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-object p2, p2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    check-cast p2, Landroid/os/HidlMemory;

    invoke-static {p2}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteList(Landroid/os/HidlMemory;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    invoke-interface {p2, p1, v0, v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;)I

    move-result p0

    const-string/jumbo p1, "startRecognition"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    return-void
.end method

.method public final startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    .locals 5

    :try_start_0
    iget-object v0, p2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    invoke-interface {v1, p1, v0, v2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;)I

    move-result v0

    const-string/jumbo v1, "startRecognition_2_1"

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string/jumbo v1, "Underlying driver version < 2.1"

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final stopRecognition(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopRecognition(I)I

    move-result p0

    const-string/jumbo p1, "stopRecognition"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final unloadSoundModel(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->unloadSoundModel(I)I

    move-result p0

    const-string/jumbo p1, "unloadSoundModel"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
