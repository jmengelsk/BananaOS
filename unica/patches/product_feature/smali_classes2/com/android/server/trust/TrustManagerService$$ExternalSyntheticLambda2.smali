.class public final synthetic Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/trust/TrustManagerService;

    return-void
.end method


# virtual methods
.method public final onEscrowTokenActivated(JI)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/trust/TrustManagerService;

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p3, :cond_26

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_26

    const/4 v2, 0x1

    :try_start_1e
    invoke-interface {v1, p1, p2, v2}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v1

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_29
    return-void
.end method
