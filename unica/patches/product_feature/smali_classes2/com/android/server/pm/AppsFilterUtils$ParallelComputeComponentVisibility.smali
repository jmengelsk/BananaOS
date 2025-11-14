.class public final Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mExistingSettings:Landroid/util/ArrayMap;

.field public final mForceQueryable:Landroid/util/ArraySet;

.field public final mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;Landroid/util/ArraySet;Lcom/android/server/utils/WatchedArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mExistingSettings:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mForceQueryable:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    return-void
.end method
