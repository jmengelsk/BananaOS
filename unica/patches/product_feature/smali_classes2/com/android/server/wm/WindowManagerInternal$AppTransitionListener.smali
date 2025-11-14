.class public abstract Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mTargetDisplayId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->mTargetDisplayId:I

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked()V
    .registers 1

    return-void
.end method

.method public abstract onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
.end method

.method public onAppTransitionPendingLocked()V
    .registers 1

    return-void
.end method

.method public onAppTransitionStartingLocked(J)V
    .registers 3

    return-void
.end method
