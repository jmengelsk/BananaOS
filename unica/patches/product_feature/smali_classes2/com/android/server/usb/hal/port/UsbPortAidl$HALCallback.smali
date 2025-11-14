.class public final Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/usb/IUsbCallback;


# instance fields
.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;

.field public preDataRole:I


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 43

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v5, 0x4

    sget-object v6, Landroid/hardware/usb/IUsbCallback;->DESCRIPTOR:Ljava/lang/String;

    const v7, 0xffffff

    const/4 v8, 0x1

    if-lt v1, v8, :cond_0

    if-gt v1, v7, :cond_0

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v9, 0x5f4e5446

    if-ne v1, v9, :cond_1

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :cond_1
    if-ne v1, v7, :cond_2

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :cond_2
    const v6, 0xfffffe

    if-ne v1, v6, :cond_3

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    const-string v0, "7fe46e9531884739d925b8caeee9dba5c411e228"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :cond_3
    const-string/jumbo v6, "UsbPortManager"

    const-string v7, " enable:"

    const-string/jumbo v9, "notifyEnableUsbDataStatus: opID:"

    const-string v10, " successful"

    const-string v12, " failed. err:"

    const-string v13, ": opID:"

    const/4 v14, 0x6

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    if-nez v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "notifyResetUsbPortStatus:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v5, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v14, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez v1, :cond_5

    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    move v11, v8

    :goto_1
    invoke-interface {v0, v11}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v1, "notifyResetUsbPortStatus: Failed to call onOperationComplete"

    invoke-static {v6, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    if-nez v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v5, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "notifyLimitPowerTransferStatus: opID:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v14, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_1
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/IUsbOperationInternal;

    if-eqz v2, :cond_f

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez v1, :cond_7

    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    move v11, v8

    :goto_3
    invoke-interface {v0, v11}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v1, "enableLimitPowerTransfer: Failed to call onOperationComplete"

    invoke-static {v6, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v5, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v14, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return v8

    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    if-nez v3, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyContaminantEnabledStatus:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v5, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "notifyContaminantEnabledStatus: opID:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v14, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return v8

    :pswitch_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    if-nez v1, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v5, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "notifyEnableUsbDataWhileDockedStatus: opID:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v14, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_4
    :try_start_2
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/IUsbOperationInternal;

    if-eqz v2, :cond_f

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez v1, :cond_b

    const/4 v11, 0x0

    goto :goto_5

    :cond_b
    move v11, v8

    :goto_5
    invoke-interface {v0, v11}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_8

    :catch_2
    move-exception v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v1, "notifyEnableUsbDataWhileDockedStatus: Failed to call onOperationComplete"

    invoke-static {v6, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    if-nez v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyEnableUsbDataStatus:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v5, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v10, 0x6

    invoke-static {v10, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_6
    :try_start_3
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    if-nez v3, :cond_d

    const/4 v11, 0x0

    goto :goto_7

    :cond_d
    move v11, v8

    :goto_7
    invoke-interface {v0, v11}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v1, "notifyEnableUsbDataStatus: Failed to call onOperationComplete"

    invoke-static {v6, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/hardware/usb/PortRole;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/PortRole;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " role switch successful. opID:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    invoke-static {v5, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " role switch failed. err:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "opID:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v10, 0x6

    invoke-static {v10, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return v8

    :pswitch_7
    sget-object v1, Landroid/hardware/usb/PortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/usb/PortStatus;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;

    iget-boolean v2, v2, Lcom/android/server/usb/hal/port/UsbPortAidl;->mSystemReady:Z

    if-nez v2, :cond_10

    :cond_f
    :goto_8
    return v8

    :cond_10
    if-eqz v3, :cond_11

    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v0, "port status enquiry failed"

    const/4 v10, 0x6

    invoke-static {v10, v6, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v3, :cond_22

    aget-object v9, v1, v7

    new-instance v12, Lcom/android/server/usb/hal/port/RawPortInfo;

    iget-object v13, v9, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    iget-object v10, v9, Landroid/hardware/usb/PortStatus;->supportedModes:[B

    array-length v14, v10

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ge v15, v14, :cond_12

    aget-byte v11, v10, v15

    invoke-virtual {v0, v11}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toPortMode(B)I

    move-result v11

    or-int v16, v16, v11

    add-int/2addr v15, v8

    goto :goto_a

    :cond_12
    iget-object v10, v9, Landroid/hardware/usb/PortStatus;->supportedContaminantProtectionModes:[B

    array-length v11, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_b
    if-ge v14, v11, :cond_13

    const/16 v34, 0x2

    aget-byte v4, v10, v14

    invoke-virtual {v0, v4}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toContaminantProtectionStatus(B)I

    move-result v4

    or-int/2addr v15, v4

    add-int/2addr v14, v8

    goto :goto_b

    :cond_13
    const/16 v34, 0x2

    iget-byte v4, v9, Landroid/hardware/usb/PortStatus;->currentMode:B

    invoke-virtual {v0, v4}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toPortMode(B)I

    move-result v4

    iget-boolean v10, v9, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    iget-byte v11, v9, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    iget-boolean v14, v9, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    move/from16 v35, v8

    iget-byte v8, v9, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    move/from16 v36, v5

    iget-boolean v5, v9, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    move-object/from16 p1, v1

    iget-boolean v1, v9, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    move/from16 v22, v1

    iget-byte v1, v9, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    invoke-virtual {v0, v1}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toContaminantProtectionStatus(B)I

    move-result v23

    iget-boolean v1, v9, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    move/from16 v24, v1

    iget-byte v1, v9, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    move/from16 v25, v1

    iget-object v1, v9, Landroid/hardware/usb/PortStatus;->usbDataStatus:[B

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 v21, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    array-length v5, v1

    if-ge v3, v5, :cond_14

    aget-byte v5, v1, v3

    packed-switch v5, :pswitch_data_1

    goto :goto_d

    :pswitch_8
    or-int/lit16 v4, v4, 0x88

    goto :goto_d

    :pswitch_9
    or-int/lit8 v4, v4, 0x48

    goto :goto_d

    :pswitch_a
    or-int/lit8 v4, v4, 0x20

    goto :goto_d

    :pswitch_b
    or-int/lit8 v4, v4, 0x10

    goto :goto_d

    :pswitch_c
    or-int/lit16 v4, v4, 0xc8

    goto :goto_d

    :pswitch_d
    or-int/lit8 v4, v4, 0x4

    goto :goto_d

    :pswitch_e
    or-int/lit8 v4, v4, 0x2

    goto :goto_d

    :pswitch_f
    or-int/lit8 v4, v4, 0x1

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_14
    const-string v1, "AIDL UsbDataStatus:"

    invoke-static {v4, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    move/from16 v3, v36

    invoke-static {v3, v6, v1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v9, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    iget-byte v3, v9, Landroid/hardware/usb/PortStatus;->powerBrickStatus:B

    iget-boolean v5, v9, Landroid/hardware/usb/PortStatus;->supportsComplianceWarnings:Z

    move/from16 v27, v1

    iget-object v1, v9, Landroid/hardware/usb/PortStatus;->complianceWarnings:[I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v28, v3

    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    move/from16 v26, v4

    array-length v4, v1

    move-object/from16 v17, v1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v4, :cond_18

    move/from16 v18, v1

    aget v1, v17, v18

    move/from16 v19, v4

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v4

    move/from16 v29, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    move/from16 v4, v35

    if-lt v1, v4, :cond_17

    const/16 v5, 0x9

    if-le v1, v5, :cond_15

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_f

    :cond_15
    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_f

    :cond_16
    move/from16 v4, v35

    :cond_17
    :goto_f
    add-int/lit8 v1, v18, 0x1

    move/from16 v35, v4

    move/from16 v4, v19

    move/from16 v5, v29

    goto :goto_e

    :cond_18
    move/from16 v29, v5

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v30

    iget v1, v9, Landroid/hardware/usb/PortStatus;->plugOrientation:I

    iget-object v3, v9, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    array-length v4, v3

    const/4 v5, 0x0

    const/16 v32, 0x0

    :goto_10
    if-ge v5, v4, :cond_1a

    move/from16 v31, v1

    aget-object v1, v3, v5

    iget v1, v1, Landroid/hardware/usb/AltModeData;->_tag:I

    if-eqz v1, :cond_19

    :goto_11
    const/16 v35, 0x1

    goto :goto_12

    :cond_19
    const/16 v32, 0x1

    goto :goto_11

    :goto_12
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v31

    goto :goto_10

    :cond_1a
    move/from16 v31, v1

    iget-object v1, v9, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_1c

    aget-object v5, v1, v4

    move-object/from16 v17, v1

    iget v1, v5, Landroid/hardware/usb/AltModeData;->_tag:I

    if-nez v1, :cond_1b

    invoke-virtual {v5}, Landroid/hardware/usb/AltModeData;->getDisplayPortAltModeData()Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    move-result-object v1

    new-instance v37, Landroid/hardware/usb/DisplayPortAltModeInfo;

    iget v3, v1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->partnerSinkStatus:I

    iget v4, v1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->cableStatus:I

    iget v5, v1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->pinAssignment:I

    packed-switch v5, :pswitch_data_2

    const/16 v40, 0x0

    goto :goto_14

    :pswitch_10
    move/from16 v40, v34

    goto :goto_14

    :pswitch_11
    const/16 v40, 0x4

    :goto_14
    iget-boolean v5, v1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->hpd:Z

    iget v1, v1, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->linkTrainingStatus:I

    move/from16 v42, v1

    move/from16 v38, v3

    move/from16 v39, v4

    move/from16 v41, v5

    invoke-direct/range {v37 .. v42}, Landroid/hardware/usb/DisplayPortAltModeInfo;-><init>(IIIZI)V

    const/4 v1, 0x1

    :goto_15
    move/from16 v20, v8

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v14

    move/from16 v14, v16

    move-object/from16 v33, v37

    move/from16 v16, p3

    goto :goto_16

    :cond_1b
    const/4 v1, 0x1

    add-int/2addr v4, v1

    move-object/from16 v1, v17

    goto :goto_13

    :cond_1c
    const/4 v1, 0x1

    const/16 v37, 0x0

    goto :goto_15

    :goto_16
    invoke-direct/range {v12 .. v33}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-byte v3, v9, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    if-ne v3, v1, :cond_1e

    iget v1, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->preDataRole:I

    move/from16 v4, v34

    if-eqz v1, :cond_1d

    if-ne v1, v4, :cond_1f

    :cond_1d
    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbPortManager;->startBoost()V

    goto :goto_17

    :cond_1e
    move/from16 v4, v34

    :cond_1f
    iget v1, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->preDataRole:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_21

    if-eqz v3, :cond_20

    if-ne v3, v4, :cond_21

    :cond_20
    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbPortManager;->stopBoost()V

    :cond_21
    :goto_17
    iput v3, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->preDataRole:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ClientCallback AIDL V1: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v9, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3, v6, v1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/16 v35, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move v5, v3

    move/from16 v8, v35

    move/from16 v3, p2

    goto/16 :goto_9

    :cond_22
    move/from16 v35, v8

    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return v35

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final toContaminantProtectionStatus(B)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const-string/jumbo v0, "Unrecognized aidlContaminantProtection:"

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v0, "UsbPortManager"

    const/4 v1, 0x6

    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return p0
.end method

.method public final toPortMode(B)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "Unrecognized aidlPortMode:"

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v0, "UsbPortManager"

    const/4 v1, 0x6

    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method
