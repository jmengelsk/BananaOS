.class public final Lcom/android/server/sepunion/SmartMeetingObserverService$1;
.super Landroid/app/IForegroundServiceObserver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$1;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    invoke-direct {p0}, Landroid/app/IForegroundServiceObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string/jumbo v2, "component_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "pkg_name"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "user_id"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "is_foreground"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$1;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
