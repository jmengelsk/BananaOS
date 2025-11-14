.class public final Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;
.super Ljava/util/AbstractCollection;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

.field public mAuditsWritten:I

.field public mLatestTimestamp:Ljava/time/Instant;

.field public final synthetic this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    const-string/jumbo v1, "path"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p1

    check-cast v4, Landroid/util/EventLog$Event;

    iget-object v5, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v5, v5, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v4}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v6, v6, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    invoke-virtual {v5, v6}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v6

    if-gtz v6, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v4}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/String;

    if-nez v6, :cond_1

    goto/16 :goto_7

    :cond_1
    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->SELINUX_MATCHER:Ljava/util/regex/Matcher;

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v4, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    const-string/jumbo v7, "denial"

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    iget-object v4, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iput-boolean v2, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    iput-object v6, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    iput-object v6, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    iput-boolean v2, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    iget-object v4, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    :cond_3
    :goto_0
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget-object v8, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    if-eqz v7, :cond_15

    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, ",c"

    const/4 v10, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v11, "tcontext"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v11, "granted"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x6

    goto :goto_1

    :sswitch_2
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    const/4 v10, 0x5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v11, "{"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    const/4 v10, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v11, "scontext"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    const/4 v10, 0x3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v11, "permissive"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_1

    :cond_9
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v11, "tclass"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_1

    :cond_a
    move v10, v3

    goto :goto_1

    :sswitch_7
    const-string/jumbo v11, "denied"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_1

    :cond_b
    move v10, v2

    :goto_1
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v7}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_5

    :cond_c
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v10, "ttype"

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v10, "tcategories"

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d

    move-object v7, v6

    goto :goto_2

    :cond_d
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v9, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    :goto_2
    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    goto/16 :goto_0

    :pswitch_1
    iput-boolean v3, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v7}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object v7

    move v9, v2

    :goto_3
    if-nez v9, :cond_f

    iget-object v10, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "}"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    move v9, v3

    goto :goto_3

    :cond_e
    invoke-interface {v7, v10}, Ljava/util/stream/Stream$Builder;->add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;

    goto :goto_3

    :cond_f
    if-nez v9, :cond_10

    goto/16 :goto_5

    :cond_10
    invoke-interface {v7}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v7}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_5

    :cond_11
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v10, "stype"

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v10, "scategories"

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    move-object v7, v6

    goto :goto_4

    :cond_12
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v9, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    :goto_4
    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    goto/16 :goto_0

    :pswitch_5
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_5

    :cond_13
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_5

    :cond_14
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    iput-boolean v2, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    goto/16 :goto_0

    :cond_15
    move-object v6, v8

    :goto_5
    if-nez v6, :cond_16

    goto/16 :goto_7

    :cond_16
    iget-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v1, v1, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mQuotaLimiter:Lcom/android/server/selinux/QuotaLimiter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    iget-object v7, v1, Lcom/android/server/selinux/QuotaLimiter;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v7}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/selinux/QuotaLimiter;->mWindowSize:Ljava/time/Duration;

    invoke-virtual {v4, v7}, Ljava/time/Duration;->dividedBy(Ljava/time/Duration;)J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/selinux/QuotaLimiter;->mCurrentWindow:J

    cmp-long v4, v7, v9

    if-lez v4, :cond_17

    iput-wide v7, v1, Lcom/android/server/selinux/QuotaLimiter;->mCurrentWindow:J

    iput v2, v1, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    :cond_17
    iget v2, v1, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    iget v4, v1, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    if-ge v2, v4, :cond_1a

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    iget-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v1, v1, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    iget-object v2, v1, Lcom/android/server/selinux/RateLimiter;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    invoke-virtual {v4, v2}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    iget-object v7, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    invoke-virtual {v4, v2, v7}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v2, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    iget-object v4, v1, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    invoke-virtual {v2, v4}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    goto :goto_6

    :cond_18
    iget-object v4, v1, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    invoke-virtual {v2, v4}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    :goto_6
    iget-boolean v8, v6, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    iget-object v9, v6, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    iget-object v11, v6, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    iget-object v12, v6, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    iget-object v13, v6, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    iget-object v14, v6, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    iget-object v15, v6, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    iget-boolean v1, v6, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    const/16 v7, 0x31f

    move/from16 v16, v1

    invoke-static/range {v7 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZ[Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;Z)V

    iget v1, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    iget-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    invoke-virtual {v5, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_19

    iput-object v5, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    :cond_19
    :goto_7
    return v3

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Lcom/android/server/selinux/QuotaExceededException;

    invoke-direct {v1}, Lcom/android/server/selinux/QuotaExceededException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4f988465 -> :sswitch_7
        -0x34682e7c -> :sswitch_6
        -0x1eda3961 -> :sswitch_5
        -0x1d21a224 -> :sswitch_4
        0x7b -> :sswitch_3
        0x346425 -> :sswitch_2
        0x10b4f6bb -> :sswitch_1
        0x4abf8abb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final size()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
