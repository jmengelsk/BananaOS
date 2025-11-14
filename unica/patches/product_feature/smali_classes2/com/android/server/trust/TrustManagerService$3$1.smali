.class public final Lcom/android/server/trust/TrustManagerService$3$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/trust/TrustManagerService$3;

.field public final synthetic val$fout:Ljava/io/PrintWriter;

.field public final synthetic val$userInfos:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService$3;Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$3$1;->this$1:Lcom/android/server/trust/TrustManagerService$3;

    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$3$1;->val$fout:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/trust/TrustManagerService$3$1;->val$userInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$3$1;->val$fout:Ljava/io/PrintWriter;

    const-string/jumbo v3, "Trust manager state:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$3$1;->val$userInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService$3$1;->this$1:Lcom/android/server/trust/TrustManagerService$3;

    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService$3$1;->val$fout:Ljava/io/PrintWriter;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v7, v7, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v6, v7, :cond_0

    move v7, v1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iget-object v9, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v10, v3, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v6, v10}, [Ljava/lang/Object;

    move-result-object v6

    const-string v9, " User \"%s\" (id=%d, flags=%#x)"

    invoke-virtual {v5, v9, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v6, v6, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, " (profile with unified challenge)"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v3

    goto :goto_2

    :cond_1
    iget-object v6, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v6, v6, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, " (profile with separate challenge)"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v3

    goto :goto_2

    :cond_2
    const-string v6, " (user that cannot be switched to)"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v3

    :goto_2
    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService$3;->dumpBool(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ": deviceLocked="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "   Trust agents disabled because switching to this user is not possible."

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v17, v1

    move-object/from16 v16, v2

    goto/16 :goto_a

    :cond_3
    if-eqz v7, :cond_4

    const-string v6, " (current)"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ": trustState="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    sget-object v10, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v7, v9}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v6

    invoke-static {v6}, Lcom/android/server/trust/TrustManagerService$3;->dumpBool(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, ", trustManaged="

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v6

    invoke-static {v6}, Lcom/android/server/trust/TrustManagerService$3;->dumpBool(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, ", deviceLocked="

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    move-result v6

    invoke-static {v6}, Lcom/android/server/trust/TrustManagerService$3;->dumpBool(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, ", isActiveUnlockRunning="

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ", strongAuthRequired="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, v7, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "0x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    const-string v6, "   Enabled agents:"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    iget-object v7, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v7, v7, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/16 v11, 0x2e

    const-string v12, ", managingTrust="

    const-string v13, "    "

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v14, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v15, v3, Landroid/content/pm/UserInfo;->id:I

    if-eq v14, v15, :cond_6

    goto :goto_3

    :cond_6
    iget-object v14, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v14}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v14

    invoke-virtual {v5, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean v13, v13, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    invoke-static {v13}, Lcom/android/server/trust/TrustManagerService$3;->dumpBool(Z)Ljava/lang/String;

    move-result-object v13

    const-string v15, "     bound="

    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v13, v13, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v13, :cond_7

    move v13, v1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    invoke-static {v13}, Lcom/android/server/trust/TrustManagerService$3;->dumpBool(Z)Ljava/lang/String;

    move-result-object v13

    const-string v15, ", connected="

    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v13}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v13

    invoke-static {v13}, Lcom/android/server/trust/TrustManagerService$3;->dumpBool(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/android/server/trust/TrustManagerService$3;->dumpBool(Z)Ljava/lang/String;

    move-result-object v12

    const-string v13, ", trusted="

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    if-eqz v14, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "      message=\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v13, v13, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v12, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v13, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v13, :cond_9

    goto :goto_5

    :cond_9
    iget-wide v12, v12, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v12, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "      restartScheduledAt="

    invoke-static {v5, v13, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v10, v10, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_a

    if-ltz v11, :cond_a

    add-int/2addr v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_a
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    move v9, v1

    goto/16 :goto_3

    :cond_b
    const-string v6, "   Events:"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v4, v4, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    const/16 v7, 0x32

    if-ge v6, v7, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v10, -0x1

    if-eq v3, v10, :cond_c

    iget v14, v7, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-eq v3, v14, :cond_c

    if-eq v14, v10, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v5, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v7, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sub-long v1, v1, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    add-long v17, v17, v1

    invoke-static/range {v17 .. v18}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    iget v2, v7, Lcom/android/server/trust/TrustArchive$Event;->type:I

    packed-switch v2, :pswitch_data_0

    move/from16 v17, v15

    const-string/jumbo v15, "Unknown("

    const-string v8, ")"

    invoke-static {v2, v15, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :pswitch_0
    move/from16 v17, v15

    const-string v8, "DevicePolicyChanged"

    goto :goto_7

    :pswitch_1
    move/from16 v17, v15

    const-string/jumbo v8, "ManagingTrust"

    goto :goto_7

    :pswitch_2
    move/from16 v17, v15

    const-string v8, "AgentStopped"

    goto :goto_7

    :pswitch_3
    move/from16 v17, v15

    const-string v8, "AgentConnected"

    goto :goto_7

    :pswitch_4
    move/from16 v17, v15

    const-string v8, "AgentDied"

    goto :goto_7

    :pswitch_5
    move/from16 v17, v15

    const-string/jumbo v8, "TrustTimeout"

    goto :goto_7

    :pswitch_6
    move/from16 v17, v15

    const-string/jumbo v8, "RevokeTrust"

    goto :goto_7

    :pswitch_7
    move/from16 v17, v15

    const-string v8, "GrantTrust"

    :goto_7
    filled-new-array {v14, v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v8, "#%-2d %s %s: "

    invoke-virtual {v5, v8, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    if-ne v3, v10, :cond_d

    const-string/jumbo v1, "user="

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v7, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_d
    iget-object v1, v7, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    if-eqz v1, :cond_10

    const-string/jumbo v1, "agent="

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v9, :cond_e

    iget-object v1, v7, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    iget-object v1, v7, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_f

    if-ltz v8, :cond_f

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_f
    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_10
    :goto_8
    if-eqz v2, :cond_12

    const/4 v1, 0x6

    if-eq v2, v1, :cond_11

    const/4 v2, 0x0

    goto :goto_9

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v7, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v7, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v7, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    and-int/lit8 v14, v10, 0x1

    const/16 v15, 0x7c

    if-eqz v14, :cond_14

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    const-string v14, "INITIATED_BY_USER"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_16

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    const-string v10, "DISMISS_KEYGUARD"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_17

    const/16 v10, 0x30

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    filled-new-array {v7, v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, ", message=\"%s\", duration=%s, flags=%s"

    invoke-virtual {v5, v7, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_9
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    move/from16 v1, v17

    goto/16 :goto_6

    :cond_18
    move/from16 v17, v1

    move-object/from16 v16, v2

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    :goto_a
    move-object/from16 v2, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_19
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService$3$1;->this$1:Lcom/android/server/trust/TrustManagerService$3;

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mSignificantPlaceServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    if-eqz v1, :cond_1a

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3$1;->val$fout:Ljava/io/PrintWriter;

    invoke-interface {v1, v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->dump(Ljava/io/PrintWriter;)V

    :cond_1a
    return-void

    nop

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
