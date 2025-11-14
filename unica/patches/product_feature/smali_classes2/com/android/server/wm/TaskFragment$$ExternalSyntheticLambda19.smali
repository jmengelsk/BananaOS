.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda19;->f$0:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda19;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda19;->f$0:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda19;->f$1:I

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
