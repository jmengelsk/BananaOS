.class public interface abstract Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;


# direct methods
.method public static getService()Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
    .locals 6

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz v3, :cond_1

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    return-object v2

    :cond_1
    new-instance v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_0
    invoke-virtual {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return-object v2

    :catch_0
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract sehAuthenticate(JILjava/util/ArrayList;)I
.end method

.method public abstract sehCloseTaSession()I
.end method

.method public abstract sehGetEngineVersion()Ljava/lang/String;
.end method

.method public abstract sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V
.end method

.method public abstract sehGetTaInfo()Ljava/lang/String;
.end method

.method public abstract sehIsTaSessionClosed()Z
.end method

.method public abstract sehOpenTaSession()I
.end method

.method public abstract sehPauseEnrollment()I
.end method

.method public abstract sehResumeEnrollment()I
.end method

.method public abstract sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract sehSetFaceTag(Ljava/util/ArrayList;)I
.end method

.method public abstract sehSetRotation(I)I
.end method
