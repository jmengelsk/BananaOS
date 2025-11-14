.class public final synthetic Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/HqmDataDispatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/HqmDataDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/HqmDataDispatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/HqmDataDispatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;-><init>(Lcom/android/server/power/HqmDataDispatcher;)V

    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher;->mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
