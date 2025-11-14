.class public final Lcom/android/server/notification/SmartAlertController$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "SmartAlertController"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    const-string/jumbo p1, "why"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "ACTION_SCREEN_ON, reason = "

    invoke-static {p1, p2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    return-void

    :cond_1
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ACTION_SCREEN_OFF"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    iput-boolean v2, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    iget-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/android/server/notification/SmartAlertController$3;

    invoke-direct {p1, p0}, Lcom/android/server/notification/SmartAlertController$3;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mInCall:Z

    :cond_3
    return-void
.end method
