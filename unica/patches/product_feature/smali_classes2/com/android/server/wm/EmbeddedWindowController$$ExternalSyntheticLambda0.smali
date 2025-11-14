.class public final synthetic Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/EmbeddedWindowController;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Landroid/window/InputTransferToken;

.field public final synthetic f$3:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/EmbeddedWindowController;

    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$2:Landroid/window/InputTransferToken;

    iput-object p4, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$3:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/EmbeddedWindowController;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$2:Landroid/window/InputTransferToken;

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$3:Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
