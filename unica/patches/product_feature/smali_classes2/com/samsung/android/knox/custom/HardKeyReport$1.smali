.class public Lcom/samsung/android/knox/custom/HardKeyReport$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/custom/HardKeyReport;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/custom/HardKeyReport;
    .registers 2

    new-instance p0, Lcom/samsung/android/knox/custom/HardKeyReport;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/HardKeyReport;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Lcom/samsung/android/knox/custom/HardKeyReport;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/HardKeyReport;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Lcom/samsung/android/knox/custom/HardKeyReport;
    .registers 2

    new-array p0, p1, [Lcom/samsung/android/knox/custom/HardKeyReport;

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [Lcom/samsung/android/knox/custom/HardKeyReport;

    return-object p0
.end method
