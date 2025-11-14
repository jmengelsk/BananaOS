.class public final Lcom/android/server/wm/RotationWatcherController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisplayRotationWatchers:Ljava/util/ArrayList;

.field public volatile mHasProposedRotationListeners:Z

.field public final mProposedRotationListeners:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static unregister(Landroid/view/IRotationWatcher;Ljava/util/ArrayList;)Z
    .registers 7

    invoke-interface {p0}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    const/4 v2, 0x0

    if-ltz v0, :cond_2b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;

    iget-object v4, v3, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v4}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eq p0, v4, :cond_1e

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1e
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, v3, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {p0}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v1

    :cond_2b
    return v2
.end method


# virtual methods
.method public final dispatchProposedRotation(Lcom/android/server/wm/DisplayContent;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_4b

    iget-object v1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;

    iget-object v2, v1, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1b

    goto :goto_23

    :cond_1b
    iget-object v3, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowContextListenerController;->getContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    :goto_23
    if-eqz v3, :cond_2f

    iget-object v2, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v2, p1, :cond_48

    :try_start_29
    iget-object v1, v1, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, p2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_48

    goto :goto_48

    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    iget-object v2, v1, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :catch_48
    :cond_48
    :goto_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_4b
    return-void
.end method

.method public final registerDisplayRotationWatcher(Landroid/view/IRotationWatcher;I)V
    .registers 6

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_2a

    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;

    iget-object v2, v2, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_21

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Registering existed rotation watcher"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    new-instance v1, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;

    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;I)V

    iget-object p0, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :try_start_34
    invoke-interface {v0, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3a} :catch_3a

    :catch_3a
    return-void
.end method

.method public final registerProposedRotationListener(Landroid/os/IBinder;Landroid/view/IRotationWatcher;)V
    .registers 7

    invoke-interface {p2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_40

    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;

    iget-object v3, v2, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;->mToken:Landroid/os/IBinder;

    if-eq p1, v3, :cond_26

    iget-object v2, v2, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_23

    goto :goto_26

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_26
    :goto_26
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Register rotation listener to a registered token, uid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    new-instance v1, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;

    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, p2, p1}, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :try_start_4a
    invoke-interface {v0, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_50} :catch_50

    :catch_50
    iget-object p1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    return-void
.end method
