.class public final Lcom/android/server/sepunion/SocialComposerObserverService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SocialComposerObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SocialComposerObserverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService$1;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService$1;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    iget-object p1, p1, Lcom/android/server/sepunion/SocialComposerObserverService;->mHandler:Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;

    new-instance v0, Lcom/android/server/sepunion/SocialComposerObserverService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/sepunion/SocialComposerObserverService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/SocialComposerObserverService$1;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
