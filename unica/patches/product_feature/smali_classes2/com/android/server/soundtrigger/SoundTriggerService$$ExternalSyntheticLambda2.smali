.class public final synthetic Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger/SoundTriggerService;

.field public final synthetic f$1:Landroid/media/permission/Identity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;->f$1:Landroid/media/permission/Identity;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;->f$1:Landroid/media/permission/Identity;

    invoke-virtual {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->listUnderlyingModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
