.class public final Lcom/android/server/wm/MultiWindowPointerEventListener$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x241fab39 -> :sswitch_2
        0x9468bc0 -> :sswitch_1
        0x70549e10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
