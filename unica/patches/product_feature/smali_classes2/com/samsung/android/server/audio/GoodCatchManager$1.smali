.class public final Lcom/samsung/android/server/audio/GoodCatchManager$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/GoodCatchManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/GoodCatchManager;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStart(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "onStart "

    const-string v1, "AS.GoodCatchManager"

    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    return-void

    :pswitch_0
    const-string/jumbo v0, "onStart "

    const-string v1, "AS.GoodCatchManager"

    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    aput-boolean v3, p0, v1

    goto :goto_0

    :cond_0
    aget-object v1, v0, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    aput-boolean v3, p0, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    aput-boolean v3, p0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    aput-boolean v3, p0, v1

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStop(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "onStop "

    const-string v1, "AS.GoodCatchManager"

    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    return-void

    :pswitch_0
    const-string/jumbo v0, "onStop "

    const-string v1, "AS.GoodCatchManager"

    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_FUNC:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    aput-boolean v1, p0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    aput-boolean v1, p0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    aput-boolean v1, p0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundFunc:[Z

    aput-boolean v1, p0, v2

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
