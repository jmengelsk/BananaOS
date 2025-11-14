.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/UserHandle;

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/pm/ShortcutService;

    iput p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$4:Landroid/os/UserHandle;

    iput-object p6, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$4:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;->f$5:Ljava/util/List;

    sget-object v5, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_11
    iget-object v5, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_51

    :try_start_14
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_1e

    monitor-exit v5

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_4f

    :cond_1e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_1c

    :try_start_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2c
    if-ltz v0, :cond_51

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    invoke-interface {v5, v3, v2, v4}, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    :cond_3d
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    invoke-interface {v5, v3, p0, v4}, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;->onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4c} :catch_51

    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    :goto_4f
    :try_start_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_1c

    :try_start_50
    throw p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_51} :catch_51

    :catch_51
    :cond_51
    return-void
.end method
