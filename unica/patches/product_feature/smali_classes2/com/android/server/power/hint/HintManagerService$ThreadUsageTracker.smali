.class public final Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mIsGraphicsPipeline:Z

.field public final mTid:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mTid:I

    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->mIsGraphicsPipeline:Z

    return-void
.end method
