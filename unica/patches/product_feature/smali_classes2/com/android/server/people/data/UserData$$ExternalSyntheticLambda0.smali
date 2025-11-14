.class public final synthetic Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/UserData;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/UserData;

    iput-object p2, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/UserData;

    iget-object v2, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/people/data/PackageData;

    new-instance v4, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;

    const/4 p0, 0x0

    invoke-direct {v4, v0, p0}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/UserData;I)V

    new-instance v5, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;

    const/4 p0, 0x1

    invoke-direct {v5, v0, p0}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/UserData;I)V

    iget-object v6, v0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, v0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    iget v3, v0, Lcom/android/server/people/data/UserData;->mUserId:I

    invoke-direct/range {v1 .. v7}, Lcom/android/server/people/data/PackageData;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V

    return-object v1
.end method
