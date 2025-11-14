.class public final Lcom/android/server/notification/ZenModeFiltering;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z

.field public static final REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPhoneApp:Landroid/content/ComponentName;

.field public final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    new-instance v0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-direct {v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>()V

    sput-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    return-void
.end method

.method public static audienceMatches(FI)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_12

    const-string p0, "Encountered unknown source: "

    const-string/jumbo v1, "ZenModeHelper"

    invoke-static {p1, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_12
    const/high16 p1, 0x3f800000  # 1.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_19

    return v0

    :cond_19
    return v1

    :cond_1a
    const/high16 p1, 0x3f000000  # 0.5f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_21

    return v0

    :cond_21
    return v1

    :cond_22
    return v0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;I)Z
    .registers 20

    move-object/from16 v0, p3

    move-object/from16 v5, p4

    move-object/from16 v2, p5

    move/from16 v9, p6

    const-string v10, ". Returning timeoutAffinity=1.0"

    const/4 v3, 0x2

    const/4 v11, 0x0

    if-ne p1, v3, :cond_15

    const-string/jumbo p0, "no interruptions"

    invoke-static {v9, p0, v11}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    return v11

    :cond_15
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1f

    const-string/jumbo p0, "alarms only"

    invoke-static {v9, p0, v11}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    return v11

    :cond_1f
    const/4 v3, 0x1

    if-ne p1, v3, :cond_197

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_98

    if-eqz v2, :cond_98

    iget v4, p2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_31

    if-nez v4, :cond_44

    :cond_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_44

    invoke-virtual {v2, v0, v5, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->isInExceptionContacts(Landroid/os/UserHandle;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_44

    const-string/jumbo p0, "contact matched (allowed)"

    invoke-static {v9, p0, v3}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    return v3

    :cond_44
    iget v4, p2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    if-ne v4, v3, :cond_75

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5b

    invoke-virtual {v2, v0, v5, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->isInExceptionContacts(Landroid/os/UserHandle;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_6e

    :cond_5b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_75

    invoke-virtual {v2, v0, v5, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->isInExceptionContacts(Landroid/os/UserHandle;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_75

    const-string/jumbo p0, "contact matched (disallowed)"

    invoke-static {v9, p0, v11}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    return v11

    :cond_6e
    :goto_6e
    const-string/jumbo p0, "contact not matched (disallowed)"

    invoke-static {v9, p0, v3}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    return v3

    :cond_75
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "The number of this call is not in ExceptionContacts. flags="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " matched="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v5, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->isInExceptionContacts(Landroid/os/UserHandle;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "ZenModeHelper"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result p1

    if-eqz p1, :cond_ae

    sget-object p1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    const/4 v4, 0x0

    invoke-static {p1, p0, v5, v4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_ae

    const-string/jumbo p0, "repeat caller"

    invoke-static {v9, p0, v3}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    return v3

    :cond_ae
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result p0

    if-nez p0, :cond_bb

    const-string/jumbo p0, "calls not allowed"

    invoke-static {v9, p0, v11}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    return v11

    :cond_bb
    if-eqz v2, :cond_197

    const-string/jumbo p0, "Timeout while waiting for affinity: "

    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    const-string/jumbo v12, "ValidateNoPeople"

    if-eqz p1, :cond_d9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checking affinity for "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    const/4 p1, 0x0

    if-nez v5, :cond_de

    goto/16 :goto_150

    :cond_de
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [F

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_f4

    goto :goto_150

    :cond_f4
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[FLandroid/util/ArraySet;)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object p1

    aget v2, v7, v11

    if-eqz p1, :cond_14f

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v11}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/notification/ValidateNotificationPeople$2;

    invoke-direct {v5, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/16 v3, 0xbb8

    int-to-long v5, v3

    :try_start_10f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_12f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/InterruptedException; {:try_start_10f .. :try_end_129} :catch_12c

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_150

    :catch_12c
    move-exception v0

    move-object p0, v0

    goto :goto_136

    :cond_12f
    iget p0, p1, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_150

    :goto_136
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "InterruptedException while waiting for affinity: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Returning affinity="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14f
    move p1, v2

    :goto_150
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/16 v0, 0x1f

    if-nez p4, :cond_15f

    const-string/jumbo p0, "extra is null"

    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    goto :goto_17c

    :cond_15f
    sget-object v2, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contactAffinity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    :goto_17c
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(FI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "contact affinity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1, p0}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    return p0

    :cond_197
    const-string/jumbo p0, "no restrictions"

    invoke-static {v9, p0, v3}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ILjava/lang/String;Z)V

    return v3
.end method

.method public static maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mInterceptSet:Z

    if-eqz v1, :cond_9

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    if-nez v1, :cond_13

    const-string/jumbo v0, "new:"

    invoke-static {v0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1c

    :cond_13
    if-eq v0, p1, :cond_1c

    const-string/jumbo v0, "updated:"

    invoke-static {v0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1c
    :goto_1c
    const-string v0, ","

    if-eqz p1, :cond_3f

    sget-object p1, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void

    :cond_3f
    sget-object p1, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xc

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 4

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(FI)Z

    move-result p1

    if-nez p1, :cond_1b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "!audienceMatches,affinity="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "affinity="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    iput-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    sget-boolean v1, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Default phone app: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ZenModeHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    if-eqz v0, :cond_4a

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    goto :goto_53

    :cond_4a
    const-string/jumbo p0, "call"

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_55

    :goto_53
    const/4 p0, 0x1

    return p0

    :cond_55
    const/4 p0, 0x0

    return p0
.end method

.method public final matchesExceptionContacts(Landroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 14

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "ZenModeHelper"

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_2d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo p0, "cannot get a TelephonyManager. iso="

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_44

    goto/16 :goto_1e4

    :cond_44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_52
    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_81

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_66

    goto :goto_52

    :cond_66
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v6, p1

    :goto_6d
    array-length v7, v4

    if-ge v6, v7, :cond_52

    if-nez v6, :cond_77

    aget-object v7, v4, p1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    if-ne v6, v5, :cond_7e

    aget-object v7, v4, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6d

    :cond_81
    iget-object p0, p2, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    if-eqz p0, :cond_b7

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_89
    :goto_89
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_98

    goto :goto_89

    :cond_98
    move v6, p1

    :goto_99
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_89

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a6

    goto :goto_b4

    :cond_a6
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v4, v7, v1}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b4

    goto/16 :goto_1d2

    :cond_b4
    :goto_b4
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    :cond_b7
    iget-object p0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e4

    move p2, p1

    :goto_c6
    array-length v4, p0

    if-ge p2, v4, :cond_1e4

    aget-object v4, p0, p2

    if-nez v4, :cond_cf

    goto/16 :goto_1e0

    :cond_cf
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d9

    goto/16 :goto_1e0

    :cond_d9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "received contact type="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v4, p1

    invoke-static {v6, v7, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_f2

    const-string/jumbo v4, "The contact info doesn\'t have a number."

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e0

    :cond_f2
    aget-object v6, v4, p1

    const-string/jumbo v7, "tel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1ba

    :try_start_fe
    aget-object v4, v4, v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_107} :catch_108

    goto :goto_112

    :catch_108
    move-exception v4

    const-string/jumbo v6, "URLDecoder.decode error"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_112
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "received contact number="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    if-nez v7, :cond_12c

    const-string/jumbo v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_187

    :cond_12c
    move v8, p1

    :goto_12d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_183

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_17b

    packed-switch v9, :pswitch_data_1e6

    goto :goto_180

    :pswitch_13f  #0x39
    const/16 v9, 0x69

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_180

    :pswitch_145  #0x38
    const/16 v9, 0x68

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_180

    :pswitch_14b  #0x37
    const/16 v9, 0x67

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_180

    :pswitch_151  #0x36
    const/16 v9, 0x66

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_180

    :pswitch_157  #0x35
    const/16 v9, 0x65

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_180

    :pswitch_15d  #0x34
    const/16 v9, 0x64

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_180

    :pswitch_163  #0x33
    const/16 v9, 0x63

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_180

    :pswitch_169  #0x32
    const/16 v9, 0x62

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_180

    :pswitch_16f  #0x31
    const/16 v9, 0x61

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_180

    :pswitch_175  #0x30
    const/16 v9, 0x6f

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_180

    :cond_17b
    const/16 v9, 0x2b

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_180
    add-int/lit8 v8, v8, 0x1

    goto :goto_12d

    :cond_183
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_187
    invoke-static {v4, v6, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move v4, p1

    :goto_18b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1e0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6, v1}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19e

    goto :goto_1d2

    :cond_19e
    const-string/jumbo v6, "Phone number is not matched. callNumber="

    const-string v8, " exceptionContact="

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_18b

    :cond_1ba
    aget-object v6, v4, p1

    const-string/jumbo v8, "contactId"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e0

    sget-boolean p0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz p0, :cond_1d2

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d2
    :goto_1d2
    return v5

    :cond_1d3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "received contact specificUri="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v4, v5

    invoke-static {v6, v4, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e0
    :goto_1e0
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_c6

    :cond_1e4
    :goto_1e4
    return p1

    nop

    :pswitch_data_1e6
    .packed-switch 0x30
        :pswitch_175  #00000030
        :pswitch_16f  #00000031
        :pswitch_169  #00000032
        :pswitch_163  #00000033
        :pswitch_15d  #00000034
        :pswitch_157  #00000035
        :pswitch_151  #00000036
        :pswitch_14b  #00000037
        :pswitch_145  #00000038
        :pswitch_13f  #00000039
    .end packed-switch
.end method

.method public final shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p3, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_10

    const-string/jumbo p0, "criticalNotification"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_10
    const/4 v1, 0x4

    const-string/jumbo v3, "alarm"

    const/4 v4, 0x1

    if-eq p1, v4, :cond_44

    if-eq p1, v2, :cond_3d

    const/4 p0, 0x3

    if-eq p1, p0, :cond_23

    const-string/jumbo p0, "unknownZenMode"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_23
    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_39

    iget-object p0, p3, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    if-ne p0, v1, :cond_32

    goto :goto_39

    :cond_32
    const-string/jumbo p0, "alarmsOnly"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_39
    :goto_39
    invoke-static {p3, v0, v3}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_3d
    const-string/jumbo p0, "none"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_44
    iget p1, p2, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    const/4 v5, -0x1

    if-eqz p1, :cond_4b

    if-ne p1, v5, :cond_5c

    :cond_4b
    iget p1, p3, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    if-ne p1, v2, :cond_5c

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result p1

    if-eqz p1, :cond_5c

    const-string/jumbo p0, "priorityApp (allowed)"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_5c
    iget p1, p2, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    if-ne p1, v4, :cond_86

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7f

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_86

    iget p1, p3, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    if-ne p1, v2, :cond_7f

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result p1

    if-eqz p1, :cond_7f

    goto :goto_86

    :cond_7f
    const-string/jumbo p0, "priorityApp (disallowed)"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_86
    :goto_86
    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_232

    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    if-ne p1, v1, :cond_96

    goto/16 :goto_232

    :cond_96
    const-string/jumbo p1, "event"

    invoke-virtual {p3, p1}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b2

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result p0

    if-nez p0, :cond_ab

    const-string p0, "!allowEvents"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_ab
    const-string/jumbo p0, "allowedEvent"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_b2
    const-string/jumbo p1, "reminder"

    invoke-virtual {p3, p1}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ce

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result p0

    if-nez p0, :cond_c7

    const-string p0, "!allowReminders"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_c7
    const-string/jumbo p0, "allowedReminder"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_ce
    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    if-eqz p1, :cond_f2

    sget-object v1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_f2

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result p0

    if-nez p0, :cond_eb

    const-string p0, "!allowMedia"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_eb
    const-string/jumbo p0, "allowedMedia"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_f2
    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    if-eqz p1, :cond_116

    sget-object v1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_116

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result p0

    if-nez p0, :cond_10f

    const-string p0, "!allowSystem"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_10f
    const-string/jumbo p0, "allowedSystem"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_116
    iget p1, p2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    if-eq p1, v5, :cond_11c

    if-nez p1, :cond_129

    :cond_11c
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/ZenModeFiltering;->matchesExceptionContacts(Landroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_129

    const-string/jumbo p0, "exceptionContactsMatches - selected contacts"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_129
    iget p1, p2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    if-ne p1, v4, :cond_17c

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15e

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_148

    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/ZenModeFiltering;->matchesExceptionContacts(Landroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-nez p1, :cond_148

    goto :goto_15e

    :cond_148
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_19f

    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/ZenModeFiltering;->matchesExceptionContacts(Landroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_19f

    const-string p0, "!exceptionContactsMatches - except selected contacts"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_15e
    :goto_15e
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-nez p1, :cond_175

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isMessaging(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_16f

    goto :goto_175

    :cond_16f
    const-string p0, "!exceptionContactsMatches - neither call nor message"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_175
    :goto_175
    const-string/jumbo p0, "exceptionContactsMatches - except selected contacts"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_17c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The number of this sound is not in ExceptionContacts. flags="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " matched="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/ZenModeFiltering;->matchesExceptionContacts(Landroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "ZenModeHelper"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19f
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result p1

    if-eqz p1, :cond_1c7

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result p1

    if-eqz p1, :cond_1c7

    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne p1, v4, :cond_1b6

    const-string/jumbo p0, "conversationAnyone"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_1b6
    if-ne p1, v2, :cond_1c7

    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p1

    if-eqz p1, :cond_1c7

    const-string/jumbo p0, "conversationMatches"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_1c7
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_20d

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result p1

    if-eqz p1, :cond_1f8

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_1e6

    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_1e7

    :cond_1e6
    const/4 p1, 0x0

    :goto_1e7
    iget-object v1, p3, Lcom/android/server/notification/NotificationRecord;->mPhoneNumbers:Landroid/util/ArraySet;

    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v2, p0, p1, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_1f8

    const-string/jumbo p0, "repeatCaller"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0

    :cond_1f8
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result p0

    if-nez p0, :cond_204

    const-string p0, "!allowCalls"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_204
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result p0

    invoke-static {p3, p0}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result p0

    return p0

    :cond_20d
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object p1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isMessaging(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_22c

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result p0

    if-nez p0, :cond_223

    const-string p0, "!allowMessages"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_223
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result p0

    invoke-static {p3, p0}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result p0

    return p0

    :cond_22c
    const-string p0, "!priority"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_232
    :goto_232
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result p0

    if-nez p0, :cond_23e

    const-string p0, "!allowAlarms"

    invoke-static {p3, v4, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v4

    :cond_23e
    const-string/jumbo p0, "allowedAlarm"

    invoke-static {p3, v0, p0}, Lcom/android/server/notification/ZenModeFiltering;->maybeLogInterceptDecision(Lcom/android/server/notification/NotificationRecord;ZLjava/lang/String;)V

    return v0
.end method
