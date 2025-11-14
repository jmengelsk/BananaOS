.class public final Lcom/android/server/pinner/PinnerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pinner/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pinner/PinnerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$1;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$1;->this$0:Lcom/android/server/pinner/PinnerService;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pinner/PinnerService;->update(Landroid/util/ArraySet;Z)V

    :cond_23
    return-void
.end method
