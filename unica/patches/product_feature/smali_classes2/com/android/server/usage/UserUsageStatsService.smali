.class public final Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final INTERVAL_LENGTH:[J

.field public static final sConfigStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

.field public static final sDateFormat:Ljava/text/SimpleDateFormat;

.field public static final sEventStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

.field public static final sLoggingFormat:Ljava/text/SimpleDateFormat;

.field public static final sUsageStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;


# instance fields
.field public final mBufferLogs:Ljava/util/List;

.field public final mCachedEarlyEvents:Landroid/util/SparseArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field public final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field public final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field public final mDateFormat:Ljava/text/SimpleDateFormat;

.field public mDumpInitEndTime:J

.field public mDumpInitLastTimeSaved:J

.field public mLastBackgroundedPackage:Ljava/lang/String;

.field public final mListener:Lcom/android/server/usage/UsageStatsService;

.field public final mLogPrefix:Ljava/lang/String;

.field public mRealTimeSnapshot:J

.field public mStatsChanged:Z

.field public mSystemTimeSnapshot:J

.field public final mUserId:I

.field public final track:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_36

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>(I)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>(I)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>(I)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    return-void

    nop

    :array_36
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UsageStatsService;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/usage/UnixCalendar;

    invoke-direct {p1}, Lcom/android/server/usage/UnixCalendar;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    new-instance p1, Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v0, 0x5

    invoke-direct {p1, p3, v0}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;I)V

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/android/server/usage/IntervalStats;

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UsageStatsService;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "User["

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "] "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_74

    :pswitch_3  #0x18, 0x19
    const-string/jumbo v0, "UNKNOWN_TYPE_"

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x1f
    const-string p0, "APP_COMPONENT_USED"

    return-object p0

    :pswitch_e  #0x1e
    const-string p0, "LOCUS_ID_SET"

    return-object p0

    :pswitch_11  #0x1d
    const-string/jumbo p0, "USER_STOPPED"

    return-object p0

    :pswitch_15  #0x1c
    const-string/jumbo p0, "USER_UNLOCKED"

    return-object p0

    :pswitch_19  #0x1b
    const-string p0, "DEVICE_STARTUP"

    return-object p0

    :pswitch_1c  #0x1a
    const-string p0, "DEVICE_SHUTDOWN"

    return-object p0

    :pswitch_1f  #0x17
    const-string p0, "ACTIVITY_STOPPED"

    return-object p0

    :pswitch_22  #0x16
    const-string/jumbo p0, "ROLLOVER_FOREGROUND_SERVICE"

    return-object p0

    :pswitch_26  #0x15
    const-string p0, "CONTINUING_FOREGROUND_SERVICE"

    return-object p0

    :pswitch_29  #0x14
    const-string p0, "FOREGROUND_SERVICE_STOP"

    return-object p0

    :pswitch_2c  #0x13
    const-string p0, "FOREGROUND_SERVICE_START"

    return-object p0

    :pswitch_2f  #0x12
    const-string p0, "KEYGUARD_HIDDEN"

    return-object p0

    :pswitch_32  #0x11
    const-string p0, "KEYGUARD_SHOWN"

    return-object p0

    :pswitch_35  #0x10
    const-string/jumbo p0, "SCREEN_NON_INTERACTIVE"

    return-object p0

    :pswitch_39  #0xf
    const-string/jumbo p0, "SCREEN_INTERACTIVE"

    return-object p0

    :pswitch_3d  #0xe
    const-string/jumbo p0, "SLICE_PINNED"

    return-object p0

    :pswitch_41  #0xd
    const-string/jumbo p0, "SLICE_PINNED_PRIV"

    return-object p0

    :pswitch_45  #0xc
    const-string/jumbo p0, "NOTIFICATION_INTERRUPTION"

    return-object p0

    :pswitch_49  #0xb
    const-string/jumbo p0, "STANDBY_BUCKET_CHANGED"

    return-object p0

    :pswitch_4d  #0xa
    const-string/jumbo p0, "NOTIFICATION_SEEN"

    return-object p0

    :pswitch_51  #0x9
    const-string p0, "CHOOSER_ACTION"

    return-object p0

    :pswitch_54  #0x8
    const-string/jumbo p0, "SHORTCUT_INVOCATION"

    return-object p0

    :pswitch_58  #0x7
    const-string/jumbo p0, "USER_INTERACTION"

    return-object p0

    :pswitch_5c  #0x6
    const-string/jumbo p0, "SYSTEM_INTERACTION"

    return-object p0

    :pswitch_60  #0x5
    const-string p0, "CONFIGURATION_CHANGE"

    return-object p0

    :pswitch_63  #0x4
    const-string p0, "CONTINUE_PREVIOUS_DAY"

    return-object p0

    :pswitch_66  #0x3
    const-string p0, "END_OF_DAY"

    return-object p0

    :pswitch_69  #0x2
    const-string p0, "ACTIVITY_PAUSED"

    return-object p0

    :pswitch_6c  #0x1
    const-string p0, "ACTIVITY_RESUMED"

    return-object p0

    :pswitch_6f  #0x0
    const-string/jumbo p0, "NONE"

    return-object p0

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_6f  #00000000
        :pswitch_6c  #00000001
        :pswitch_69  #00000002
        :pswitch_66  #00000003
        :pswitch_63  #00000004
        :pswitch_60  #00000005
        :pswitch_5c  #00000006
        :pswitch_58  #00000007
        :pswitch_54  #00000008
        :pswitch_51  #00000009
        :pswitch_4d  #0000000a
        :pswitch_49  #0000000b
        :pswitch_45  #0000000c
        :pswitch_41  #0000000d
        :pswitch_3d  #0000000e
        :pswitch_39  #0000000f
        :pswitch_35  #00000010
        :pswitch_32  #00000011
        :pswitch_2f  #00000012
        :pswitch_2c  #00000013
        :pswitch_29  #00000014
        :pswitch_26  #00000015
        :pswitch_22  #00000016
        :pswitch_1f  #00000017
        :pswitch_3  #00000018
        :pswitch_3  #00000019
        :pswitch_1c  #0000001a
        :pswitch_19  #0000001b
        :pswitch_15  #0000001c
        :pswitch_11  #0000001d
        :pswitch_e  #0000001e
        :pswitch_b  #0000001f
    .end packed-switch
