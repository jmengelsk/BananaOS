.class public final Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/AudioGameManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/AudioGameManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    const-string p1, "AudioGameThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    iget-object v0, v0, Lcom/samsung/android/server/audio/AudioGameManager;->mSemGameManager:Lcom/samsung/android/game/SemGameManager;

    invoke-virtual {v0}, Lcom/samsung/android/game/SemGameManager;->getGameList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    iget-object v2, v2, Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_23

    goto :goto_c

    :cond_23
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/server/audio/AudioGameManager;->addGameUid(IZ)V

    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    iget-object v1, v1, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_c

    :cond_35
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V
    :try_end_3a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void
.end method
