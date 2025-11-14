.class public final synthetic Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/people/data/Event;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/people/data/Event;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/people/data/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/people/data/Event;

    check-cast p1, Lcom/android/server/people/data/UserData;

    iget-object v1, p1, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/PackageData;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {p1, v1, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/people/data/Event;

    check-cast p1, Lcom/android/server/people/data/UserData;

    iget-object v1, p1, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/PackageData;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x3

    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {p1, v1, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