.end method

.method public static formatDateTime(JZ)Ljava/lang/String;
    .registers 5

    if-eqz p2, :cond_1e

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatElapsedTime(JZ)Ljava/lang/String;
    .registers 6

    if-eqz p2, :cond_1b

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intervalToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const-string p0, "?"

    return-object p0

    :cond_e
    const-string/jumbo p0, "yearly"

    return-object p0

    :cond_12
    const-string/jumbo p0, "monthly"

    return-object p0

    :cond_16
    const-string/jumbo p0, "weekly"

    return-object p0

    :cond_1a
    const-string/jumbo p0, "daily"

    return-object p0
.end method

.method public static printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V
    .registers 5

    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v0, v1, p2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "time"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {p2}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo p2, "package"

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz p2, :cond_2a

    const-string/jumbo v0, "class"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_2a
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p2, :cond_38

    const-string/jumbo v0, "config"

    invoke-static {p2}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_38
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p2, :cond_42

    const-string/jumbo v0, "shortcutId"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_42
    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v0, 0xb

    if-ne p2, v0, :cond_65

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getAppStandbyBucket()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "standbyBucket"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getStandbyReason()I

    move-result p2

    invoke-static {p2}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "reason"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_7d

    :cond_65
    const/4 v0, 0x1

    if-eq p2, v0, :cond_6f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6f

    const/16 v0, 0x17

    if-ne p2, v0, :cond_7d

    :cond_6f
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "instanceId"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_7d
    :goto_7d
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8d

    const-string/jumbo p2, "taskRootPackage"

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_8d
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9d

    const-string/jumbo p2, "taskRootClass"

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_9d
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p2, :cond_a7

    const-string/jumbo v0, "channelId"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_a7
    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_b7

    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    if-eqz p2, :cond_b7

    invoke-virtual {p2}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_b7
    const-string/jumbo p2, "flags"

    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V
    .registers 9

    iget v0, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_e

    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    :cond_e
    :goto_e
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ": "

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo p1, "x for "

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-static {v3, v4, p3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_3f

    const-string p1, " (now running, started at "

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide p1, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    invoke-static {p1, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_3f
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static validRange(JJJ)Z
    .registers 6

    cmp-long p0, p2, p0

    if-gtz p0, :cond_a

    cmp-long p0, p2, p4

    if-gez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addBufferLog(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_3f

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_41

    :cond_3f
    :goto_3f
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_3d

    throw p0
.end method

.method public final checkAndGetTimeLocked()J
    .registers 26

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-nez v0, :cond_c

    goto/16 :goto_16c

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v4, v1, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v6, v4

    iget-wide v8, v1, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v8

    sub-long v8, v2, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x7d0

    cmp-long v0, v10, v12

    if-lez v0, :cond_16c

    const-string/jumbo v0, "UsageStatsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Time changed in by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v11, 0x3e8

    div-long v11, v8, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " seconds"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    iget-object v0, v1, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v10, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_56
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Time changed by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v13, v12

    move-object/from16 v16, v0

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_71
    if-ge v15, v13, :cond_fd

    move-wide/from16 v17, v4

    aget-object v4, v12, v15

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    move/from16 v19, v0

    const/4 v0, 0x0

    :goto_7e
    if-ge v0, v5, :cond_f0

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/AtomicFile;

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v21

    add-long v21, v21, v8

    const-wide/16 v23, 0x0

    cmp-long v23, v21, v23

    if-gez v23, :cond_a1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->delete()V
    :try_end_97
    .catchall {:try_start_56 .. :try_end_97} :catchall_9e

    move/from16 v23, v0

    move-object/from16 v22, v4

    move/from16 v21, v5

    goto :goto_e9

    :catchall_9e
    move-exception v0

    goto/16 :goto_16a

    :cond_a1
    :try_start_a1
    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a8} :catch_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_9e

    :catch_a8
    move/from16 v23, v0

    :try_start_aa
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v21

    move-object/from16 v22, v4

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move/from16 v21, v5

    const-string v5, "-c"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-c"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d3
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_e9
    add-int/lit8 v0, v23, 0x1

    move/from16 v5, v21

    move-object/from16 v4, v22

    goto :goto_7e

    :cond_f0
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/util/LongSparseArray;->clear()V

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v4, v17

    move/from16 v0, v19

    goto/16 :goto_71

    :cond_fd
    move-wide/from16 v17, v4

    const-string v4, " files deleted: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " files moved: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "UsageStatsDatabase"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v10
    :try_end_11d
    .catchall {:try_start_aa .. :try_end_11d} :catchall_9e

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    const-string/jumbo v0, "UsageStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onTimeChanged_ diff="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;

    move-wide/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJ)V

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iput-wide v6, v1, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    iput-wide v2, v1, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Time changed. actualSystemTime:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " expectedSystemTime:"

    const-string v9, " actualRealtime:"

    invoke-static {v0, v8, v4, v5, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UserUsageStatsService;->addBufferLog(Ljava/lang/String;)V

    goto :goto_16c

    :goto_16a
    :try_start_16a
    monitor-exit v10
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_9e

    throw v0

    :cond_16c
    :goto_16c
    return-wide v2
.end method

.method public final checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    const/4 v5, -0x1

    move v6, v3

    :goto_10
    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_32

    invoke-virtual {v2, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-c"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    move v5, v6

    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :catchall_2e
    move-exception v0

    move-object p0, v0

    goto/16 :goto_c5

    :cond_32
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_38

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_2e

    return-void

    :cond_38
    move v4, v5

    :goto_39
    if-ge v4, v7, :cond_62

    :try_start_3b
    new-instance v10, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v10}, Lcom/android/server/usage/IntervalStats;-><init>()V

    invoke-virtual {v2, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {v0, v6, v10, v3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_51} :catch_56
    .catchall {:try_start_3b .. :try_end_51} :catchall_2e

    add-int/lit8 v4, v4, 0x1

    move-object p0, v8

    move-object p1, v9

    goto :goto_39

    :catch_56
    move-exception v0

    move-object p0, v0

    :try_start_58
    const-string/jumbo p1, "UsageStatsDatabase"

    const-string v0, "Failed to check-in"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    return-void

    :cond_62
    :goto_62
    if-ge v5, v7, :cond_c3

    invoke-virtual {v2, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-c"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_b8

    const-string/jumbo p1, "UsageStatsDatabase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mark file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as checked-in"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_b8
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v5, p0}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    :cond_c3
    monitor-exit v1

    return-void

    :goto_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_58 .. :try_end_c6} :catchall_2e

    throw p0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V
    .registers 16

    xor-int/lit8 v3, p3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v0, -0x1

    int-to-long v0, v0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v0, v4

    add-long v5, v0, v7

    new-instance v4, Lcom/android/server/usage/UserUsageStatsService$6;

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(JJLjava/util/List;)V

    const/4 v11, 0x0

    move-wide v0, v5

    const/4 v5, 0x0

    move-object v10, v4

    move-wide v8, v7

    move-object v4, p0

    move-wide v6, v0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    move-object v0, v4

    move-wide v5, v6

    move-wide v7, v8

    const-string v1, "Last 24 hour events ("

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-nez p3, :cond_4c

    const-string/jumbo v1, "timeRange"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    const v9, 0x20015

    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_60

    :cond_4c
    const-string/jumbo v1, "beginTime"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "endTime"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :goto_60
    const-string v1, ")"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz p0, :cond_81

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    invoke-static {p1, v1, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    goto :goto_6e

    :cond_7e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_81
    const-string/jumbo p0, "mDumpInitLastTimeSaved"

    iget-wide v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitLastTimeSaved:J

    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo p0, "mDumpInitEndTime"

    iget-wide v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitEndTime:J

    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p0, " UsageStats RollOver history :"

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    monitor-enter p0

    :try_start_a4
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :goto_ae
    if-ge v5, v2, :cond_d0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ae

    :catchall_cd
    move-exception v0

    move-object p1, v0

    goto :goto_102

    :cond_d0
    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_a4 .. :try_end_d1} :catchall_cd

    move p0, v4

    :goto_d2
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge p0, v1, :cond_f5

    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v1, p0

    const/4 v4, 0x1

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_d2

    :cond_f5
    move-object v1, p1

    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_101

    iget-object p0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, v1, p3}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    :cond_101
    return-void

    :goto_102
    :try_start_102
    monitor-exit p0
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_cd

    throw p1
.end method

.method public final dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v5, 0x0

    if-eqz p2, :cond_ae

    array-length v6, p2

    if-nez v6, :cond_e

    goto/16 :goto_ae

    :cond_e
    :try_start_e
    aget-object v6, p2, v5

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_17} :catch_a7

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_ce

    :goto_1e
    move v6, v2

    goto :goto_4f

    :sswitch_20
    const-string/jumbo v7, "monthly"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    goto :goto_1e

    :cond_2a
    move v6, v0

    goto :goto_4f

    :sswitch_2c
    const-string/jumbo v7, "daily"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    goto :goto_1e

    :cond_36
    move v6, v1

    goto :goto_4f

    :sswitch_38
    const-string/jumbo v7, "yearly"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_42

    goto :goto_1e

    :cond_42
    move v6, v3

    goto :goto_4f

    :sswitch_44
    const-string/jumbo v7, "weekly"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    goto :goto_1e

    :cond_4e
    move v6, v5

    :goto_4f
    packed-switch v6, :pswitch_data_e0

    move v0, v2

    goto :goto_59

    :pswitch_54  #0x3
    move v0, v1

    goto :goto_59

    :pswitch_56  #0x2
    move v0, v5

    goto :goto_59

    :pswitch_58  #0x0
    move v0, v3

    :goto_59
    :pswitch_59  #0x1
    if-ne v0, v2, :cond_65

    :try_start_5b
    aget-object v0, p2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_65} :catch_a7

    :cond_65
    if-ltz v0, :cond_a0

    iget-object v1, v4, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v1, v1

    if-lt v0, v1, :cond_6d

    goto :goto_a0

    :cond_6d
    array-length v1, p2

    if-ne v1, v3, :cond_74

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    return-void

    :cond_74
    :try_start_74
    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_7e} :catch_99

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v0

    if-nez v0, :cond_8b

    const-string/jumbo p0, "the specified filename does not exist."

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_8b
    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    return-void

    :catch_99
    const-string/jumbo p0, "invalid filename specified."

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_a0
    :goto_a0
    const-string/jumbo p0, "the specified interval does not exist."

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_a7
    const-string/jumbo p0, "invalid interval specified."

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_ae
    :goto_ae
    iget-object p2, v4, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length p2, p2

    :goto_b1
    if-ge v5, p2, :cond_cc

    invoke-static {v5}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "interval="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/2addr v5, v3

    goto :goto_b1

    :cond_cc
    return-void

    nop

    :sswitch_data_ce
    .sparse-switch
        -0x2f307f7f -> :sswitch_44
        -0x2bc88576 -> :sswitch_38
        0x5aede19 -> :sswitch_2c
        0x49b5900d -> :sswitch_20
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_58  #00000000
        :pswitch_59  #00000001
        :pswitch_56  #00000002
        :pswitch_54  #00000003
    .end packed-switch
