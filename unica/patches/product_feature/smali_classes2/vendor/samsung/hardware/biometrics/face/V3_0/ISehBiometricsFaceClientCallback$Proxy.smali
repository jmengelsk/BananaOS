.class public final Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;


# instance fields
.field public mRemote:Landroid/os/IHwBinder;


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 5

    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-static {v0, p1, p2}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/NativeHandle;Ljava/util/ArrayList;)Landroid/os/HwParcel;

    move-result-object p1

    new-instance p2, Landroid/os/HwParcel;

    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    :try_start_c
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v0, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1f

    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    move-result-object v0

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_c
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-virtual {p0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_27

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_27
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 12

    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    move-result-object v0

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_c
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf485348

    const/4 v9, 0x0

    invoke-interface {p0, v2, v0, v1, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v2, v10, 0x20

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_3d
    if-ge v9, v10, :cond_52

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v4, v9, 0x20

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_c .. :try_end_4c} :catchall_4f

    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    :catchall_4f
    move-exception v0

    move-object p0, v0

    goto :goto_56

    :cond_52
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :goto_56
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0}, Landroid/os/IHwBinder;->hashCode()I

    move-result p0

    return p0
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 5

    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    move-result-object v0

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_c
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_23

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_23
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    move-result-object v0

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_c
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_23

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_23
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 5

    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    move-result-object v0

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_c
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1c
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final onEnumerate(ILjava/util/ArrayList;)V
    .registers 6

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->writeInt64(J)V

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    :try_start_1b
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x6

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_29

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_29
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final onError(III)V
    .registers 7

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->writeInt64(J)V

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    :try_start_1e
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x4

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2c

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_2c
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final onRemoved(ILjava/util/ArrayList;)V
    .registers 6

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->writeInt64(J)V

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    :try_start_1b
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x5

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_29

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_29
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final ping()V
    .registers 5

    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    move-result-object v0

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_c
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1f

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final setHALInstrumentation()V
    .registers 5

    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    move-result-object v0

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_c
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_1c
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Proxy"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    const-string/jumbo p0, "[class or subclass of vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback]@Proxy"

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2

    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
