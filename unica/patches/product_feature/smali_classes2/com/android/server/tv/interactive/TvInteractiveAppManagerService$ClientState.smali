.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mClientToken:Landroid/os/IBinder;

.field public final mSessionTokens:Ljava/util/List;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    if-eqz v1, :cond_6f

    :cond_1b
    :goto_1b
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6f

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    const/16 v5, 0x3e8

    invoke-static {v3, v2, v5, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)V

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string/jumbo v3, "TvInteractiveAppManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove sessionToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1b

    :catchall_6d
    move-exception p0

    goto :goto_74

    :cond_6f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    monitor-exit v0

    return-void

    :goto_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_5 .. :try_end_75} :catchall_6d

    throw p0
.end method
