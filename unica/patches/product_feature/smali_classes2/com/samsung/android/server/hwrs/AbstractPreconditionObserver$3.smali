.class public final Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string/jumbo p1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "mAccountChangeReceiver.onReceive - LOGIN_ACCOUNTS_CHANGED_ACTION"

    const-string/jumbo p2, "[HWRS_SYS]PreconditionObserver"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "handleSamsungAccountUpdate"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isSamsungAccountLogin()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->updateFlag(IZ)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->notifyChanged(I)V

    :cond_0
    return-void
.end method
