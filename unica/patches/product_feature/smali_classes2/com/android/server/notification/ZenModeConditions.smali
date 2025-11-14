.class public final Lcom/android/server/notification/ZenModeConditions;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field public final mEvaluatedUsers:Ljava/util/HashSet;

.field public final mHelper:Lcom/android/server/notification/ZenModeHelper;

.field protected final mSubscriptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mEvaluatedUsers:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    iput-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object p1, p2, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    const-string/jumbo v0, "countdown"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {p1}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    :cond_0
    iget-object p1, p2, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    const-string/jumbo v0, "schedule"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;-><init>(Ljava/time/Clock;)V

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    :cond_1
    iget-object p1, p2, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    const-string/jumbo v0, "event"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p1}, Lcom/android/server/notification/EventConditionProvider;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    :cond_2
    iget-object p1, p2, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    const-string/jumbo v0, "custom_manual"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/android/server/notification/CustomManualConditionProvider;

    invoke-direct {p1}, Landroid/service/notification/ConditionProviderService;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    :cond_3
    iput-object p0, p2, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ZenModeConditions;

    return-void
.end method


# virtual methods
.method public final evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ZenModeHelper"

    const-string/jumbo v1, "evaluateConfig: clearing manual rule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZ)V

    iget-object p0, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object p3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz p3, :cond_3

    const/4 v6, 0x0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZ)V

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->reconsiderConditionOverride()V

    goto :goto_1

    :cond_3
    move-object v4, p2

    :goto_1
    move-object p2, v4

    goto :goto_0

    :cond_4
    iget-object p0, v1, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter p0

    :try_start_0
    iget-object p2, v1, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_6

    iget-object p3, v1, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    if-eqz v5, :cond_5

    invoke-virtual {v3, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/net/Uri;

    invoke-virtual {v0, p3, v2}, Lcom/android/server/notification/ConditionProviders;->unsubscribeIfNecessary(Landroid/net/Uri;Landroid/content/ComponentName;)V

    iget-object p3, v1, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v1, Lcom/android/server/notification/ZenModeConditions;->mEvaluatedUsers:Ljava/util/HashSet;

    new-instance p2, Ljava/lang/Integer;

    iget p1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZ)V
    .locals 14

    move-object/from16 v1, p3

    if-eqz p1, :cond_1a

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v2, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    goto/16 :goto_c

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p5, :cond_3

    const-string/jumbo v5, "android"

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v3

    :goto_1
    if-nez v5, :cond_4

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    const-string/jumbo v7, "android"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo p0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Rule "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " belongs to package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but has component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which is not allowed!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v5, v5, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v3

    move v7, v4

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v9, v2}, Lcom/android/server/notification/SystemConditionProviderService;->isValidConditionId(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "com.android.server.notification.ScheduleConditionProvider"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz p4, :cond_7

    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v7}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    iget-object v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    if-eqz v8, :cond_6

    const-string v10, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ne v7, v3, :cond_6

    iget-boolean v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v7, :cond_6

    invoke-virtual {v9}, Lcom/android/server/notification/SystemConditionProviderService;->isScheduleEnabled()Z

    move-result v7

    xor-int/lit8 v8, v7, 0x1

    invoke-virtual {v9, v4}, Lcom/android/server/notification/SystemConditionProviderService;->onScheduleEnabled(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {v9}, Lcom/android/server/notification/SystemConditionProviderService;->isScheduleEnabled()Z

    move-result v8

    invoke-virtual {v9, v3}, Lcom/android/server/notification/SystemConditionProviderService;->onScheduleEnabled(Z)V

    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v9}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v6}, Landroid/service/notification/ConditionProviderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v11

    check-cast v11, Landroid/service/notification/IConditionProvider;

    invoke-virtual {v7, v10, v2, v11}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    invoke-virtual {v9}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    move v7, v3

    goto :goto_2

    :cond_8
    move v8, v3

    move v7, v4

    :cond_9
    if-nez v7, :cond_f

    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v9, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-nez v9, :cond_b

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    move-object v5, v6

    goto :goto_4

    :cond_b
    invoke-virtual {v5}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v4

    :cond_c
    if-ge v11, v10, :cond_a

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v13, v12, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v9, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v5, v12, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v5, Landroid/service/notification/IConditionProvider;

    :goto_4
    sget-boolean v9, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v9, :cond_e

    const-string/jumbo v9, "ZenModeHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Ensure external rule exists: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_d

    move v11, v3

    goto :goto_5

    :cond_d
    move v11, v4

    :goto_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v5, :cond_f

    iget-object v9, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v10, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v9, v10, v2, v5}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    :cond_f
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-nez v5, :cond_10

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-nez v5, :cond_10

    if-nez p5, :cond_1a

    const-string/jumbo p0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No component found for automatic rule: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    return-void

    :cond_10
    new-instance v5, Landroid/util/Pair;

    iget-object v9, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-direct {v5, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, p2

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_17

    if-eqz v1, :cond_11

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    if-eqz v7, :cond_17

    :cond_12
    sget-boolean v1, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v1, :cond_13

    const-string/jumbo v2, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Subscribing to "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v9, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string/jumbo v10, "Unable to subscribe to "

    iget-object v11, v2, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-virtual {v2, v9, v7, v4}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v12

    if-nez v12, :cond_14

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    move v3, v4

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_14
    iget-boolean v7, v12, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    if-eqz v7, :cond_15

    if-eqz v8, :cond_15

    monitor-exit v11

    goto :goto_6

    :cond_15
    invoke-virtual {v2, v12}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    iget-boolean v3, v12, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    if-eqz v3, :cond_16

    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_16
    iput-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_17

    const-string/jumbo v1, "ZenModeHelper"

    const-string/jumbo v2, "zmc failed to subscribe"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :goto_7
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_17
    :goto_8
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_1a

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v2, :cond_1a

    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_18

    goto :goto_a

    :cond_18
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0, v2, v1, v4}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object p0

    if-eqz p0, :cond_19

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_b

    :cond_19
    :goto_9
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_a
    iput-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v6, :cond_1a

    sget-boolean p0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz p0, :cond_1a

    const-string/jumbo p0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found existing condition for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_b
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_1a
    :goto_c
    return-void
.end method
