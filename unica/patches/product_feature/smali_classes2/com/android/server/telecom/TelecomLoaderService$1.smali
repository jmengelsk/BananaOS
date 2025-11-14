.class public final Lcom/android/server/telecom/TelecomLoaderService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, p2, :cond_25

    aget v1, p1, v0

    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    sget-object v3, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_25
    return-void
.end method
