.class public final Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mForceLoadReducedJpeg:Z

.field public final mScale:F


# direct methods
.method public constructor <init>(ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    iput-boolean p1, p0, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    return-void
.end method
