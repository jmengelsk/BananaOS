.class public final Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCloseActivities:Ljava/util/ArrayList;

.field public final mOpenActivities:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mOpenActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivitiesByTask$OpenCloseActivities;->mCloseActivities:Ljava/util/ArrayList;

    return-void
.end method
