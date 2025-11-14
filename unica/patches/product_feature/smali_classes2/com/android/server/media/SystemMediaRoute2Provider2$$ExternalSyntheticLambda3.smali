.class public final synthetic Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

.field public final synthetic f$1:Landroid/media/MediaRoute2ProviderInfo$Builder;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/MediaRoute2ProviderInfo$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$1:Landroid/media/MediaRoute2ProviderInfo$Builder;

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$1:Landroid/media/MediaRoute2ProviderInfo$Builder;

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mOriginalRouteIdToProviderId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
