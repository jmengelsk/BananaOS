.class public final Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    :try_start_0
    invoke-interface {p1, v1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->onAdvancedProtectionChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v3, v3, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v3, v3, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;

    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v1}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    const-string v5, "AdvancedProtectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to call hook for feature "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/advancedprotection/AdvancedProtectionFeature;->getId()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v0, v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    move v3, v2

    :goto_4
    :try_start_2
    iget-object v4, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v4, v4, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v4, v4, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v4, v1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->onAdvancedProtectionChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_2
    :try_start_4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v1, v1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    invoke-interface {v3}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    monitor-exit v0

    :goto_7
    return-void

    :goto_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
