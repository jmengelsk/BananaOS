.class public final Lcom/android/server/pm/ApexManager$1;
.super Landroid/util/Singleton;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final create()Ljava/lang/Object;
    .registers 1

    new-instance p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-direct {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;-><init>()V

    return-object p0
.end method
