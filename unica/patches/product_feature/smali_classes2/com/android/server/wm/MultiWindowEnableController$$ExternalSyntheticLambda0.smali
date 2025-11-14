.class public final synthetic Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowEnableController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowEnableController;Ljava/lang/String;ZIZI)V
    .locals 0

    iput p6, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowEnableController;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$2:Z

    iput p4, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$4:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowEnableController;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$2:Z

    iget v3, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$3:I

    iget-boolean p0, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$4:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.extra.MULTI_WINDOW_ENABLE_REQUESTER"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.extra.MULTI_WINDOW_ENABLED"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.extra.MULTI_WINDOW_ENABLED_USER_ID"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.extra.IN_MULTI_WINDOW_MODE"

    invoke-virtual {v4, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, v0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v1, "com.samsung.android.permission.MULTI_WINDOW_MONITOR"

    const/4 v2, -0x1

    invoke-virtual {p0, v4, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowEnableController;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$2:Z

    iget v9, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$3:I

    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$4:Z

    iget-object p0, v6, Lcom/android/server/wm/MultiWindowEnableController;->mH:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiWindowEnableController;Ljava/lang/String;ZIZI)V

    invoke-virtual {p0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