.end method

.method public final dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1e

    invoke-virtual {v1, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v0, p2, v4, v5}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1e
    return-void
.end method

.method public final init(JLjava/util/HashMap;Z)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    iget v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    if-eqz v0, :cond_e

    if-eqz p4, :cond_e

    invoke-virtual {p0, p3}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    :cond_e
    iget-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, p4, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    iget-object v1, p4, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_46

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_28

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create directory "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_43
    move-exception p0

    goto/16 :goto_144

    :cond_46
    invoke-virtual {p4}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    iget-boolean v1, p4, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    if-eqz v1, :cond_51

    invoke-virtual {p4, p1, p2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->prune(JZ)V

    goto :goto_54

    :cond_51
    invoke-virtual {p4}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    :goto_54
    iget-object p4, p4, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v1, p4

    move v2, v3

    :goto_58
    if-ge v2, v1, :cond_81

    aget-object v4, p4, v2

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    move-result v5

    if-gez v5, :cond_63

    goto :goto_7e

    :cond_63
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    move v7, v5

    :goto_68
    if-ge v7, v6, :cond_76

    invoke-virtual {v4, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    :cond_76
    :goto_76
    if-ge v5, v6, :cond_7e

    invoke-virtual {v4, v5}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    :cond_7e
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_13 .. :try_end_82} :catchall_43

    iget-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-boolean v0, p4, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    if-eqz v0, :cond_8b

    invoke-virtual {p4, p3}, Lcom/android/server/usage/UsageStatsDatabase;->prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V

    :cond_8b
    move p3, v3

    move p4, p3

    :goto_8d
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v0

    if-ge p3, v1, :cond_a5

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, p3}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    aput-object v1, v0, p3

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v0, v0, p3

    if-nez v0, :cond_a2

    add-int/lit8 p4, p4, 0x1

    :cond_a2
    add-int/lit8 p3, p3, 0x1

    goto :goto_8d

    :cond_a5
    if-lez p4, :cond_be

    array-length p3, v0

    if-eq p4, p3, :cond_ba

    const-string/jumbo p3, "UsageStatsService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    const-string/jumbo v1, "Some stats have no latest available"

    invoke-static {p4, v0, v1, p3}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    goto :goto_c1

    :cond_be
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    :goto_c1
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object p1, p1, v3

    if-eqz p1, :cond_134

    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    iget-wide p3, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    const/16 v0, 0x1a

    invoke-direct {p2, v0, p3, p4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    iget-wide p3, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitLastTimeSaved:J

    iget-wide p3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitEndTime:J

    const-string/jumbo p3, "UsageStatsService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p3, "android"

    iput-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    const/16 p3, 0x1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, p3, v0, v1}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string/jumbo p3, "android"

    iput-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    :cond_134
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-boolean p1, p1, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz p1, :cond_143

    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-interface {p1, p0}, Lcom/android/server/usage/AppStandbyInternal;->initializeDefaultsForSystemApps(I)V

    :cond_143
    return-void

    :goto_144
    :try_start_144
    monitor-exit v0
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_43

    throw p0
