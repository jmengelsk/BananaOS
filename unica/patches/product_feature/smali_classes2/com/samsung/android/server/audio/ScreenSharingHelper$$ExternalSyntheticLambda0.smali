.class public final synthetic Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Set;)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    packed-switch v0, :pswitch_data_3c

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0

    :pswitch_22  #0x0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_39

    const/4 p0, 0x1

    goto :goto_3a

    :cond_39
    const/4 p0, 0x0

    :goto_3a
    return p0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_22  #00000000
    .end packed-switch
.end method
