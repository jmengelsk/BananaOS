.class public Lcom/android/server/selinux/QuotaLimiter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mCurrentWindow:J

.field public mMaxPermits:I

.field public mPermitsGranted:I

.field public final mWindowSize:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/selinux/QuotaLimiter;->mClock:Lcom/android/internal/os/Clock;

    iput-object p2, p0, Lcom/android/server/selinux/QuotaLimiter;->mWindowSize:Ljava/time/Duration;

    iput p3, p0, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    return-void
.end method
