.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/people/data/DataManager;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_2a

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/people/data/DataManager;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    iget-object p0, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_19  #0x0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/people/data/DataManager;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/people/data/PackageData;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;)V

    iget-object p0, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_19  #00000000
    .end packed-switch
.end method
