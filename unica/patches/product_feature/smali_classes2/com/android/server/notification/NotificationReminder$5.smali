.class public final Lcom/android/server/notification/NotificationReminder$5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationReminder;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/notification/NotificationReminder$5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$5;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationReminder$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$5;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :pswitch_0
    new-instance v0, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$5;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
