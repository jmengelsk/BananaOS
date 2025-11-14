.class public final Lcom/android/server/textclassifier/FixedSizeQueue;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mDelegate:Ljava/util/Queue;

.field public final mMaxSize:I

.field public final mOnEntryEvictedListener:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$$ExternalSyntheticLambda0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "maxSize (%s) must > 0"

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    iput v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mMaxSize:I

    iput-object p1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mOnEntryEvictedListener:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mMaxSize:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mOnEntryEvictedListener:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    iget-object v1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    const-string/jumbo v2, "Pending request["

    const-string/jumbo v3, "] is dropped"

    const-string/jumbo v4, "TextClassificationManagerService"

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
