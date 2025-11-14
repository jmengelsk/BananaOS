.class public final Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mFeature:I

.field public final mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    iput p3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 5

    const-string v0, "Dead organizer replaced for feature="

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    iget-object v2, v2, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    if-eqz v2, :cond_1f

    iget-object v2, v2, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_65

    invoke-interface {v2}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v3}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_52

    const-string v2, "DisplayAreaOrganizerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_50
    move-exception p0

    goto :goto_6a

    :cond_52
    :try_start_52
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    iget p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    :cond_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_52 .. :try_end_66} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_6a
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
