.class public final Lcom/android/server/power/stats/KernelWakelockStats$Entry;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public activeTimeUs:J

.field public count:I

.field public totalTimeUs:J

.field public version:I


# direct methods
.method public constructor <init>(IIJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    iput-wide p3, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    iput-wide p5, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    iput p2, p0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    return-void
.end method
