.class public final Lcom/android/server/wm/BlurController$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BlurController;

.field public final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BlurController;Landroid/os/PowerManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/BlurController$2;->this$0:Lcom/android/server/wm/BlurController;

    iput-object p2, p0, Lcom/android/server/wm/BlurController$2;->val$powerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string/jumbo p1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/server/wm/BlurController$2;->this$0:Lcom/android/server/wm/BlurController;

    iget-object p2, p0, Lcom/android/server/wm/BlurController$2;->val$powerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    iget-object p0, p0, Lcom/android/server/wm/BlurController$2;->this$0:Lcom/android/server/wm/BlurController;

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    :cond_1c
    return-void
.end method
