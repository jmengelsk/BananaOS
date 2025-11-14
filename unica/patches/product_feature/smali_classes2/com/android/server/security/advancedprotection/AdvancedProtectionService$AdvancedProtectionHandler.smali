.class public final Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    if-eq v0, v1, :cond_a

    goto/16 :goto_b0

    :cond_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    :try_start_14
    invoke-interface {p1, v1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->onAdvancedProtectionChanged(Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_19

    goto/16 :goto_b0

    :catch_19
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b0

    :cond_26
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_32
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v3, v3, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6f

    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v3, v3, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;

    :try_start_46
    invoke-virtual {v3}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v3, v1}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_50

    goto :goto_6c

    :catch_50
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

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_6f
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v0, v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    move v3, v2

    :goto_75
    :try_start_75
    iget-object v4, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v4, v4, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_95

    iget-object v4, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v4, v4, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    :try_end_89
    .catchall {:try_start_75 .. :try_end_89} :catchall_8d

    :try_start_89
    invoke-interface {v4, v1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->onAdvancedProtectionChanged(Z)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8c} :catch_8f
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_92

    :catchall_8d
    move-exception p0

    goto :goto_b1

    :catch_8f
    :try_start_8f
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_95
    :goto_95
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_af

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v1, v1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    invoke-interface {v3}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    :cond_af
    monitor-exit v0

    :goto_b0
    return-void

    :goto_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_8f .. :try_end_b2} :catchall_8d

    throw p0
.end method
