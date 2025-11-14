.class public final synthetic Lcom/android/server/tv/TvRemoteProviderWatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackages:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method
