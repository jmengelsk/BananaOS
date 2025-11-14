.class public final Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput p2, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    iget v0, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    return-void

    :cond_1
    const-string/jumbo v0, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget p2, p1, Lcom/android/server/people/data/UserData;->mUserId:I

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    iput-object p0, p1, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method
