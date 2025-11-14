.class public final Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string/jumbo p0, "UcmServiceAppletHelper"

    const-string/jumbo p1, "handleMessage. wrong msg"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->runLccmScript()V

    return-void
.end method
