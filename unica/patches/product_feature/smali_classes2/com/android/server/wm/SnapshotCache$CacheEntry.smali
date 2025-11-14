.class public final Lcom/android/server/wm/SnapshotCache$CacheEntry;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final snapshot:Landroid/window/TaskSnapshot;

.field public final timestamp:J

.field public final topApp:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    iput-object p2, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->timestamp:J

    return-void
.end method
