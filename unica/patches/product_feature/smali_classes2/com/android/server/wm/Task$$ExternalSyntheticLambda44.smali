.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:[I

.field public final synthetic f$2:[Landroid/content/Intent;

.field public final synthetic f$3:[Lcom/android/server/uri/NeededUriGrants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$1:[I

    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$2:[Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$3:[Lcom/android/server/uri/NeededUriGrants;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$1:[I

    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$2:[Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->f$3:[Lcom/android/server/uri/NeededUriGrants;

    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    if-ne v3, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p1, 0x0

    aget v4, v1, p1

    aget-object v5, v2, p1

    aget-object v6, p0, p1

    const-string/jumbo v7, "navigate-up"

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    aput p1, v1, p1

    const/4 p0, 0x0

    aput-object p0, v2, p1

    return p1
.end method
