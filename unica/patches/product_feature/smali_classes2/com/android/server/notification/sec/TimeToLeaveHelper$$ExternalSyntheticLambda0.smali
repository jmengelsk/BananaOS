.class public final synthetic Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/sec/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

    iput-object p2, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_6e

    iget-object v0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

    iget-object p0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string/jumbo p0, "TimeToLeaveHelper"

    const-string/jumbo p1, "Succeeded to set Schema"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1c  #0x1
    iget-object v0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

    iget-object p0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    const-string/jumbo v1, "TimeToLeaveHelper"

    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    const-string p0, "Failed to create AppSearchSession"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_40
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string/jumbo p0, "Succeeded to create AppSearchSession"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void

    :pswitch_56  #0x0
    iget-object v0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

    iget-object p0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string/jumbo p0, "TimeToLeaveHelper"

    const-string/jumbo p1, "succeeded to clear documents"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_56  #00000000
        :pswitch_1c  #00000001
    .end packed-switch
.end method
