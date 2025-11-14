.class public final Lcom/android/server/usage/UsageStatsService$1;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 3

    new-instance p3, Landroid/app/usage/UsageEvents$Event;

    const/16 v0, 0xb

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p3, v0, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    shl-int/lit8 p4, p4, 0x10

    const v0, 0xffff

    and-int/2addr p5, v0

    or-int/2addr p4, p5

    iput p4, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    iput-object p1, p3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    sget-boolean p1, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method
