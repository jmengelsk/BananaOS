.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Z[ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$0:Z

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$1:[Z

    iput-boolean p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$0:Z

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$1:[Z

    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;->f$2:Z

    check-cast p1, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-boolean v2, v1, v0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result p0

    and-int/2addr p0, v2

    aput-boolean p0, v1, v0

    return-void

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method
