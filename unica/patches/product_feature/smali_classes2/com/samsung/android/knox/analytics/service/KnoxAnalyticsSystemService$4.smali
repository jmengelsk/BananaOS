.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

.field public final synthetic val$isForceful:Z

.field public final synthetic val$isNewActivation:Z

.field public final synthetic val$start:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;ZZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    iput-boolean p2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$start:Z

    iput-boolean p3, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$isNewActivation:Z

    iput-boolean p4, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$isForceful:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    iget-object v0, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2d

    :try_start_b
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    iget-object v0, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_24

    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    iget-object v1, v1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mUserUnlockStatusLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_21

    :try_start_18
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "broadcastKAStatusToMDM(): after wait"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_20} :catch_24

    goto :goto_0

    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v1
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_24} :catch_24

    :catch_24
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "broadcastKAStatusToMDM(): Interrupted exception"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2d
    sget-object v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "broadcastKAStatusToMDM(): after while"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    iget-object v0, v0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$start:Z

    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$isNewActivation:Z

    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService$4;->val$isForceful:Z

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastKAStatusToMDM(Landroid/content/Context;ZZZ)V

    return-void
.end method
