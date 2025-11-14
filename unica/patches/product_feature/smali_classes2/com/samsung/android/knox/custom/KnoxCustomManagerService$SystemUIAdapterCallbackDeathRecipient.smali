.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public key:I

.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mIsCallbackDied:Z

    :cond_2
    :goto_0
    return-void
.end method
