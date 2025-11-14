.class public final Lvendor/samsung/hardware/khdm/SehDeviceInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/samsung/hardware/khdm/SehDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hashedImei:[B

.field public imei0:[B

.field public isWrappedKey:Z

.field public macAddr:[B

.field public serialNumber:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lvendor/samsung/hardware/khdm/SehDeviceInfo$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->isWrappedKey:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string/jumbo v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_94

    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    :goto_1b
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->serialNumber:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3d

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_37

    goto :goto_1b

    :cond_37
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    :try_start_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->imei0:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_54

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4e

    goto :goto_1b

    :cond_4e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    :try_start_54
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->hashedImei:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_65

    goto :goto_1b

    :cond_65
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    :try_start_6b
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->macAddr:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    goto :goto_1b

    :cond_7c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    :try_start_82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->isWrappedKey:Z
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_92

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8c

    goto :goto_1b

    :cond_8c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_92
    move-exception p0

    goto :goto_9d

    :cond_94
    :try_start_94
    new-instance p0, Landroid/os/BadParcelableException;

    const-string/jumbo v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_92

    :goto_9d
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a6

    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a6
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->serialNumber:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->imei0:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->hashedImei:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->macAddr:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-boolean p0, p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->isWrappedKey:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    return-void
.end method
