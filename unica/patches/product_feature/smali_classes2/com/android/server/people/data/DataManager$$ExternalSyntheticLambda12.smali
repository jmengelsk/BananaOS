.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    check-cast p1, Lcom/android/server/people/data/PackageData;

    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    iput-object v1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/android/server/people/data/PackageData;

    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
