.class public final Lcom/android/server/notification/PulledStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mTimePeriodEndMs:J

.field public final mTimePeriodStartMs:J

.field public final mUndecoratedPackageNames:Ljava/util/List;


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodStartMs:J

    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toParcelFileDescriptor(I)Landroid/os/ParcelFileDescriptor;
    .registers 4

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_11

    const-string/jumbo p0, "Unknown pulled stats request: "

    const-string/jumbo v1, "PulledStats"

    invoke-static {p1, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_11
    new-instance v1, Lcom/android/server/notification/PulledStats$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/notification/PulledStats$1;-><init>(Lcom/android/server/notification/PulledStats;[Landroid/os/ParcelFileDescriptor;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_19
    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public writeToProto(ILandroid/util/proto/ProtoOutputStream;)V
    .registers 9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const-string/jumbo p0, "Unknown pulled stats request: "

    const-string/jumbo p2, "PulledStats"

    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object p0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p1, :cond_35

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x20b00000001L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000001L

    invoke-virtual {p2, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_16

    :cond_35
    return-void
.end method
