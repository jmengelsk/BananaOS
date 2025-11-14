.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/people/data/DataManager;

    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/people/data/DataManager;

    iget-wide v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;->f$1:J

    move-object v5, p1

    check-cast v5, Lcom/android/server/people/data/PackageData;

    if-nez v5, :cond_a

    return-void

    :cond_a
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;

    iget-object v4, v5, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {v4, v0}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method
