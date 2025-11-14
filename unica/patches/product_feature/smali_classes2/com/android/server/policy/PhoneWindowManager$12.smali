.class public final Lcom/android/server/policy/PhoneWindowManager$12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field public final synthetic val$awakenFromDreams:Z

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$displayId:I

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$awakenFromDreams:Z

    return-void
.end method


# virtual methods
.method public final onKeyguardExitResult(Z)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$displayId:I

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$awakenFromDreams:Z

    const-string/jumbo v3, "startDockOrHome"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v2, v4, p0}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(Ljava/lang/String;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    return-void
.end method
