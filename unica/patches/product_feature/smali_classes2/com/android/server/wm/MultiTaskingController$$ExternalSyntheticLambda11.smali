.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget v1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$3:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityEmbeddedController;->findTargetUserId(I)I

    move-result v0

    if-ne v0, v1, :cond_29

    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method
