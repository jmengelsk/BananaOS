.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatController;ILjava/util/List;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iput p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-boolean p4, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-boolean v3, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$3:Z

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, v5, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v1, p1, :cond_1

    iget-object p1, v5, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    invoke-static {v5, v6, v6}, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;->clearSizeCompatModeForAllActivities(Lcom/android/server/wm/Task;ZZ)V

    iget-object v4, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-eqz v3, :cond_0

    const-string/jumbo p1, "MultiTaskingAppCompat:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    move-object v8, p0

    const/4 v9, 0x0

    const/16 v10, 0x3e8

    const/4 v7, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIILjava/lang/String;)V

    :cond_1
    return-void
.end method
