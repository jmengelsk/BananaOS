.class public final synthetic Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InputMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InputMonitor;

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->onDisplayRemoved(I)V

    return-void
.end method
