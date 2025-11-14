.class public Lcom/android/server/people/data/AppUsageStatsData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mChosenCount:I

.field public mLaunchCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    iput p2, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    return-void
.end method
