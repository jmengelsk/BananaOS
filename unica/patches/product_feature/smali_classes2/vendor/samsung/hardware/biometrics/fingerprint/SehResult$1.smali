.class public final Lvendor/samsung/hardware/biometrics/fingerprint/SehResult$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 7

    new-instance p0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string/jumbo v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_54

    :try_start_16
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_52

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_52

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    goto :goto_20

    :cond_3c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->data:[B
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_52

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4c

    goto :goto_20

    :cond_4c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_52
    move-exception p0

    goto :goto_5d

    :cond_54
    :try_start_54
    new-instance p0, Landroid/os/BadParcelableException;

    const-string/jumbo v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_52

    :goto_5d
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_66

    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    return-object p0
.end method
