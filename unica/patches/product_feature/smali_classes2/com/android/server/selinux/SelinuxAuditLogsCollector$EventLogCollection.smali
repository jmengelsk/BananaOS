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
    .registers 2

    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 19

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

    if-nez v5, :cond_29f

    invoke-virtual {v4}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v6, v6, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    invoke-virtual {v5, v6}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v6

    if-gtz v6, :cond_2b

    goto/16 :goto_293

    :cond_2b
    invoke-virtual {v4}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/String;

    if-nez v6, :cond_35

    goto/16 :goto_293

    :cond_35
    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->SELINUX_MATCHER:Ljava/util/regex/Matcher;

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_45

    goto/16 :goto_293

    :cond_45
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

    :cond_87
    :goto_87
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget-object v8, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    if-eqz v7, :cond_202

    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, ",c"

    const/4 v10, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2aa

    goto/16 :goto_104

    :sswitch_a8
    const-string/jumbo v11, "tcontext"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b2

    goto :goto_104

    :cond_b2
    const/4 v10, 0x7

    goto :goto_104

    :sswitch_b4
    const-string/jumbo v11, "granted"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_be

    goto :goto_104

    :cond_be
    const/4 v10, 0x6

    goto :goto_104

    :sswitch_c0
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c7

    goto :goto_104

    :cond_c7
    const/4 v10, 0x5

    goto :goto_104

    :sswitch_c9
    const-string/jumbo v11, "{"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d3

    goto :goto_104

    :cond_d3
    const/4 v10, 0x4

    goto :goto_104

    :sswitch_d5
    const-string/jumbo v11, "scontext"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_df

    goto :goto_104

    :cond_df
    const/4 v10, 0x3

    goto :goto_104

    :sswitch_e1
    const-string/jumbo v11, "permissive"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_eb

    goto :goto_104

    :cond_eb
    const/4 v10, 0x2

    goto :goto_104

    :sswitch_ed
    const-string/jumbo v11, "tclass"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f7

    goto :goto_104

    :cond_f7
    move v10, v3

    goto :goto_104

    :sswitch_f9
    const-string/jumbo v11, "denied"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_103

    goto :goto_104

    :cond_103
    move v10, v2

    :goto_104
    packed-switch v10, :pswitch_data_2cc

    goto :goto_87

    :pswitch_108  #0x7
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v7}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v7

    if-nez v7, :cond_112

    goto/16 :goto_203

    :cond_112
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v10, "ttype"

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v10, "tcategories"

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12a

    move-object v7, v6

    goto :goto_13f

    :cond_12a
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

    :goto_13f
    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    goto/16 :goto_87

    :pswitch_143  #0x6
    iput-boolean v3, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    goto/16 :goto_87

    :pswitch_147  #0x5
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v7}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v7

    if-eqz v7, :cond_87

    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    goto/16 :goto_87

    :pswitch_159  #0x4
    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object v7

    move v9, v2

    :goto_15e
    if-nez v9, :cond_17f

    iget-object v10, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17f

    iget-object v10, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "}"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17b

    move v9, v3

    goto :goto_15e

    :cond_17b
    invoke-interface {v7, v10}, Ljava/util/stream/Stream$Builder;->add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;

    goto :goto_15e

    :cond_17f
    if-nez v9, :cond_183

    goto/16 :goto_203

    :cond_183
    invoke-interface {v7}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    goto/16 :goto_87

    :pswitch_196  #0x3
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v7}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v7

    if-nez v7, :cond_19f

    goto :goto_203

    :cond_19f
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v10, "stype"

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v10, "scategories"

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1b7

    move-object v7, v6

    goto :goto_1cc

    :cond_1b7
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

    :goto_1cc
    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    goto/16 :goto_87

    :pswitch_1d0  #0x2
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1d9

    goto :goto_203

    :cond_1d9
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    goto/16 :goto_87

    :pswitch_1e9  #0x1
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1f2

    goto :goto_203

    :cond_1f2
    iget-object v7, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    goto/16 :goto_87

    :pswitch_1fe  #0x0
    iput-boolean v2, v8, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    goto/16 :goto_87

    :cond_202
    move-object v6, v8

    :goto_203
    if-nez v6, :cond_207

    goto/16 :goto_293

    :cond_207
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

    if-lez v4, :cond_22e

    iput-wide v7, v1, Lcom/android/server/selinux/QuotaLimiter;->mCurrentWindow:J

    iput v2, v1, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    :cond_22e
    iget v2, v1, Lcom/android/server/selinux/QuotaLimiter;->mPermitsGranted:I

    iget v4, v1, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    if-ge v2, v4, :cond_294

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

    if-eqz v4, :cond_263

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

    goto :goto_26b

    :cond_263
    iget-object v4, v1, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    invoke-virtual {v2, v4}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    :goto_26b
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

    if-eqz v1, :cond_293

    iput-object v5, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    :cond_293
    :goto_293
    return v3

    :cond_294
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Lcom/android/server/selinux/QuotaExceededException;

    invoke-direct {v1}, Lcom/android/server/selinux/QuotaExceededException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_29f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :sswitch_data_2aa
    .sparse-switch
        -0x4f988465 -> :sswitch_f9
        -0x34682e7c -> :sswitch_ed
        -0x1eda3961 -> :sswitch_e1
        -0x1d21a224 -> :sswitch_d5
        0x7b -> :sswitch_c9
        0x346425 -> :sswitch_c0
        0x10b4f6bb -> :sswitch_b4
        0x4abf8abb -> :sswitch_a8
    .end sparse-switch

    :pswitch_data_2cc
    .packed-switch 0x0
        :pswitch_1fe  #00000000
        :pswitch_1e9  #00000001
        :pswitch_1d0  #00000002
        :pswitch_196  #00000003
        :pswitch_159  #00000004
        :pswitch_147  #00000005
        :pswitch_143  #00000006
        :pswitch_108  #00000007
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final size()I
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
