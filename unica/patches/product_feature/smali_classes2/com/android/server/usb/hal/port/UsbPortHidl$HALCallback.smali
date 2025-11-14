.class public final Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;
.super Landroid/os/HwBinder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/usb/V1_0/IUsbCallback;


# instance fields
.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

.field public preDataRole:I


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

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
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    filled-new-array {v1, v2, v3, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :array_0
    .array-data 1
        0x46t
        -0x67t
        0x6ct
        -0x2et
        -0x5ft
        -0x3at
        0x62t
        0x61t
        -0x59t
        0x5at
        0x1ft
        0x6et
        -0x36t
        -0x26t
        0x77t
        -0x12t
        -0x4bt
        -0x7at
        0x1et
        -0x4et
        0x64t
        -0x6t
        0x39t
        -0x47t
        -0x6at
        0x54t
        -0x71t
        -0x20t
        -0x59t
        -0xet
        0x2dt
        -0x2dt
    .end array-data

    :array_1
    .array-data 1
        0x13t
        -0x5bt
        -0x80t
        -0x1dt
        0x5at
        -0x10t
        0x12t
        0x70t
        -0x5ft
        -0x17t
        0x77t
        0x41t
        0x77t
        -0x3bt
        0x1dt
        -0x4bt
        0x1dt
        -0x7at
        0x72t
        -0x1at
        0x13t
        -0x65t
        -0x60t
        0x8t
        0x51t
        -0x1at
        0x54t
        -0x1at
        -0x76t
        0x4dt
        0x7dt
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x4bt
        -0x19t
        -0x78t
        0x1et
        0x41t
        0x1bt
        -0x5ct
        0x27t
        -0x7ct
        -0x41t
        0x5bt
        0x73t
        0x54t
        -0x3ft
        0x4at
        -0x20t
        -0x31t
        0x16t
        0x10t
        0x4t
        -0x2dt
        -0x6ct
        0x33t
        -0x56t
        -0x14t
        -0x56t
        -0x50t
        -0x2ft
        -0x62t
        -0x57t
        -0x6dt
        0x54t
    .end array-data

    :array_3
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
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "android.hardware.usb@1.0::IUsbCallback"

    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    const-string/jumbo v2, "android.hardware.usb@1.2::IUsbCallback"

    const-string/jumbo v3, "android.hardware.usb@1.1::IUsbCallback"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "android.hardware.usb@1.2::IUsbCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 45

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0x20

    const/4 v9, 0x1

    const-string/jumbo v10, "UsbPortManager"

    const-string/jumbo v5, "android.hardware.usb@1.0::IUsbCallback"

    const-string/jumbo v11, "port status enquiry failed"

    const-wide/16 v6, 0x10

    const-wide/16 v13, 0x8

    const/4 v15, 0x4

    const/4 v8, 0x0

    if-eq v1, v9, :cond_18

    move/from16 p4, v9

    move-object/from16 v16, v10

    const-wide/16 v9, 0x0

    const/4 v12, 0x2

    if-eq v1, v12, :cond_16

    const/4 v5, 0x3

    const-wide/16 v18, 0x2c

    const-wide/16 v20, 0x28

    if-eq v1, v5, :cond_c

    const-string/jumbo v5, "android.hardware.usb@1.2::IUsbCallback"

    if-eq v1, v15, :cond_2

    const-string/jumbo v6, "android.hidl.base@1.0::IBase"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void

    :sswitch_1
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {v3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_2
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_3
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    return-void

    :sswitch_4
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v13, v14, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v8, v2, :cond_1

    mul-int/lit8 v6, v8, 0x20

    int-to-long v6, v6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    if-eqz v11, :cond_0

    array-length v12, v11

    if-ne v12, v4, :cond_0

    invoke-virtual {v5, v6, v7, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1, v9, v10, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_5
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3, v5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_6
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    invoke-virtual {v2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_7
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->send()V

    return-void

    :cond_2
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v3, v10, 0x48

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    move-wide v2, v3

    move-wide v4, v5

    const-wide/16 v6, 0x0

    move v1, v8

    const/4 v8, 0x1

    move v13, v1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v8, v13

    :goto_1
    if-ge v8, v10, :cond_3

    new-instance v3, Landroid/hardware/usb/V1_2/PortStatus;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    invoke-direct {v4}, Landroid/hardware/usb/V1_1/PortStatus_1_1;-><init>()V

    iput-object v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iput-boolean v13, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    iput v13, v3, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    iput-boolean v13, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    iput v13, v3, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    mul-int/lit8 v5, v8, 0x48

    int-to-long v5, v5

    iget-object v7, v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    invoke-virtual {v7, v1, v2, v5, v6}, Landroid/hardware/usb/V1_0/PortStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    add-long v12, v5, v20

    invoke-virtual {v2, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    iput v12, v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    add-long v12, v5, v18

    invoke-virtual {v2, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    iput v12, v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    const-wide/16 v12, 0x30

    add-long/2addr v12, v5

    invoke-virtual {v2, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    const-wide/16 v12, 0x34

    add-long/2addr v12, v5

    invoke-virtual {v2, v12, v13}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    const-wide/16 v12, 0x38

    add-long/2addr v12, v5

    invoke-virtual {v2, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    const-wide/16 v12, 0x3c

    add-long/2addr v12, v5

    invoke-virtual {v2, v12, v13}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    const-wide/16 v12, 0x40

    add-long/2addr v5, v12

    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    iget-boolean v2, v2, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    if-nez v2, :cond_4

    goto/16 :goto_8

    :cond_4
    if-eqz v1, :cond_5

    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    move-object/from16 v12, v16

    const/4 v0, 0x6

    invoke-static {v0, v12, v11}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    move-object/from16 v12, v16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_b

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/V1_2/PortStatus;

    new-instance v23, Lcom/android/server/usb/hal/port/RawPortInfo;

    iget-object v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v5, v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v6, v5, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v10, v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    iget v11, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    iget v4, v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-boolean v13, v5, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v14, v5, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v7, v5, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v15, v5, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v5, v5, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    move/from16 p2, v2

    iget-boolean v2, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    move/from16 v33, v2

    iget v2, v3, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    move/from16 v34, v2

    iget-boolean v2, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    move/from16 v35, v2

    iget v2, v3, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    sget v37, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    move/from16 v36, v2

    move/from16 v27, v4

    const/4 v2, 0x0

    new-array v4, v2, [I

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    move-object/from16 v41, v4

    move/from16 v32, v5

    move-object/from16 v24, v6

    move/from16 v30, v7

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v31, v15

    invoke-direct/range {v23 .. v44}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v4, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v4, v4, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    move/from16 v5, p4

    if-ne v4, v5, :cond_7

    iget v5, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    const/4 v6, 0x2

    if-eqz v5, :cond_6

    if-ne v5, v6, :cond_8

    :cond_6
    iget-object v5, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v5}, Lcom/android/server/usb/UsbPortManager;->startBoost()V

    goto :goto_3

    :cond_7
    const/4 v6, 0x2

    :cond_8
    iget v5, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    if-eqz v4, :cond_9

    if-ne v4, v6, :cond_a

    :cond_9
    iget-object v5, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v5}, Lcom/android/server/usb/UsbPortManager;->stopBoost()V

    :cond_a
    :goto_3
    iput v4, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ClientCallback V1_2: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v3, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v4, 0x4

    invoke-static {v4, v12, v3}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    add-int/2addr v8, v5

    move/from16 v2, p2

    move/from16 p4, v5

    const/4 v15, 0x4

    goto/16 :goto_2

    :cond_b
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return-void

    :cond_c
    move-object v1, v2

    move v9, v8

    move-object/from16 v12, v16

    const-string/jumbo v2, "android.hardware.usb@1.1::IUsbCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    mul-int/lit8 v3, v13, 0x30

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    move-wide v2, v3

    move-wide v4, v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v8, v9

    :goto_4
    if-ge v8, v13, :cond_d

    new-instance v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    invoke-direct {v3}, Landroid/hardware/usb/V1_1/PortStatus_1_1;-><init>()V

    mul-int/lit8 v4, v8, 0x30

    int-to-long v4, v4

    iget-object v6, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    invoke-virtual {v6, v1, v2, v4, v5}, Landroid/hardware/usb/V1_0/PortStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    add-long v6, v4, v20

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    add-long v4, v4, v18

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    add-int/2addr v8, v5

    goto :goto_4

    :cond_d
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    iget-boolean v2, v2, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    if-nez v2, :cond_e

    goto/16 :goto_8

    :cond_e
    if-eqz v1, :cond_f

    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v0, 0x6

    invoke-static {v0, v12, v11}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v8, v9

    :goto_5
    if-ge v8, v2, :cond_15

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    new-instance v23, Lcom/android/server/usb/hal/port/RawPortInfo;

    iget-object v4, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v5, v4, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v6, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    iget v7, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-boolean v11, v4, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v13, v4, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v14, v4, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v15, v4, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v4, v4, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    sget v37, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    move/from16 p1, v2

    new-array v2, v9, [I

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v26, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    move-object/from16 v41, v2

    move/from16 v32, v4

    move-object/from16 v24, v5

    move/from16 v25, v6

    move/from16 v27, v7

    move/from16 v28, v11

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    invoke-direct/range {v23 .. v44}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v3, v2, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_11

    iget v4, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    const/4 v6, 0x2

    if-eqz v4, :cond_10

    if-ne v4, v6, :cond_12

    :cond_10
    iget-object v4, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4}, Lcom/android/server/usb/UsbPortManager;->startBoost()V

    goto :goto_6

    :cond_11
    const/4 v6, 0x2

    :cond_12
    iget v4, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    if-eqz v3, :cond_13

    if-ne v3, v6, :cond_14

    :cond_13
    iget-object v4, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4}, Lcom/android/server/usb/UsbPortManager;->stopBoost()V

    :cond_14
    :goto_6
    iput v3, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ClientCallback V1_1: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v4, 0x4

    invoke-static {v4, v12, v2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    add-int/2addr v8, v5

    move/from16 v2, p1

    goto/16 :goto_5

    :cond_15
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return-void

    :cond_16
    move-object v1, v2

    move-object/from16 v12, v16

    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v13, v14}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    if-nez v1, :cond_17

    const-string v1, " role switch successful"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v4, 0x4

    invoke-static {v4, v12, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    const-string v1, " role switch failed"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v1, 0x6

    invoke-static {v1, v12, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    move-object v1, v2

    move v9, v8

    move-object v12, v10

    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    mul-int/lit8 v3, v13, 0x28

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    move-wide v2, v3

    move-wide v4, v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v8, v9

    :goto_7
    if-ge v8, v13, :cond_19

    new-instance v3, Landroid/hardware/usb/V1_0/PortStatus;

    invoke-direct {v3}, Landroid/hardware/usb/V1_0/PortStatus;-><init>()V

    mul-int/lit8 v4, v8, 0x28

    int-to-long v4, v4

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/hardware/usb/V1_0/PortStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    add-int/2addr v8, v5

    goto :goto_7

    :cond_19
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    iget-boolean v2, v2, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    if-nez v2, :cond_1a

    :goto_8
    return-void

    :cond_1a
    if-eqz v1, :cond_1b

    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v0, 0x6

    invoke-static {v0, v12, v11}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v8, v9

    :goto_9
    if-ge v8, v2, :cond_1c

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    add-int/2addr v8, v5

    check-cast v3, Landroid/hardware/usb/V1_0/PortStatus;

    new-instance v17, Lcom/android/server/usb/hal/port/RawPortInfo;

    iget-object v4, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v6, v3, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    iget v7, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iget-boolean v11, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v13, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v14, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v15, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v5, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    sget v31, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    move/from16 p1, v2

    new-array v2, v9, [I

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v20, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v35, v2

    move-object/from16 v18, v4

    move/from16 v26, v5

    move/from16 v19, v6

    move/from16 v21, v7

    move/from16 v22, v11

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    invoke-direct/range {v17 .. v38}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ClientCallback V1_0: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v4, 0x4

    invoke-static {v4, v12, v2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move/from16 v2, p1

    goto :goto_9

    :cond_1c
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "android.hardware.usb@1.2::IUsbCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "android.hardware.usb@1.2::IUsbCallback@Stub"

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
