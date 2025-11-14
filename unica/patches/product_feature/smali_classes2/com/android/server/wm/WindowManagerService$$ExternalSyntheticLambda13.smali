.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IZLandroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda13;->f$0:Landroid/os/IBinder;

    iput-boolean p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda13;->f$1:Z

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda13;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda13;->f$0:Landroid/os/IBinder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda13;->f$1:Z

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda13;->f$2:I

    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onImeInputTargetVisibilityChanged(IZLandroid/os/IBinder;)V

    return-void
.end method
