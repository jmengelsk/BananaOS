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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    iput-object p2, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    iget-object p0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/server/wm/Task;

    iget-object v1, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_f

    goto/16 :goto_ae

    :cond_f
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v2, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    if-eq v1, v2, :cond_17

    goto/16 :goto_ae

    :cond_17
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_ae

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_ae

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v5, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    if-eq v4, v5, :cond_2b

    goto/16 :goto_ae

    :cond_2b
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_ae

    :cond_3d
    iget-object v3, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_5f

    :cond_4e
    if-eqz v4, :cond_5b

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_5f

    :cond_5b
    const/4 v2, 0x0

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    :goto_5f
    iget-object v3, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_77

    iget-object v5, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_77

    iget-object v3, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_77
    if-eqz v4, :cond_97

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_97

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_97

    iget-object v3, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_97
    iget-boolean v1, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->isDocument:Z

    if-nez v1, :cond_ae

    if-nez v2, :cond_ae

    iget-object v1, p1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v1, :cond_ae

    iget-object v0, v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ae
    :goto_ae
    return-void
.end method
