.class public final Lcom/android/server/oemlock/OemLockService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/oemlock/OemLockService;


# direct methods
.method public constructor <init>(Lcom/android/server/oemlock/OemLockService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo p1, "no_factory_reset"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$1;->this$0:Lcom/android/server/oemlock/OemLockService;

    iget-object p1, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByDevice(Z)V

    invoke-static {p0, p2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V

    :cond_0
    return-void
.end method
