.class public final Lcom/android/server/trust/TrustAgentWrapper$3;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const-string/jumbo v4, "TrustAgentWrapper"

    const-string/jumbo v5, "escrow_token"

    const-string/jumbo v6, "TrustManagerService"

    const-string/jumbo v7, "handle"

    const/4 v8, 0x0

    const-string/jumbo v9, "user_id"

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Error locking screen when called from trust agent"

    invoke-static {v6, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    :goto_0
    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_b

    :try_start_1
    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    invoke-interface {v0, v1}, Landroid/app/trust/ITrustListener;->onTrustError(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v6, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    const-string/jumbo v0, "Removing dead TrustListener."

    invoke-static {v6, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    :goto_1
    add-int/2addr v11, v10

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v4, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2, v3, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserWithToken(J[BI)Z

    return-void

    :pswitch_3
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result v0

    :try_start_2
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_b

    invoke-interface {v1, v2, v3, v0}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result v0

    :try_start_3
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_b

    invoke-interface {v1, v2, v3, v0}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenRemoved(JZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v4, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v2

    :try_start_4
    iget-object v4, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v4, v0, v2, v3, v5}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_0
    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    goto/16 :goto_6

    :pswitch_6
    iget v0, v1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move v10, v11

    :goto_2
    iput-boolean v10, v12, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-nez v10, :cond_2

    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    iput-object v8, v12, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v14, 0x6

    const/16 v20, 0x0

    iget v15, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v16, v2

    move/from16 v21, v10

    invoke-direct/range {v13 .. v21}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    invoke-virtual {v1, v13}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    iget v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    return-void

    :pswitch_7
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v10, v11

    :goto_3
    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    if-ne v1, v0, :cond_4

    iput-object v8, v12, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    iget-boolean v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-eqz v0, :cond_b

    if-eqz v10, :cond_b

    sget v0, Lcom/android/server/trust/TrustAgentWrapper;->$r8$clinit:I

    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    return-void

    :cond_4
    sget v0, Lcom/android/server/trust/TrustAgentWrapper;->$r8$clinit:I

    return-void

    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection attempt to agent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timed out, rebinding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v10

    :goto_4
    iget v3, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    if-ltz v2, :cond_7

    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, v5, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Resetting agent "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_5

    move v11, v10

    :cond_5
    iget-object v3, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v1, v3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    :cond_8
    invoke-virtual {v1, v3}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    return-void

    :pswitch_9
    sget v0, Lcom/android/server/trust/TrustAgentWrapper;->$r8$clinit:I

    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/android/server/trust/TrustArchive$Event;

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/4 v14, 0x2

    iget v15, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v21}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    invoke-virtual {v0, v13}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    :try_start_5
    iget-object v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onTrustTimeout()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_9
    :goto_5
    :pswitch_a
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    iput-object v8, v12, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x3

    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, v1, Landroid/os/Message;->what:I

    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    if-ne v0, v3, :cond_a

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v5, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    iget v4, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    :cond_a
    iget v0, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    :cond_b
    :goto_6
    return-void

    :pswitch_b
    iget-object v2, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v2, :cond_11

    iput-boolean v10, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, v12, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    iget v4, v1, Landroid/os/Message;->arg1:I

    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_c

    move v5, v10

    goto :goto_7

    :cond_c
    move v5, v11

    :goto_7
    iput-boolean v5, v12, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_d

    iput-boolean v10, v12, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    new-instance v5, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/trust/TrustAgentWrapper$3;)V

    invoke-virtual {v2, v5}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_8

    :cond_d
    iput-boolean v11, v12, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    :goto_8
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "duration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_f

    iget-wide v9, v12, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    cmp-long v5, v9, v5

    if-eqz v5, :cond_e

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    sget v7, Lcom/android/server/trust/TrustAgentWrapper;->$r8$clinit:I

    goto :goto_9

    :cond_e
    move-wide v5, v0

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long/2addr v9, v5

    iget-object v5, v12, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v6, v12, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    const/high16 v7, 0x12000000

    invoke-static {v5, v11, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v12, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v3, v9, v10, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_f
    iget-object v3, v12, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v6, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    iget-object v7, v12, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    if-eqz v7, :cond_10

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_10
    move-object/from16 v17, v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v14, 0x0

    const/16 v21, 0x0

    iget v15, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    move-wide/from16 v18, v0

    move/from16 v20, v4

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v21}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    move/from16 v0, v20

    invoke-virtual {v5, v13}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    iget v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v3, v1, v0, v11, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent is not connected, cannot grant trust: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
