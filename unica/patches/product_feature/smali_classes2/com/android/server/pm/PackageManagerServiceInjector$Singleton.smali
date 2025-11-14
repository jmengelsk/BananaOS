.class Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public volatile mInstance:Ljava/lang/Object;

.field public final mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    return-void
.end method


# virtual methods
.method public final get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->mInstance:Ljava/lang/Object;

    return-object p0
.end method
