.class public final Lcom/android/server/power/ScreenCurtainController$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$3;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_88

    goto :goto_42

    :sswitch_13
    const-string/jumbo v4, "com.samsung.pen.INSERT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_42

    :cond_1d
    move v3, v0

    goto :goto_42

    :sswitch_1f
    const-string/jumbo v4, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_42

    :cond_29
    const/4 v3, 0x2

    goto :goto_42

    :sswitch_2b
    const-string/jumbo v4, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_42

    :cond_35
    move v3, v1

    goto :goto_42

    :sswitch_37
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_42

    :cond_41
    move v3, v2

    :goto_42
    packed-switch v3, :pswitch_data_9a

    goto :goto_68

    :pswitch_46  #0x3
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController$3;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-boolean v3, p1, Lcom/android/server/power/ScreenCurtainController;->mPenInsertStateInitialized:Z

    if-nez v3, :cond_4f

    iput-boolean v1, p1, Lcom/android/server/power/ScreenCurtainController;->mPenInsertStateInitialized:Z

    goto :goto_68

    :cond_4f
    const-string/jumbo p1, "penInsert"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_68

    const/4 v2, 0x6

    goto :goto_68

    :pswitch_5a  #0x2
    const/4 v2, 0x5

    goto :goto_68

    :pswitch_5c  #0x1
    const-string/jumbo p1, "android.samsung.media.extra.AUDIO_MODE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lt p1, v1, :cond_68

    move v2, v0

    goto :goto_68

    :pswitch_67  #0x0
    const/4 v2, 0x4

    :cond_68
    :goto_68
    if-eqz v2, :cond_86

    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController$3;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-object p1, p1, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$3;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

    check-cast p0, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_86
    return-void

    nop

    :sswitch_data_88
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_37
        -0x7539e1b9 -> :sswitch_2b
        -0x5cb29ba5 -> :sswitch_1f
        -0x145e1ed1 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_67  #00000000
        :pswitch_5c  #00000001
        :pswitch_5a  #00000002
        :pswitch_46  #00000003
    .end packed-switch
.end method
