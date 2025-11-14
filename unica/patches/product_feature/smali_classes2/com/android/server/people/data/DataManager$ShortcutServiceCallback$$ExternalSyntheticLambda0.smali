.class public final synthetic Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_a4

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    iget-object v5, v0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    iget-object v5, v5, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    sget v5, Lcom/android/server/notification/ShortcutHelper;->$r8$clinit:I

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_40

    goto :goto_1c

    :cond_40
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v5

    if-eqz v5, :cond_5f

    if-eqz v1, :cond_53

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v6, v5}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v5

    goto :goto_54

    :cond_53
    const/4 v5, 0x0

    :goto_54
    if-eqz v5, :cond_5e

    iget v5, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    const/16 v6, 0x4000

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v3, 0x1

    :cond_5f
    :goto_5f
    iget-object v5, v0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v5, v4}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_1c

    :cond_65
    if-eqz v3, :cond_70

    iget-object p0, v0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(I)V

    :cond_70
    return-void

    :pswitch_71  #0x0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_99
    iget-object v0, v0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/people/data/DataManager;->removeConversations(ILjava/lang/String;Ljava/util/Set;)V

    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_71  #00000000
    .end packed-switch
.end method
