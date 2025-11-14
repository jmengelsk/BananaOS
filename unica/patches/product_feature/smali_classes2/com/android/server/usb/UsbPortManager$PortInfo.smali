.class public final Lcom/android/server/usb/UsbPortManager$PortInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCanChangeDataRole:Z

.field public mCanChangeMode:Z

.field public mCanChangePowerRole:Z

.field public mComplianceWarningChange:I

.field public mConnectedAtMillis:J

.field public mDisplayPortAltModeChange:I

.field public mDisposition:I

.field public mLastConnectDurationMillis:J

.field public final mUsbPort:Landroid/hardware/usb/UsbPort;

.field public mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/usb/UsbPort;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    iput p1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 9

    const-string/jumbo v2, "usb_ports"

    const-wide v3, 0x20b00000002L

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    const-string/jumbo v3, "port"

    const-wide v4, 0x10b00000001L

    invoke-static {p1, v3, v4, v5, v2}, Lcom/android/internal/usb/DumpUtils;->writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v3, "status"

    const-wide v4, 0x10b00000002L

    invoke-static {p1, v3, v4, v5, v2}, Lcom/android/internal/usb/DumpUtils;->writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V

    iget-boolean v2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    const-string/jumbo v3, "can_change_mode"

    const-wide v4, 0x10800000003L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    iget-boolean v2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    const-string/jumbo v3, "can_change_power_role"

    const-wide v4, 0x10800000004L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    iget-boolean v2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    const-string/jumbo v3, "can_change_data_role"

    const-wide v4, 0x10800000005L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    iget-wide v5, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    const-string/jumbo v2, "connected_at_millis"

    const-wide v3, 0x10300000006L

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    iget-wide v4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    const-string/jumbo v1, "last_connect_duration_millis"

    const-wide v2, 0x10300000007L

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final setStatus(IZIZIZIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p13

    move-object/from16 v13, p15

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    move-result-object v1

    invoke-static {v11, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v15, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    move v1, v15

    goto :goto_0

    :cond_0
    iput v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    move v1, v14

    :goto_0
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object v2

    iput v15, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    if-nez v13, :cond_1

    if-eqz v2, :cond_1

    iput v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    :goto_1
    move v2, v14

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    if-eqz v13, :cond_2

    iput v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    goto :goto_1

    :cond_2
    move v2, v15

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v13}, Landroid/hardware/usb/DisplayPortAltModeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    goto :goto_1

    :goto_2
    move/from16 v3, p2

    goto :goto_3

    :cond_4
    move v1, v15

    move v2, v1

    goto :goto_2

    :goto_3
    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    move/from16 v3, p4

    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    move/from16 v3, p6

    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v3

    move/from16 v4, p1

    if-ne v3, v4, :cond_8

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v3

    move/from16 v5, p3

    if-ne v3, v5, :cond_8

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v3

    move/from16 v6, p5

    if-ne v3, v6, :cond_8

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v3

    move/from16 v7, p7

    if-ne v3, v7, :cond_8

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v3

    move/from16 v8, p8

    if-ne v3, v8, :cond_8

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v3

    move/from16 v9, p9

    if-ne v3, v9, :cond_8

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v3

    move/from16 v10, p10

    if-ne v3, v10, :cond_8

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v3

    move/from16 v12, p11

    if-ne v3, v12, :cond_8

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v3

    move/from16 v15, p12

    if-ne v3, v15, :cond_8

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getPlugState()I

    move-result v3

    move/from16 v14, p14

    if-eq v3, v14, :cond_5

    goto :goto_4

    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    new-instance v1, Landroid/hardware/usb/UsbPortStatus;

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v12

    move v12, v14

    move v10, v15

    invoke-direct/range {v1 .. v13}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    iput-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    :cond_8
    :goto_4
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez v1, :cond_9

    array-length v1, v11

    if-lez v1, :cond_9

    const/4 v14, 0x1

    iput v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    goto :goto_5

    :cond_9
    const/4 v14, 0x1

    :goto_5
    new-instance v1, Landroid/hardware/usb/UsbPortStatus;

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v12, p14

    move-object/from16 v13, p15

    invoke-direct/range {v1 .. v13}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    iput-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    :goto_6
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_a

    iget-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    iput-wide v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    return v14

    :cond_a
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    if-nez v1, :cond_b

    iget-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    iput-wide v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    :cond_b
    return v14
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "port="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangePowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectedAtMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastConnectDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
