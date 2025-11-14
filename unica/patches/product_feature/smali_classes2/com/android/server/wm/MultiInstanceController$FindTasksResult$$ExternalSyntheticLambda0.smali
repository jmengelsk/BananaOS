.class public final synthetic Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiInstanceController$FindTasksResult;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    iput-object p2, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    iget-object p0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/server/wm/Task;

    iget-object v1, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v2, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_8

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v5, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    if-eq v4, v5, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v3, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    :goto_0
    iget-object v3, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_6

    iget-object v5, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    iget-boolean v1, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->isDocument:Z

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    iget-object v1, p1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    return-void
.end method
