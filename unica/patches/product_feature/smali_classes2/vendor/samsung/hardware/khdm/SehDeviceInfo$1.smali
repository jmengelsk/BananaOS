.class public final Lvendor/samsung/hardware/khdm/SehDeviceInfo$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Lvendor/samsung/hardware/khdm/SehDeviceInfo;

    invoke-direct {p0}, Lvendor/samsung/hardware/khdm/SehDeviceInfo;-><init>()V

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/khdm/SehDeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [Lvendor/samsung/hardware/khdm/SehDeviceInfo;

    return-object p0
.end method
