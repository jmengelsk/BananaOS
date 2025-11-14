.class public final Lcom/android/server/usage/UsageStatsService$3;
.super Landroid/app/UidObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$3;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUidGone(IZ)V
    .locals 6

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x14

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService$3;->onUidStateChanged(IIJI)V

    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$3;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
