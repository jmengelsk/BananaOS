.class public final Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mCb:Landroid/os/IBinder;

.field public mDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

.field public final mFunctions:Ljava/util/HashMap;

.field public final mModule:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mModule:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mCb:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    monitor-enter p1

    const/4 p2, 0x0

    :goto_14
    :try_start_14
    array-length p4, p3

    if-ge p2, p4, :cond_25

    iget-object p4, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    aget-object p5, p3, p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p4, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :catchall_23
    move-exception p0

    goto :goto_27

    :cond_25
    monitor-exit p1

    return-void

    :goto_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_23

    throw p0
.end method


# virtual methods
.method public final binderDied()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mCb:Landroid/os/IBinder;

    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mCb:Landroid/os/IBinder;

    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Module:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mModule:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_f
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Function:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19

    :catchall_4c
    move-exception p0

    goto :goto_50

    :cond_4e
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_4c

    throw p0
.end method

.method public final has(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mModule:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    goto :goto_1b

    :cond_18
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public final isOn(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final off(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2a

    :try_start_b
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    invoke-interface {p0, p1}, Lcom/samsung/android/sepunion/IGoodCatchDispatcher;->onStop(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo p1, "SemGoodCatchService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final on(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2a

    :try_start_b
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    invoke-interface {p0, p1}, Lcom/samsung/android/sepunion/IGoodCatchDispatcher;->onStart(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo p1, "SemGoodCatchService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStart "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method
