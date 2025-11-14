.class public final synthetic Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/sec/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

    iput-object p2, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 0

    iget p1, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

    iget-object p0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string/jumbo p0, "TimeToLeaveHelper"

    const-string/jumbo p1, "succeeded to remove documents"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

    iget-object p0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string/jumbo p0, "TimeToLeaveHelper"

    const-string/jumbo p1, "succeeded to put documents"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
