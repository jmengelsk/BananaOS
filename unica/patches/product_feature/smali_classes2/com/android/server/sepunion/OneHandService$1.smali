.class public final Lcom/android/server/sepunion/OneHandService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/OneHandService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/OneHandService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$1;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_14

    const-string/jumbo p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$1;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-static {p0}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$mstartGestureService(Lcom/android/server/sepunion/OneHandService;)V

    :cond_14
    return-void
.end method
