.class public final Lcom/android/server/sepunion/SocialComposerObserverService$3;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SocialComposerObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SocialComposerObserverService;Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService$3;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService$3;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    iget-object p1, p1, Lcom/android/server/sepunion/SocialComposerObserverService;->mHandler:Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/sepunion/SocialComposerObserverService$3;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    iget-object p0, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mHandler:Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
