.class public final Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

.field public final mDescriptorId:Ljava/lang/String;

.field public mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field public final mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field public final mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    new-instance p1, Landroid/media/MediaRouterClientState$RouteInfo;

    invoke-direct {p1, p3}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Route "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object p0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z
    .registers 13

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq v0, p1, :cond_b5

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    if-eqz p1, :cond_b5

    iget-object v0, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput-object v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    move v0, v4

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    iget-object v3, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    move-object v3, v1

    :cond_27
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v5, v5, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput-object v3, v0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    move v0, v4

    :cond_36
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_40

    iput v6, v3, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    move v0, v4

    :cond_40
    iget v5, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v5, v7, :cond_4d

    if-eq v5, v8, :cond_4d

    if-eq v5, v6, :cond_4d

    move v9, v2

    goto :goto_4e

    :cond_4d
    move v9, v4

    :goto_4e
    iget-boolean v10, v3, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eq v10, v9, :cond_55

    iput-boolean v9, v3, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    move v0, v4

    :cond_55
    if-eqz v5, :cond_68

    if-eq v5, v4, :cond_67

    if-eq v5, v7, :cond_65

    if-eq v5, v8, :cond_63

    if-eq v5, v6, :cond_61

    move v6, v2

    goto :goto_68

    :cond_61
    const/4 v6, 0x6

    goto :goto_68

    :cond_63
    move v6, v7

    goto :goto_68

    :cond_65
    move v6, v8

    goto :goto_68

    :cond_67
    const/4 v6, 0x5

    :cond_68
    :goto_68
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    if-eq v5, v6, :cond_6f

    iput v6, v3, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    move v0, v4

    :cond_6f
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    if-eq v5, v4, :cond_76

    iput v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    move v0, v4

    :cond_76
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    if-eq v5, v8, :cond_7d

    iput v8, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    move v0, v4

    :cond_7d
    iget v5, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    iget v6, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    if-gez v5, :cond_85

    move v5, v2

    goto :goto_88

    :cond_85
    if-le v5, v6, :cond_88

    move v5, v6

    :cond_88
    :goto_88
    iget v7, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    if-eq v7, v5, :cond_8f

    iput v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    move v0, v4

    :cond_8f
    if-lez v6, :cond_92

    goto :goto_93

    :cond_92
    move v6, v2

    :goto_93
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    if-eq v5, v6, :cond_9a

    iput v6, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    move v0, v4

    :cond_9a
    iget v5, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    if-eq v5, v4, :cond_9f

    goto :goto_a0

    :cond_9f
    move v2, v4

    :goto_a0
    iget v5, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    if-eq v5, v2, :cond_a8

    iput v2, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    move v2, v4

    goto :goto_a9

    :cond_a8
    move v2, v0

    :goto_a9
    iget p1, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    if-gez p1, :cond_ae

    const/4 p1, -0x1

    :cond_ae
    iget v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    if-eq v0, p1, :cond_b5

    iput p1, v3, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    move v2, v4

    :cond_b5
    if-eqz v2, :cond_b9

    iput-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    :cond_b9
    return v2
.end method