.end method

.method public final loadActiveStats(J)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-ge v1, v3, :cond_2e

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget-wide v4, v3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    cmp-long v4, p1, v4

    if-gez v4, :cond_1d

    aput-object v3, v2, v1

    goto :goto_2b

    :cond_1d
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v3, v2, v1

    iput-wide p1, v3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, p1

    iput-wide v4, v3, Lcom/android/server/usage/IntervalStats;->endTime:J

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2e
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->postOneTimeCheckIdleStates()V

    return-void
.end method

.method public final notifyStatsChanged()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    const-wide/32 v1, 0x124f80

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_11
    return-void
.end method

.method public final onPackageRemoved(JLjava/lang/String;)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, p3}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    const-string/jumbo v0, "UsageStatsService"

    const-string/jumbo v1, "onPackageRemoved "

    invoke-static {v1, p3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const-string/jumbo v0, "Unable to update package mappings on disk after removing token "

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2e
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(JLjava/lang/String;)I

    move-result p1
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_38

    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_3a
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_4c

    :catchall_38
    move-exception p0

    goto :goto_4e

    :catch_3a
    :try_start_3a
    const-string/jumbo p0, "UsageStatsDatabase"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    monitor-exit v1

    return p1

    :goto_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_38

    throw p0
.end method

.method public final persistActiveStats()V
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v0, :cond_68

    const-string/jumbo v0, "UsageStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    const-string v3, "Flushing usage stats to disk"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_13
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_48

    :try_start_1a
    iget v3, v0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ge v3, v4, :cond_24

    monitor-exit v2

    goto :goto_33

    :catchall_22
    move-exception v0

    goto :goto_4d

    :cond_24
    move v3, v5

    :goto_25
    array-length v4, v1

    if-ge v3, v4, :cond_32

    aget-object v4, v1, v3

    iget-object v6, v0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v4, v6}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_22

    :goto_33
    :try_start_33
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V

    move v0, v5

    :goto_39
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v1

    if-ge v0, v2, :cond_4a

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    aget-object v1, v1, v0

    invoke-virtual {v2, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :catch_48
    move-exception v0

    goto :goto_4f

    :cond_4a
    iput-boolean v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4c} :catch_48

    return-void

    :goto_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_22

    :try_start_4e
    throw v0
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4f} :catch_48

    :goto_4f
    const-string/jumbo v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Failed to persist active stats"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_68
    return-void
.end method

