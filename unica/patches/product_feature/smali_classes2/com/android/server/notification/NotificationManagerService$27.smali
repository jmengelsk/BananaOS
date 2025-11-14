.class public final Lcom/android/server/notification/NotificationManagerService$27;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$27;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$27;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStart(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$27;->$r8$classId:I

    packed-switch v0, :pswitch_data_38

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStart(), "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "noti_blocked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$27;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchNotiBlockedOn:Z

    :cond_28
    return-void

    :pswitch_29  #0x0
    const-string/jumbo v0, "onStart(), "

    const-string/jumbo v1, "NotificationService"

    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$27;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchViToastOn:Z

    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_29  #00000000
    .end packed-switch
.end method

.method public final onStop(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$27;->$r8$classId:I

    packed-switch v0, :pswitch_data_38

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStop(),"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "noti_blocked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$27;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchNotiBlockedOn:Z

    :cond_28
    return-void

    :pswitch_29  #0x0
    const-string/jumbo v0, "onStop(),"

    const-string/jumbo v1, "NotificationService"

    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$27;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchViToastOn:Z

    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_29  #00000000
    .end packed-switch
.end method
