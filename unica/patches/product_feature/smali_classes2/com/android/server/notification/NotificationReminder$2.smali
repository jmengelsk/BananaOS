.class public final Lcom/android/server/notification/NotificationReminder$2;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$2;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$2;->this$0:Lcom/android/server/notification/NotificationReminder;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V

    return-void

    :pswitch_1
    iget-boolean p1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    return-void

    :pswitch_2
    iget-boolean p1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
