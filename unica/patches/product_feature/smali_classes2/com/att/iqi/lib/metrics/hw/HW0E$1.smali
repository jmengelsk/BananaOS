.class Lcom/att/iqi/lib/metrics/hw/HW0E$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/att/iqi/lib/metrics/hw/HW0E;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/hw/HW0E;
    .locals 0

    new-instance p0, Lcom/att/iqi/lib/metrics/hw/HW0E;

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/hw/HW0E;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/hw/HW0E$1;->createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/hw/HW0E;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/att/iqi/lib/metrics/hw/HW0E;
    .locals 0

    new-array p0, p1, [Lcom/att/iqi/lib/metrics/hw/HW0E;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/hw/HW0E$1;->newArray(I)[Lcom/att/iqi/lib/metrics/hw/HW0E;

    move-result-object p0

    return-object p0
.end method
