.class public final Lcom/android/server/utils/SnapshotCache$Auto;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/utils/SnapshotCache$Auto;->$r8$classId:I

    invoke-direct {p0}, Lcom/android/server/utils/SnapshotCache;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V
    .registers 5

    iput p4, p0, Lcom/android/server/utils/SnapshotCache$Auto;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/server/utils/SnapshotCache$Auto;->$r8$classId:I

    packed-switch v0, :pswitch_data_1a

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "cannot snapshot a sealed snaphot"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/utils/Snappable;

    invoke-interface {p0}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/Snappable;

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_e  #00000000
    .end packed-switch
.end method
