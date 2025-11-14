.class public abstract Lcom/android/server/wm/RotationWatcherController$RotationWatcher;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mOwnerUid:I

.field public final mWatcher:Landroid/view/IRotationWatcher;

.field public final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mOwnerUid:I

    iput-object p1, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWms:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    return-void
.end method
