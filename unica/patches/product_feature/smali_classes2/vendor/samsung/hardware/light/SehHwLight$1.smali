.class public final Lvendor/samsung/hardware/light/SehHwLight$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 7

    new-instance p0, Lvendor/samsung/hardware/light/SehHwLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    iput v0, p0, Lvendor/samsung/hardware/light/SehHwLight;->ordinal:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string/jumbo v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_70

    :try_start_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_6e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_30

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2a

    :goto_25
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p0

    :cond_2a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    :try_start_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_6e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_47

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_41

    goto :goto_25

    :cond_41
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    :try_start_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/light/SehHwLight;->ordinal:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_6e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    goto :goto_25

    :cond_58
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/light/SehHwLight;->type:I
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_6e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_68

    goto :goto_25

    :cond_68
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6e
    move-exception p0

    goto :goto_79

    :cond_70
    :try_start_70
    new-instance p0, Landroid/os/BadParcelableException;

    const-string/jumbo v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_6e

    :goto_79
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_82

    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [Lvendor/samsung/hardware/light/SehHwLight;

    return-object p0
.end method
