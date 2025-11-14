.class public final Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    goto/16 :goto_f0

    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_14

    goto/16 :goto_f0

    :cond_14
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const-string/jumbo v6, "[MCF_DS_SYS]_PreconditionObserver"

    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_fc

    goto :goto_54

    :sswitch_25
    const-string/jumbo v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_54

    :cond_2f
    move v7, p1

    goto :goto_54

    :sswitch_31
    const-string/jumbo v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_54

    :cond_3b
    move v7, v0

    goto :goto_54

    :sswitch_3d
    const-string/jumbo v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto :goto_54

    :cond_47
    move v7, v1

    goto :goto_54

    :sswitch_49
    const-string/jumbo v8, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto :goto_54

    :cond_53
    move v7, v2

    :goto_54
    packed-switch v7, :pswitch_data_10e

    goto/16 :goto_f0

    :pswitch_59  #0x3
    const-string/jumbo p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-static {p2, v4}, Lcom/samsung/android/server/continuity/PreconditionObserver;->-$$Nest$msetInstalledFlag(Lcom/samsung/android/server/continuity/PreconditionObserver;Ljava/lang/String;)V

    if-eqz p1, :cond_73

    const-string/jumbo p1, "handlePackageAdded - with EXTRA_REPLACING"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-static {p0, v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->-$$Nest$mnotifyReplacedPackage(Lcom/samsung/android/server/continuity/PreconditionObserver;Z)V

    return-void

    :cond_73
    const-string/jumbo p1, "handlePackageAdded - without EXTRA_REPLACING"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged(I)V

    return-void

    :pswitch_7f  #0x2
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "com.samsung.android.scloud"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9a

    const-string/jumbo p2, "unsetInstalledFlag - Scloud"

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    and-int/lit16 p2, p2, -0xf1

    iput p2, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    goto :goto_af

    :cond_9a
    const-string/jumbo p2, "com.samsung.android.mcfds"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_af

    const-string/jumbo p2, "unsetInstalledFlag - MCFDS"

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    and-int/lit16 p2, p2, -0xf01

    iput p2, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    :cond_af
    :goto_af
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged(I)V

    return-void

    :pswitch_b5  #0x1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iget-object p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    if-eqz p0, :cond_f0

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    iget-object p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {p2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->meetConditions()Z

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPackageRestarted - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    if-nez p2, :cond_e7

    goto :goto_f0

    :cond_e7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    const-wide/16 p1, 0x3e8

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->sendMessageDelayed(IIJ)V

    :cond_f0
    :goto_f0
    return-void

    :pswitch_f1  #0x0
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-static {p1, v4}, Lcom/samsung/android/server/continuity/PreconditionObserver;->-$$Nest$msetInstalledFlag(Lcom/samsung/android/server/continuity/PreconditionObserver;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-static {p0, v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->-$$Nest$mnotifyReplacedPackage(Lcom/samsung/android/server/continuity/PreconditionObserver;Z)V

    return-void

    :sswitch_data_fc
    .sparse-switch
        -0x304ed112 -> :sswitch_49
        -0x2d2ad030 -> :sswitch_3d
        0x1f50b9c2 -> :sswitch_31
        0x5c1076e2 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_f1  #00000000
        :pswitch_b5  #00000001
        :pswitch_7f  #00000002
        :pswitch_59  #00000003
    .end packed-switch
.end method
