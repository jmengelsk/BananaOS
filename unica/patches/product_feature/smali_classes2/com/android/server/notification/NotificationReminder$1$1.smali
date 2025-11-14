.class public final Lcom/android/server/notification/NotificationReminder$1$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const/16 v1, 0x3ec

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationReminder;->sendMessage(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationReminder$1;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationReminder$1;

    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v2, v1, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationReminder$1;

    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mplaySoundVibration(Lcom/android/server/notification/NotificationReminder;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationReminder$1;

    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationReminder$1;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationReminder$1;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
