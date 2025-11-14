.class public final Lcom/android/server/pinner/PinnerService$PinnerHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pinner/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pinner/PinnerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$PinnerHandler;->this$0:Lcom/android/server/pinner/PinnerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/pinner/PinnerService$PinnerHandler;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-object p0, v2, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10700cf

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v3, p0, v0

    const-string/jumbo v7, "system"

    const/4 v8, 0x1

    const-wide/32 v4, 0x7fffffff

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/pinner/PinnerService;->refreshPinAnonConfig()V

    return-void
.end method
