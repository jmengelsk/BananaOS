.class public abstract Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;
.super Landroid/os/HwBinder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .registers 1

    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 3

    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 5

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_24

    new-array v2, v0, [B

    fill-array-data v2, :array_38

    new-array v3, v0, [B

    fill-array-data v3, :array_4c

    new-array v0, v0, [B

    fill-array-data v0, :array_60

    filled-new-array {v1, v2, v3, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :array_24
    .array-data 1
        -0x10t
        0x33t
        0x48t
        0x2et
        0x75t
        -0x33t
        0x10t
        -0x5bt
        -0x4dt
        0x31t
        0xet
        -0x75t
        -0x13t
        0x48t
        -0xct
        -0x1at
        0x14t
        -0x28t
        -0x59t
        0x6dt
        -0x7dt
        -0x62t
        -0x52t
        -0x72t
        0x49t
        -0x9t
        0x6dt
        0x36t
        -0x36t
        0x60t
        0x1bt
        -0x2bt
    .end array-data

    :array_38
    .array-data 1
        0x26t
        -0x10t
        0x45t
        0x10t
        -0x60t
        -0x4bt
        0x7at
        -0x46t
        0x51t
        0x67t
        -0x3bt
        -0x40t
        -0x59t
        -0x3et
        -0x10t
        0x77t
        -0x3et
        -0x54t
        -0x45t
        -0x68t
        -0x48t
        0x19t
        0x2t
        -0x60t
        0x72t
        0x51t
        0x78t
        0x29t
        -0x3t
        -0x61t
        -0x2at
        0x7ft
    .end array-data

    :array_4c
    .array-data 1
        0x43t
        0x4ct
        0x4ct
        0x32t
        -0x40t
        0xbt
        0xet
        0x54t
        -0x45t
        0x5t
        -0x1ct
        0xct
        0x79t
        0x50t
        0x32t
        0x8t
        -0x4ct
        0xft
        0x78t
        0x6at
        0x31t
        -0x80t
        0x29t
        -0x5et
        -0x5ct
        -0xat
        0x6et
        0x34t
        -0xft
        0xft
        0x2at
        0x76t
    .end array-data

    :array_60
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 5

    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "android.hardware.health@2.0::IHealthInfoCallback"

    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    const-string/jumbo v2, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

    const-string/jumbo v3, "android.hardware.health@2.1::IHealthInfoCallback"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 11

    const/4 p4, 0x1

    if-eq p1, p4, :cond_14e

    const/4 p4, 0x2

    const-wide/16 v0, 0x88

    if-eq p1, p4, :cond_129

    const/4 p4, 0x3

    const-string/jumbo v2, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

    if-eq p1, p4, :cond_bc

    const/4 p4, 0x0

    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_17e

    return-void

    :sswitch_16
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void

    :sswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_38
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    return-void

    :sswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_62
    if-ge p4, p2, :cond_82

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7a

    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_62

    :cond_7a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_8e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_9b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_ab
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :cond_bc
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {p1}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    const-wide/16 p3, 0xb0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    iget-object p4, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    invoke-virtual {p4, p2, p3}, Landroid/hardware/health/V2_1/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p2

    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    const-wide/16 v0, 0x8c

    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p2

    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    const-wide/16 v0, 0x90

    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p2

    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    const-wide/16 v0, 0x94

    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p2

    iput-boolean p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    const-wide/16 v0, 0x95

    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p2

    iput-boolean p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    const-wide/16 v0, 0x98

    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p2

    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    const-wide/16 v0, 0x9c

    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p2

    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    const-wide/16 v0, 0xa0

    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p2

    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    const-wide/16 v0, 0xa4

    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p2

    iput-boolean p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    const-wide/16 v0, 0xa8

    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p2

    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    check-cast p0, Lcom/android/server/health/HealthHalCallbackHidl;

    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;

    invoke-static {p1}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void

    :cond_129
    const-string/jumbo p1, "android.hardware.health@2.1::IHealthInfoCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Landroid/hardware/health/V2_1/HealthInfo;

    invoke-direct {p1}, Landroid/hardware/health/V2_1/HealthInfo;-><init>()V

    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/hardware/health/V2_1/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    check-cast p0, Lcom/android/server/health/HealthHalCallbackHidl;

    new-instance p2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {p2}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    iput-object p1, p2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;

    invoke-static {p2}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void

    :cond_14e
    const-string/jumbo p1, "android.hardware.health@2.0::IHealthInfoCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Landroid/hardware/health/V2_0/HealthInfo;

    invoke-direct {p1}, Landroid/hardware/health/V2_0/HealthInfo;-><init>()V

    const-wide/16 p3, 0x70

    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/hardware/health/V2_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    check-cast p0, Lcom/android/server/health/HealthHalCallbackHidl;

    new-instance p2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {p2}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    iget-object p3, p2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iput-object p1, p3, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    const/4 p1, -0x1

    iput p1, p3, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    const-wide/16 v0, -0x1

    iput-wide v0, p3, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;

    invoke-static {p2}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void

    :sswitch_data_17e
    .sparse-switch
        0xf43484e -> :sswitch_ab
        0xf444247 -> :sswitch_9b
        0xf445343 -> :sswitch_8e
        0xf485348 -> :sswitch_3c
        0xf494e54 -> :sswitch_38
        0xf504e47 -> :sswitch_2e
        0xf524546 -> :sswitch_1d
        0xf535953 -> :sswitch_16
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string/jumbo v0, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback@Stub"

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
