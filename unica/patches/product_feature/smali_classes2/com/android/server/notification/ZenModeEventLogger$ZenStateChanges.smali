.class public final Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCallingUid:I

.field public mNewConfig:Landroid/service/notification/ZenModeConfig;

.field public mNewPolicy:Landroid/app/NotificationManager$Policy;

.field public mNewZenMode:I

.field public mOrigin:I

.field public mPrevConfig:Landroid/service/notification/ZenModeConfig;

.field public mPrevPolicy:Landroid/app/NotificationManager$Policy;

.field public mPrevZenMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    return-void
.end method

.method public static activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    goto :goto_3f

    :cond_8
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v1

    const/16 v2, 0x3e7

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3f
    :goto_3f
    return-object v0
.end method


# virtual methods
.method public final getChangedRuleType()I
    .registers 4

    new-instance v0, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0, v1, p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_11

    return v1

    :cond_11
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getManualRuleDiff()Landroid/service/notification/ZenModeDiff$RuleDiff;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasAdded()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    move-result-object p0

    if-eqz p0, :cond_5c

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeDiff$RuleDiff;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_5a
    const/4 p0, 0x2

    return p0

    :cond_5c
    return v1
.end method

.method public final shouldLogChanges()Z
    .registers 5

    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    iget v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_a

    :cond_8
    move v0, v3

    goto :goto_f

    :cond_a
    if-eqz v0, :cond_e

    if-nez v1, :cond_8

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_12

    return v2

    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2d

    return v2

    :cond_2d
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    if-nez v0, :cond_32

    return v3

    :cond_32
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    return v2

    :cond_3f
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eq v0, p0, :cond_5a

    return v2

    :cond_5a
    return v3
.end method
