.class public final synthetic Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$13;

.field public final synthetic f$1:Landroid/app/NotificationManager$Policy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$13;Landroid/app/NotificationManager$Policy;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$13;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 5

    const-string/jumbo v0, "android.app.extra.NOTIFICATION_POLICY"

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_4e

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$13;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.app.action.CONSOLIDATED_NOTIFICATION_POLICY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->requestSort()V

    return-void

    :pswitch_29  #0x0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$13;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->requestSort()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->notifyZenPolicy()V

    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_29  #00000000
    .end packed-switch
.end method
