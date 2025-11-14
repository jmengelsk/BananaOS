.class public final Lcom/android/server/notification/CountdownConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ACTION:Ljava/lang/String;

.field public static final DEBUG:Z


# instance fields
.field public mConnected:Z

.field public final mContext:Lcom/android/server/notification/CountdownConditionProvider;

.field public mIsAlarm:Z

.field public final mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

.field public mTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    const-class v0, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    iput-object p0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Lcom/android/server/notification/CountdownConditionProvider;

    new-instance v0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    invoke-direct {v0, p0}, Lcom/android/server/notification/CountdownConditionProvider$Receiver;-><init>(Lcom/android/server/notification/CountdownConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    sget-boolean p0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_18

    const-string p0, "ConditionProviders.CCP"

    const-string/jumbo v0, "new CountdownConditionProvider()"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "    CountdownConditionProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public final isScheduleEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isValidConditionId(Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final onBootComplete()V
    .registers 1

    return-void
.end method

.method public final onConnected()V
    .registers 5

    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ConditionProviders.CCP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Lcom/android/server/notification/CountdownConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    return-void
.end method

.method public final onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/service/notification/ConditionProviderService;->onDestroy()V

    sget-boolean v0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ConditionProviders.CCP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Lcom/android/server/notification/CountdownConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider;->mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/CountdownConditionProvider;->mConnected:Z

    return-void
.end method

.method public final onScheduleEnabled(Z)V
    .registers 3

    sget-boolean p0, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    if-eqz p0, :cond_c

    const-string/jumbo p0, "onScheduleEnabled : "

    const-string v0, "ConditionProviders.CCP"

    invoke-static {p0, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method public final onSubscribe(Landroid/net/Uri;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    const-string v3, "ConditionProviders.CCP"

    if-eqz v2, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onSubscribe "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/notification/CountdownConditionProvider;->mIsAlarm:Z

    iget-object v4, v0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Lcom/android/server/notification/CountdownConditionProvider;

    const-string/jumbo v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    new-instance v5, Landroid/content/Intent;

    sget-object v7, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "condition_id"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v5, 0x40000000  # 2.0f

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/notification/CountdownConditionProvider;->mContext:Lcom/android/server/notification/CountdownConditionProvider;

    const/16 v6, 0x64

    const/high16 v8, 0xc000000

    invoke-static {v5, v6, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-wide v5, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-lez v5, :cond_c3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v8, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    const-wide/32 v12, 0xea60

    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v5

    iget-wide v8, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    cmp-long v6, v8, v10

    if-gtz v6, :cond_91

    iget-boolean v1, v0, Lcom/android/server/notification/CountdownConditionProvider;->mIsAlarm:Z

    new-instance v12, Landroid/service/notification/Condition;

    invoke-static {v8, v9, v1}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v13

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v0, v12}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_95

    :cond_91
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v8, v9, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_95
    if-eqz v2, :cond_c3

    iget-wide v1, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    cmp-long v4, v1, v10

    if-gtz v4, :cond_a2

    const-string/jumbo v4, "Not scheduling"

    :goto_a0
    move-object v6, v4

    goto :goto_a6

    :cond_a2
    const-string/jumbo v4, "Scheduling"

    goto :goto_a0

    :goto_a6
    invoke-static {v1, v2}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v0, v0, Lcom/android/server/notification/CountdownConditionProvider;->mTime:J

    sub-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v10, v11}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v11

    move-object v10, v5

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s %s for %s, %s in the future (%s), now=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    return-void
.end method

.method public final onUnsubscribe(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method

.method public final onUserSwitched(Landroid/os/UserHandle;)V
    .registers 2

    return-void
.end method
