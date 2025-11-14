.class public final synthetic Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/SessionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/SessionInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/SessionInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/SessionInfo;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_2a

    :try_start_d
    iget-object v2, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/IPredictionCallback;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Landroid/app/prediction/IPredictionCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1d} :catch_1e

    goto :goto_27

    :catch_1e
    move-exception v2

    const-string v3, "Failed to calling callback"

    const-string/jumbo v4, "SessionInfo"

    invoke-static {v3, v2, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2a
    iget-object p0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
