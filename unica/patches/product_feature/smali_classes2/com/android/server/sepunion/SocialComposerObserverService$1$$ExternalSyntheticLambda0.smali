.class public final synthetic Lcom/android/server/sepunion/SocialComposerObserverService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SocialComposerObserverService$1;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SocialComposerObserverService$1;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SocialComposerObserverService$1;

    iput-object p2, p0, Lcom/android/server/sepunion/SocialComposerObserverService$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/SocialComposerObserverService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SocialComposerObserverService$1;

    iget-object p0, p0, Lcom/android/server/sepunion/SocialComposerObserverService$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    sget v1, Lcom/android/server/sepunion/SocialComposerObserverService$1;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SC/SocialComposerObserverService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "android.intent.action.USER_UNLOCKED"

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    iget-object p0, v0, Lcom/android/server/sepunion/SocialComposerObserverService$1;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    iget-object p0, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_4a

    iget-object p0, v0, Lcom/android/server/sepunion/SocialComposerObserverService$1;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    invoke-static {p0}, Lcom/android/server/sepunion/SocialComposerObserverService;->-$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/SocialComposerObserverService;)V

    return-void

    :cond_4a
    const-string/jumbo p0, "registerUsageStatsWatcher: failed"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void
.end method
