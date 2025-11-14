.class public final Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLimit:I

.field public final mWindowSize:Ljava/time/Duration;


# direct methods
.method public constructor <init>(ILjava/time/Duration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->mLimit:I

    iput-object p2, p0, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->mWindowSize:Ljava/time/Duration;

    return-void
.end method
