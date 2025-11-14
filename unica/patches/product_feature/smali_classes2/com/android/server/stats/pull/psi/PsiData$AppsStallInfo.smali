.class public final Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAvg10SecPercentage:F

.field public final mAvg300SecPercentage:F

.field public final mAvg60SecPercentage:F

.field public final mTotalUsec:J


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg10SecPercentage:F

    iput p2, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg60SecPercentage:F

    iput p3, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg300SecPercentage:F

    iput-wide p4, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mTotalUsec:J

    return-void
.end method
