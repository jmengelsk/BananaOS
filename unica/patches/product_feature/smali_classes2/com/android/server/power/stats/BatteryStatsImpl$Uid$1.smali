.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public mActiveOverflow:Landroid/util/ArrayMap;

.field public mCurOverflow:Ljava/lang/Object;

.field public mLastCleanupTimeMs:J

.field public mLastOverflowFinishTimeMs:J

.field public mLastOverflowTimeMs:J

.field public final mMap:Landroid/util/ArrayMap;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mUid:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;II)V
    .registers 5

    iput p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->$r8$classId:I

    packed-switch p4, :pswitch_data_20

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(I)V

    return-void

    :pswitch_e  #0x2
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(I)V

    return-void

    :pswitch_17  #0x1
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(I)V

    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_17  #00000001
        :pswitch_e  #00000002
    .end packed-switch
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "*overflow*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method public final cleanup(J)V
    .registers 6

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastCleanupTimeMs:J

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_f

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    :cond_f
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    const-string v0, "BatteryStatsImpl"

    const-string v1, "*overflow*"

    if-nez p1, :cond_3e

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Cleaning up with no active overflow, but have overflow entry "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    return-void

    :cond_3e
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_4c

    :cond_4b
    return-void

    :cond_4c
    :goto_4c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cleaning up with active overflow, but no overflow entry: cur="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " map="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final instantiateObject()Ljava/lang/Object;
    .registers 9

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_32

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v6, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    return-object v1

    :pswitch_16  #0x1
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-object p0, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v7, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    return-object v2

    :pswitch_27  #0x0
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Wakelock;-><init>()V

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_16  #00000001
    .end packed-switch
.end method

.method public final startObject(JLjava/lang/String;)Ljava/lang/Object;
    .registers 8

    if-nez p3, :cond_4

    const-string p3, ""

    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    const-string v2, "*overflow*"

    if-eqz v0, :cond_49

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableInt;

    if-eqz v0, :cond_49

    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    if-nez p1, :cond_43

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Have active overflow "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but null overflow"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryStatsImpl"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    iget p0, v0, Landroid/util/MutableInt;->value:I

    add-int/2addr p0, v1

    iput p0, v0, Landroid/util/MutableInt;->value:I

    return-object p1

    :cond_49
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sget v3, Lcom/android/server/power/stats/BatteryStatsImpl;->MAX_WAKELOCKS_PER_UID:I

    if-lt v0, v3, :cond_7a

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    if-nez v0, :cond_62

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v2, :cond_6d

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    :cond_6d
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/MutableInt;

    invoke-direct {v3, v1}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v2, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowTimeMs:J

    return-object v0

    :cond_7a
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final stopObject(JLjava/lang/String;)Ljava/lang/Object;
    .registers 9

    if-nez p3, :cond_4

    const-string p3, ""

    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2d

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableInt;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    if-eqz v1, :cond_2d

    iget v2, v0, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/util/MutableInt;->value:I

    if-gtz v2, :cond_2c

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowFinishTimeMs:J

    :cond_2c
    return-object v1

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unable to find object for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in uid "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mUid:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mapsize="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " activeoverflow="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " curoverflow="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_7a

    const-string p3, " lastOverflowTime="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowTimeMs:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_7a
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowFinishTimeMs:J

    cmp-long p3, v1, v3

    if-eqz p3, :cond_8b

    const-string p3, " lastOverflowFinishTime="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowFinishTimeMs:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_8b
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastCleanupTimeMs:J

    cmp-long p3, v1, v3

    if-eqz p3, :cond_9c

    const-string p3, " lastCleanupTime="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastCleanupTimeMs:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_9c
    const-string p0, "BatteryStatsImpl"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
