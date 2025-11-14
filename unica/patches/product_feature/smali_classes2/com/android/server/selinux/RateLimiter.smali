.class public final Lcom/android/server/selinux/RateLimiter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mNextPermit:Ljava/time/Instant;

.field public final mWindow:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    iput-object v0, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    iput-object p1, p0, Lcom/android/server/selinux/RateLimiter;->mClock:Lcom/android/internal/os/Clock;

    iput-object p2, p0, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/time/Duration;)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, v0, p1}, Lcom/android/server/selinux/RateLimiter;-><init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;)V

    return-void
.end method
