.class public final Lcom/android/server/smartclip/SpenGestureManagerService$5;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    const/16 p0, 0x9

    invoke-static {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mbroastcastHoverEvent(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    return-void

    :pswitch_1
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$msendDefferedPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    return-void

    :pswitch_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendPenDetectionInfo."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    const-string/jumbo v2, "SpenGestureManagerService"

    invoke-static {p1, v0, v2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean p1, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    const-string/jumbo v0, "penName"

    if-nez p1, :cond_1

    const-string/jumbo p1, "Start AirCommandUiService. #0"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "cause"

    const-string/jumbo v3, "pen_detected"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    iput-object p0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    return-void

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    const-string/jumbo v5, "eventTime"

    invoke-virtual {p1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v4, p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p1, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to send the pen detection info"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void

    :pswitch_3
    const/16 p0, 0xa

    invoke-static {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mbroastcastHoverEvent(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3018
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
