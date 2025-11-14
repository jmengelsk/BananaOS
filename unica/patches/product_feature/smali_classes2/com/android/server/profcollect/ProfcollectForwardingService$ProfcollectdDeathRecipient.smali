.class public final Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    const-string/jumbo v0, "ProfcollectForwardingService"

    const-string/jumbo v1, "profcollectd has died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
