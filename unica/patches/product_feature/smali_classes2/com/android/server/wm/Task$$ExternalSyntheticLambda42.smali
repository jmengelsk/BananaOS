.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/wm/Task;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;->f$1:[Z

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    aget-boolean v2, p0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    if-ne p1, v0, :cond_1

    aput-boolean v3, p0, v1

    :cond_1
    return v1
.end method
