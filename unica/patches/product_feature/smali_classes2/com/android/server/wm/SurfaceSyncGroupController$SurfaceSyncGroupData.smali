.class public final Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mOwningUid:I

.field public final mSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public constructor <init>(ILandroid/window/SurfaceSyncGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;->mOwningUid:I

    iput-object p2, p0, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;->mSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    return-void
.end method
