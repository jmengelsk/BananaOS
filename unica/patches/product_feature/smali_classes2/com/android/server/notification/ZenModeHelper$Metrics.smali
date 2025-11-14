.class public final Lcom/android/server/notification/ZenModeHelper$Metrics;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mModeLogTimeMs:J

.field public mNumZenRules:I

.field public mPreviousZenMode:I

.field public mPreviousZenType:I

.field public mRuleCountLogTime:J

.field public mTypeLogTimeMs:J

.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    return-void
.end method


# virtual methods
.method public final emit()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    sget v1, Lcom/android/server/notification/ZenModeHelper$H;->$r8$clinit:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/32 v2, 0x1499700

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    sub-long v4, v2, v4

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v6, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v8, -0x1

    const-wide/32 v9, 0xea60

    if-ne v0, v7, :cond_0

    cmp-long v7, v4, v9

    if-lez v7, :cond_2

    :cond_0
    if-eq v0, v8, :cond_1

    iget-object v0, v6, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "dnd_mode_"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    long-to-int v4, v4

    invoke-static {v0, v7, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    iget v0, v6, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iput v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    iput-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v4, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    if-ne v5, v4, :cond_3

    cmp-long v6, v2, v9

    if-lez v6, :cond_5

    :cond_3
    if-eq v5, v8, :cond_4

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v6, v6, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "dnd_rule_count"

    sub-int v5, v4, v5

    invoke-static {v6, v7, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_0
    iput v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    iput-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "dnd_type_"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    sub-long v4, v2, v4

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v6, v6, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v11, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v11, :cond_6

    iget-object v11, v7, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v11, v11, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v11, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_1
    iget v11, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    if-ne v1, v11, :cond_8

    cmp-long v9, v4, v9

    if-lez v9, :cond_a

    :cond_8
    if-eq v11, v8, :cond_9

    iget-object v7, v7, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    long-to-int v4, v4

    invoke-static {v7, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_9
    iput-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    iput v1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    :cond_a
    monitor-exit v6

    return-void

    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onConfigChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method

.method public final onZenModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method
