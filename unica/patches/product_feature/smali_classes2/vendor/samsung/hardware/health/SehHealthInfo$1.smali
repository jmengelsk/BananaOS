.class public final Lvendor/samsung/hardware/health/SehHealthInfo$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 7

    new-instance p0, Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-direct {p0}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string/jumbo v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_12d

    :try_start_16
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_25

    :goto_20
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p0

    :cond_25
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    :try_start_2b
    sget-object v2, Landroid/hardware/health/HealthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/health/HealthInfo;

    iput-object v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    goto :goto_20

    :cond_40
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5d

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_57

    goto :goto_20

    :cond_57
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    :try_start_5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_74

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6e

    goto :goto_20

    :cond_6e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_74
    :try_start_74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_8b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_85

    goto :goto_20

    :cond_85
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    :try_start_8b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_95
    .catchall {:try_start_8b .. :try_end_95} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a2

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9c

    goto :goto_20

    :cond_9c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a2
    :try_start_a2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ba

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b4

    goto/16 :goto_20

    :cond_b4
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ba
    :try_start_ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    goto/16 :goto_20

    :cond_cc
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    goto/16 :goto_20

    :cond_e4
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_102

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fc

    goto/16 :goto_20

    :cond_fc
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_102
    :try_start_102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10c
    .catchall {:try_start_102 .. :try_end_10c} :catchall_12b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_114

    goto/16 :goto_20

    :cond_114
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11a
    :try_start_11a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I
    :try_end_120
    .catchall {:try_start_11a .. :try_end_120} :catchall_12b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_125

    goto/16 :goto_20

    :cond_125
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_12b
    move-exception p0

    goto :goto_136

    :cond_12d
    :try_start_12d
    new-instance p0, Landroid/os/BadParcelableException;

    const-string/jumbo v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_136
    .catchall {:try_start_12d .. :try_end_136} :catchall_12b

    :goto_136
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_13f

    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13f
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [Lvendor/samsung/hardware/health/SehHealthInfo;

    return-object p0
.end method
