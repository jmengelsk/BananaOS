.class public final Lvendor/samsung/hardware/security/hermes/SehCommandResult$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 7

    new-instance p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string/jumbo v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_57

    :try_start_19
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_55

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_28

    :goto_23
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p0

    :cond_28
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    :try_start_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_55

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_45

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3f

    goto :goto_23

    :cond_3f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    :try_start_45
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_55

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4f

    goto :goto_23

    :cond_4f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_55
    move-exception p0

    goto :goto_60

    :cond_57
    :try_start_57
    new-instance p0, Landroid/os/BadParcelableException;

    const-string/jumbo v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_55

    :goto_60
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_69

    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    return-object p0
.end method
