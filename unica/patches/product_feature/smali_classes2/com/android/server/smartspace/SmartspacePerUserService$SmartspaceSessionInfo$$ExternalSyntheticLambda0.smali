.class public final synthetic Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

.field public final synthetic f$1:Lcom/android/server/smartspace/SmartspacePerUserService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/smartspace/SmartspacePerUserService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/smartspace/SmartspacePerUserService;

    check-cast p1, Landroid/app/smartspace/ISmartspaceCallback;

    iget-object v0, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_1
    :goto_0
    return-void
.end method