.method public final printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    if-eqz v2, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    iget-wide v6, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v8, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v10, 0x20015

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timeRange"

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_47

    :cond_2f
    iget-wide v3, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "beginTime"

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v3, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "endTime"

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :goto_47
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "packages"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_5d
    const-string/jumbo v7, "package"

    if-ge v6, v4, :cond_e7

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_7b

    iget-object v9, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v10, p5

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7b

    goto :goto_e3

    :cond_7b
    iget-object v9, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "totalTimeUsed"

    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "lastTimeUsed"

    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "totalTimeVisible"

    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "lastTimeVisible"

    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "lastTimeComponentUsed"

    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "totalTimeFS"

    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "lastTimeFS"

    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v7, v8, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "appLaunchCount"

    invoke-virtual {v0, v8, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_e3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5d

    :cond_e7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v4, "ChooserCounts"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_193

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_11c

    iget-object v8, v6, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v9, p5

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11c

    goto :goto_fd

    :cond_11c
    iget-object v8, v6, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v8, v6, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v8, :cond_18a

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_12a
    if-ge v9, v8, :cond_18a

    iget-object v10, v6, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v6, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_141
    if-ge v13, v12, :cond_185

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eqz v15, :cond_17e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v3

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_180

    :cond_17e
    move-object/from16 v16, v3

    :goto_180
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    goto :goto_141

    :cond_185
    move-object/from16 v16, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_12a

    :cond_18a
    move-object/from16 v16, v3

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    move-object/from16 v3, v16

    goto/16 :goto_fd

    :cond_193
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_219

    const-string/jumbo v3, "configurations"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1ac
    if-ge v5, v4, :cond_1ea

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/ConfigurationStats;

    iget-object v7, v6, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v7}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "config"

    invoke-virtual {v0, v8, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v7, v6, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-static {v7, v8, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "totalTime"

    invoke-virtual {v0, v8, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v7, v6, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-static {v7, v8, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "lastTime"

    invoke-virtual {v0, v8, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v6, v6, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "count"

    invoke-virtual {v0, v7, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1ac

    :cond_1ea
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "event aggregations"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v4, "screen-interactive"

    invoke-static {v0, v4, v3, v2}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v4, "screen-non-interactive"

    invoke-static {v0, v4, v3, v2}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v4, "keyguard-shown"

    invoke-static {v0, v4, v3, v2}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v4, "keyguard-hidden"

    invoke-static {v0, v4, v3, v2}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_219
    if-nez p4, :cond_251

    const-string/jumbo v3, "events"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    if-eqz v1, :cond_22d

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v3

    goto :goto_22e

    :cond_22d
    const/4 v3, 0x0

    :goto_22e
    const/4 v5, 0x0

    :goto_22f
    if-ge v5, v3, :cond_24e

    invoke-virtual {v1, v5}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_248

    iget-object v6, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v7, p5

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_248

    goto :goto_24b

    :cond_248
    invoke-static {v0, v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    :goto_24b
    add-int/lit8 v5, v5, 0x1

    goto :goto_22f

    :cond_24e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_251
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final pruneUninstalledPackagesData()Z
    .registers 10

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v3

    if-ge v2, v4, :cond_5e

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_15

    goto :goto_5b

    :cond_15
    move v4, v1

    :goto_16
    array-length v5, v3
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_3a

    if-ge v4, v5, :cond_5b

    :try_start_19
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v3, v4

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    move-result v7

    if-nez v7, :cond_30

    goto :goto_37

    :cond_30
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_37} :catch_3c
    .catchall {:try_start_19 .. :try_end_37} :catchall_3a

    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :catchall_3a
    move-exception p0

    goto :goto_6e

    :catch_3c
    :try_start_3c
    const-string/jumbo p0, "UsageStatsDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to prune data from: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_3a

    goto :goto_6d

    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_5e
    :try_start_5e
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_64
    .catchall {:try_start_5e .. :try_end_61} :catchall_3a

    const/4 p0, 0x1

    :try_start_62
    monitor-exit v0

    return p0

    :catch_64
    const-string/jumbo p0, "UsageStatsDatabase"

    const-string v2, "Failed to write package mappings after pruning data."

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    :goto_6d
    return v1

    :goto_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_3a

    throw p0
.end method

.method public final queryEarliestAppEvents(JJ)Landroid/app/usage/UsageEvents;
    .registers 13

    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_48

    :cond_d
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move-wide v1, v2

    move-wide v3, v4

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;-><init>(JJLandroid/util/ArraySet;Landroid/util/ArraySet;)V

    move-wide v4, v3

    move-object p1, v6

    move-wide v2, v1

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_48

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_32

    goto :goto_48

    :cond_32
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance p2, Landroid/app/usage/UsageEvents;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object p2

    :cond_48
    :goto_48
    const/4 p0, 0x0

    return-object p0
.end method

.method public final queryEarliestEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 16

    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p1

    move-wide p2, v0

    const/4 p4, 0x0

    if-nez p1, :cond_f

    goto :goto_65

    :cond_f
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    const/4 v8, 0x1

    invoke-virtual {p1, v8, p5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;

    const/4 v9, 0x0

    if-eqz p1, :cond_6a

    iget-wide v0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_66

    iget-wide v0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_66

    iget-object v0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    if-nez v0, :cond_2d

    move v0, v9

    goto :goto_31

    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_31
    if-eqz v0, :cond_42

    iget-object v1, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    sub-int/2addr v0, v8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    if-eq v0, v8, :cond_4e

    :cond_42
    iget-wide v0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_4e

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_77

    :cond_4e
    iget-wide p2, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long p0, p2, v4

    if-gtz p0, :cond_65

    iget-object p0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    if-nez p0, :cond_59

    goto :goto_65

    :cond_59
    new-instance p0, Landroid/app/usage/UsageEvents;

    iget-object p1, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v9}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object p0

    :cond_65
    :goto_65
    return-object p4

    :cond_66
    iput-wide v2, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    :goto_68
    move-wide v1, v2

    goto :goto_77

    :cond_6a
    new-instance p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, p5, p1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :goto_77
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;

    move-wide v3, v4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;-><init>(JJLjava/lang/String;)V

    move-wide v4, v3

    const/4 v7, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_ae

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    goto :goto_ae

    :cond_91
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v8

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    iput-object p0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    new-instance p1, Landroid/app/usage/UsageEvents;

    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v9}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object p1

    :cond_ae
    :goto_ae
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    iput-object p4, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    return-object p4
.end method

.method public final queryEvents(JJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;
    .registers 21

    move-object/from16 v0, p6

    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_80

    :cond_11
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p7, :cond_22

    invoke-virtual/range {p7 .. p7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_22

    :cond_20
    move v10, v2

    goto :goto_23

    :cond_22
    :goto_22
    move v10, v1

    :goto_23
    const/16 v3, 0x20

    new-array v8, v3, [Z

    if-nez v7, :cond_46

    array-length v3, v0

    :goto_2a
    if-ge v2, v3, :cond_46

    aget v4, v0, v2

    if-ltz v4, :cond_39

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_39

    aput-boolean v1, v8, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "invalid event type: "

    invoke-static {v4, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Lcom/android/server/usage/UserUsageStatsService$4;

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v9, p5

    move-object/from16 v11, p7

    invoke-direct/range {v2 .. v12}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(JJZ[ZIZLandroid/util/ArraySet;Landroid/util/ArraySet;)V

    move-object v8, v2

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_80

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_80

    :cond_6b
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v12, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance p2, Landroid/app/usage/UsageEvents;

    invoke-direct {p2, p0, p1, v1}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object p2

    :cond_80
    :goto_80
    const/4 p0, 0x0

    return-object p0
.end method

.method public final queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .registers 15

    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_48

    :cond_d
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v6, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;

    move v7, p6

    move-wide v1, v2

    move-wide v3, v4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;-><init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V

    move-wide v4, v3

    move-object p2, v6

    move p1, v7

    move-wide v2, v1

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_48

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_33

    goto :goto_48

    :cond_33
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance p3, Landroid/app/usage/UsageEvents;

    invoke-direct {p3, p0, p2, p1}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object p3

    :cond_48
    :goto_48
    const/4 p0, 0x0

    return-object p0
.end method

.method public final queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;
    .registers 26

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    const/4 v0, 0x4

    const/4 v8, 0x1

    move/from16 v9, p1

    if-ne v9, v0, :cond_55

    iget-object v0, v1, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v10, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_13
    iget-object v9, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v9, v9

    sub-int/2addr v9, v8

    const/4 v11, -0x1

    const-wide v12, 0x7fffffffffffffffL

    :goto_1d
    if-ltz v9, :cond_4c

    iget-object v14, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v14, v14, v9

    invoke-virtual {v14, v2, v3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result v14

    iget-object v15, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v15, v15, v9

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v15

    if-ltz v14, :cond_49

    if-ge v14, v15, :cond_49

    iget-object v15, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v15, v15, v9

    invoke-virtual {v15, v14}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v14

    sub-long/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    cmp-long v16, v14, v12

    if-gez v16, :cond_49

    move v11, v9

    move-wide v12, v14

    goto :goto_49

    :catchall_47
    move-exception v0

    goto :goto_53

    :cond_49
    :goto_49
    add-int/lit8 v9, v9, -0x1

    goto :goto_1d

    :cond_4c
    monitor-exit v10

    if-gez v11, :cond_51

    const/4 v9, 0x0

    goto :goto_55

    :cond_51
    move v9, v11

    goto :goto_55

    :goto_53
    monitor-exit v10
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_47

    throw v0

    :cond_55
    :goto_55
    const/4 v0, 0x0

    if-ltz v9, :cond_18b

    iget-object v10, v1, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v11, v10

    if-lt v9, v11, :cond_5f

    goto/16 :goto_18b

    :cond_5f
    aget-object v10, v10, v9

    iget-wide v11, v10, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v11, v2, v11

    if-ltz v11, :cond_69

    goto/16 :goto_18b

    :cond_69
    iget-wide v11, v10, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    iget-object v13, v1, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    if-ltz v9, :cond_17c

    iget-object v14, v13, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v14, v14

    if-ge v9, v14, :cond_17f

    cmp-long v14, v11, v2

    if-gtz v14, :cond_81

    :goto_7c
    move/from16 v16, v8

    const/4 v2, 0x0

    goto/16 :goto_ea

    :cond_81
    iget-object v14, v13, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_84
    iget-object v15, v13, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v9, v15, v9

    invoke-virtual {v9, v11, v12}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result v15

    if-gez v15, :cond_93

    monitor-exit v14

    goto :goto_7c

    :catchall_90
    move-exception v0

    goto/16 :goto_17a

    :cond_93
    invoke-virtual {v9, v15}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    cmp-long v11, v16, v11

    if-nez v11, :cond_a1

    add-int/lit8 v15, v15, -0x1

    if-gez v15, :cond_a1

    monitor-exit v14

    goto :goto_7c

    :cond_a1
    invoke-virtual {v9, v2, v3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result v0

    if-gez v0, :cond_a8

    const/4 v0, 0x0

    :cond_a8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v0

    :goto_ae
    if-gt v12, v15, :cond_e5

    invoke-virtual {v9, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    move/from16 v16, v8

    new-instance v8, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v8}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_bd
    .catchall {:try_start_84 .. :try_end_bd} :catchall_90

    move/from16 v7, p7

    :try_start_bf
    invoke-virtual {v13, v0, v8, v7}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    iget-wide v2, v8, Lcom/android/server/usage/IntervalStats;->endTime:J
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c4} :catch_d4
    .catchall {:try_start_bf .. :try_end_c4} :catchall_90

    cmp-long v0, p2, v2

    if-gez v0, :cond_d2

    const/4 v2, 0x0

    :try_start_c9
    invoke-interface {v6, v8, v2, v11}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    move-result v0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cd} :catch_d0
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_90

    if-nez v0, :cond_de

    goto :goto_e8

    :catch_d0
    move-exception v0

    goto :goto_d6

    :cond_d2
    const/4 v2, 0x0

    goto :goto_de

    :catch_d4
    move-exception v0

    const/4 v2, 0x0

    :goto_d6
    :try_start_d6
    const-string/jumbo v3, "UsageStatsDatabase"

    const-string v8, "Failed to read usage stats file"

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_de
    :goto_de
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, p2

    move/from16 v8, v16

    goto :goto_ae

    :cond_e5
    move/from16 v16, v8

    const/4 v2, 0x0

    :goto_e8
    monitor-exit v14
    :try_end_e9
    .catchall {:try_start_d6 .. :try_end_e9} :catchall_90

    move-object v0, v11

    :goto_ea
    iget-wide v7, v10, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v3, p2, v7

    if-gez v3, :cond_179

    iget-wide v7, v10, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v3, v4, v7

    if-lez v3, :cond_179

    if-nez v0, :cond_fd

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_fd
    iget-object v1, v1, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v3, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_102
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_112

    monitor-exit v3

    :goto_10d
    move/from16 v1, v16

    goto :goto_173

    :catchall_110
    move-exception v0

    goto :goto_177

    :cond_112
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v7, v2

    :goto_11b
    if-ge v7, v4, :cond_145

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, v10, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    if-eqz v5, :cond_142

    iget-wide v8, v5, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v5, v8, v11

    if-gez v5, :cond_142

    iget-object v5, v10, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_142
    add-int/lit8 v7, v7, 0x1

    goto :goto_11b

    :cond_145
    iget-object v2, v10, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2}, Landroid/app/usage/EventList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14d
    if-ltz v2, :cond_171

    iget-object v4, v10, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v4

    iget-object v5, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_16e

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v4, v4, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v4, v7, v4

    if-lez v4, :cond_16e

    iget-object v4, v10, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4, v2}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    :cond_16e
    add-int/lit8 v2, v2, -0x1

    goto :goto_14d

    :cond_171
    monitor-exit v3
    :try_end_172
    .catchall {:try_start_102 .. :try_end_172} :catchall_110

    goto :goto_10d

    :goto_173
    invoke-interface {v6, v10, v1, v0}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    goto :goto_179

    :goto_177
    :try_start_177
    monitor-exit v3
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_110

    throw v0

    :cond_179
    :goto_179
    return-object v0

    :goto_17a
    :try_start_17a
    monitor-exit v14
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_90

    throw v0

    :cond_17c
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_17f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad interval type "

    invoke-static {v9, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18b
    :goto_18b
    return-object v0
.end method

.method public final reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x7

    const/16 v4, 0x1f

    if-eq v2, v3, :cond_20

    if-eq v2, v4, :cond_20

    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    :cond_20
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v3, 0x13

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const-string/jumbo v6, "UsageStatsService"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v2, v3, :cond_fb

    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fb

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_4d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    :goto_4d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_76

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    sget-object v13, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x3

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    sub-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-gtz v9, :cond_76

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4d

    :cond_76
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_fb

    iget-object v1, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string/jumbo v4, "removeForegroundEvents "

    invoke-static {v4, v1, v6}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v5, v7

    iget-object v5, v4, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5}, Landroid/app/usage/EventList;->size()I

    move-result v5

    sub-int/2addr v5, v8

    :goto_a2
    if-ltz v5, :cond_cb

    iget-object v11, v4, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v11, v5}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v11

    iget-wide v12, v11, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v12, v12, v9

    if-gez v12, :cond_b1

    goto :goto_cb

    :cond_b1
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c8

    iget v11, v11, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v11, v3, :cond_c3

    const/16 v12, 0x14

    if-ne v11, v12, :cond_c8

    :cond_c3
    iget-object v11, v4, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v11, v5}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    :cond_c8
    add-int/lit8 v5, v5, -0x1

    goto :goto_a2

    :cond_cb
    :goto_cb
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remove after "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/usage/UserUsageStatsService;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-boolean v8, v0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    return-void

    :cond_fb
    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-wide v10, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    cmp-long v10, v2, v10

    if-ltz v10, :cond_328

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    const-string/jumbo v14, "Rolling over usage stats"

    invoke-static {v12, v13, v14, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v12, v5, v7

    iget-object v12, v12, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    array-length v4, v5

    :goto_12a
    if-ge v7, v4, :cond_1e7

    move/from16 v25, v4

    aget-object v4, v5, v7

    move/from16 v26, v7

    iget-object v7, v4, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move-wide/from16 v27, v10

    const/4 v10, 0x0

    :goto_13b
    const-wide/16 v29, 0x1

    if-ge v10, v7, :cond_1bb

    iget-object v11, v4, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/usage/UsageStats;

    move-object/from16 v18, v4

    iget-object v4, v11, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_161

    iget-object v4, v11, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15a

    goto :goto_161

    :cond_15a
    move-object/from16 v32, v6

    move/from16 v31, v7

    move-object/from16 v4, v18

    goto :goto_1b4

    :cond_161
    :goto_161
    iget-object v4, v11, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_186

    iget-object v4, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move/from16 v31, v7

    iget-object v7, v11, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v32, v6

    iget-wide v6, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    sub-long v21, v6, v29

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x3

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_18a

    :cond_186
    move-object/from16 v32, v6

    move/from16 v31, v7

    :goto_18a
    iget-object v4, v11, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1aa

    iget-object v4, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v6, v11, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-wide v6, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    sub-long v21, v6, v29

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x16

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_1aa
    move-object/from16 v4, v18

    iget-object v6, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    :goto_1b4
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v31

    move-object/from16 v6, v32

    goto :goto_13b

    :cond_1bb
    move-object/from16 v32, v6

    iget-wide v6, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    sub-long v6, v6, v29

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    iget-wide v6, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    sub-long v6, v6, v29

    iget-object v10, v4, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v10, v6, v7}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    iget-object v10, v4, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v10, v6, v7}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    iget-object v10, v4, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v10, v6, v7}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    iget-object v4, v4, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    add-int/lit8 v7, v26, 0x1

    move/from16 v4, v25

    move-wide/from16 v10, v27

    move-object/from16 v6, v32

    goto/16 :goto_12a

    :cond_1e7
    move-object/from16 v32, v6

    move-wide/from16 v27, v10

    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v3, v6}, Lcom/android/server/usage/UsageStatsDatabase;->prune(JZ)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v2

    move v3, v6

    :goto_1fc
    if-ge v3, v2, :cond_2aa

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v7, v5, v6

    iget-wide v6, v7, Lcom/android/server/usage/IntervalStats;->beginTime:J

    array-length v10, v5

    const/4 v11, 0x0

    :goto_20a
    if-ge v11, v10, :cond_2a1

    aget-object v18, v5, v11

    invoke-virtual {v15, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_244

    invoke-virtual {v15, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move/from16 v25, v2

    move-object/from16 v2, v19

    check-cast v2, Landroid/util/SparseIntArray;

    move/from16 v26, v3

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    move-object/from16 v19, v4

    const/4 v4, 0x0

    :goto_227
    if-ge v4, v3, :cond_23f

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v23

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v24

    const/16 v20, 0x0

    move-wide/from16 v21, v6

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    move-object/from16 v6, v19

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v6, v21

    goto :goto_227

    :cond_23f
    move-wide/from16 v21, v6

    move-object/from16 v6, v19

    goto :goto_24b

    :cond_244
    move/from16 v25, v2

    move/from16 v26, v3

    move-wide/from16 v21, v6

    move-object v6, v4

    :goto_24b
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28b

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_25c
    if-ge v4, v3, :cond_28b

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v20, v7

    check-cast v20, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    move-object/from16 v6, v18

    move-object/from16 v18, v2

    move-object v2, v6

    move-wide/from16 v6, v21

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v21, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v21

    move-wide/from16 v21, v6

    move-object/from16 v6, v19

    goto :goto_25c

    :cond_28b
    move-object/from16 v19, v6

    move-object/from16 v2, v18

    move-wide/from16 v6, v21

    invoke-virtual {v2, v12, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v19

    move/from16 v2, v25

    move/from16 v3, v26

    goto/16 :goto_20a

    :cond_2a1
    move/from16 v25, v2

    move/from16 v26, v3

    add-int/lit8 v3, v26, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1fc

    :cond_2aa
    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, v27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Rolling over usage stats complete. Took "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v32

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rolloverStats by event Type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/ init elapsed time:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Landroid/app/usage/UsageEvents$Event;->mInitTimeStamp:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/ timeStamp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/ ExpiryDate:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/ realTime:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/ systemTime:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UserUsageStatsService;->addBufferLog(Ljava/lang/String;)V

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    goto :goto_32a

    :cond_328
    move/from16 v17, v7

    :goto_32a
    aget-object v2, v5, v17

    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_33d

    iget-object v4, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_33d

    invoke-static {v4, v3}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v4

    iput-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_33d
    iget v4, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x6

    if-eq v4, v7, :cond_355

    const/16 v7, 0x18

    if-eq v4, v7, :cond_355

    const/16 v7, 0x19

    if-eq v4, v7, :cond_355

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_355

    const/16 v7, 0x1f

    if-eq v4, v7, :cond_355

    invoke-virtual {v2, v1}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    :cond_355
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_368

    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_371

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_371

    const/4 v2, 0x1

    goto :goto_373

    :cond_368
    const/4 v4, 0x2

    if-ne v2, v4, :cond_371

    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_371

    iput-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    :cond_371
    move/from16 v2, v17

    :goto_373
    array-length v4, v5

    move/from16 v7, v17

    :goto_376
    if-ge v7, v4, :cond_40f

    aget-object v8, v5, v7

    iget v9, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v9, v6, :cond_404

    const/16 v10, 0x9

    if-eq v9, v10, :cond_3e4

    packed-switch v9, :pswitch_data_414

    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v13, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget v14, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    if-eqz v2, :cond_3a5

    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v8

    iget v9, v8, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    const/16 v16, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto :goto_40b

    :cond_3a5
    const/16 v16, 0x1

    goto :goto_40b

    :pswitch_3a8  #0x12
    const/16 v16, 0x1

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v11, v8, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v11, v9, v10}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    iget-object v8, v8, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    goto :goto_40b

    :pswitch_3b7  #0x11
    const/16 v16, 0x1

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v11, v8, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v11, v9, v10}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    iget-object v8, v8, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    goto :goto_40b

    :pswitch_3c6  #0x10
    const/16 v16, 0x1

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v11, v8, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v11, v9, v10}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    iget-object v8, v8, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    goto :goto_40b

    :pswitch_3d5  #0xf
    const/16 v16, 0x1

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v11, v8, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v11, v9, v10}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    iget-object v8, v8, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    goto :goto_40b

    :cond_3e4
    const/16 v16, 0x1

    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    if-eqz v9, :cond_40b

    array-length v10, v9

    move/from16 v11, v17

    :goto_3f6
    if-ge v11, v10, :cond_40b

    aget-object v12, v9, v11

    iget-object v13, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v14, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v8, v13, v12, v14}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3f6

    :cond_404
    const/16 v16, 0x1

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v8, v3, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    :cond_40b
    :goto_40b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_376

    :cond_40f
    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    return-void

    nop

    :pswitch_data_414
    .packed-switch 0xf
        :pswitch_3d5  #0000000f
        :pswitch_3c6  #00000010
        :pswitch_3b7  #00000011
        :pswitch_3a8  #00000012
    .end packed-switch
.end method

.method public final updatePackageMappingsLocked(Ljava/util/HashMap;)Z
    .registers 9

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1c
    if-ltz v4, :cond_34

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v5, v5, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    :cond_34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3b

    return v1

    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_40
    if-ltz p1, :cond_50

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/usage/PackagesTokenData;->removePackage(JLjava/lang/String;)I

    add-int/lit8 p1, p1, -0x1

    goto :goto_40

    :cond_50
    :try_start_50
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    return v1

    :catch_54
    const-string/jumbo p0, "UsageStatsService"

    const-string/jumbo p1, "Unable to write updated package mappings file on service initialization."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final updateRolloverDeadline()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v0, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v3, 0x1

    int-to-long v3, v3

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/android/server/usage/UnixCalendar;->mTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Rollover scheduled @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-wide v3, v2, Lcom/android/server/usage/UnixCalendar;->mTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v2, Lcom/android/server/usage/UnixCalendar;->mTime:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UserUsageStatsService;->addBufferLog(Ljava/lang/String;)V

    const-string/jumbo p0, "UsageStatsService"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
