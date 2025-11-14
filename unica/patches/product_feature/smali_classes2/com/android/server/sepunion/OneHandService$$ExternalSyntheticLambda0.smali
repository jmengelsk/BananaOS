.class public final synthetic Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-static {p0}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$mstartGestureService(Lcom/android/server/sepunion/OneHandService;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/server/sepunion/OneHandService;

    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "any_screen_running"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
