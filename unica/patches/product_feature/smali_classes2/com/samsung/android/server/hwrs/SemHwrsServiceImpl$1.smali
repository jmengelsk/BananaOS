.class public final Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;->this$0:Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_37

    :cond_7
    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const-string/jumbo p1, "reason"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "EMERGENCY_STATE_CHANGED : "

    const-string/jumbo v0, "[HWRS_SYS]SemHwrsService"

    invoke-static {p1, p2, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2b

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;->this$0:Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->stopUser()V

    return-void

    :cond_2b
    const/4 p2, 0x5

    if-ne p1, p2, :cond_37

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;->this$0:Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->startUser(Landroid/os/UserHandle;)V

    :cond_37
    :goto_37
    return-void
.end method
