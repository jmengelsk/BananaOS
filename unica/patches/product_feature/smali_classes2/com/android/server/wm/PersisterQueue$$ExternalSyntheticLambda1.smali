.class public final synthetic Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    check-cast p1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    invoke-interface {p0, p1}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z

    move-result p0

    return p0
.end method
