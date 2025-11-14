.class public final Lcom/android/server/os/NativeTombstoneManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/os/NativeTombstoneManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/os/NativeTombstoneManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$1;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget p1, p0, Lcom/android/server/os/NativeTombstoneManager$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$1;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo p1, "android.intent.extra.UID"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$1;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eqz p2, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
