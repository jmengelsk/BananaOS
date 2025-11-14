.class public final synthetic Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger/SoundTriggerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/media/permission/Identity;

.field public final synthetic f$3:Landroid/media/permission/Identity;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iput p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$2:Landroid/media/permission/Identity;

    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$3:Landroid/media/permission/Identity;

    iput-boolean p5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$4:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$1:I

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$2:Landroid/media/permission/Identity;

    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$3:Landroid/media/permission/Identity;

    iget-boolean v8, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$4:Z

    move-object v4, p1

    check-cast v4, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget-object v2, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mMiddlewareService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct/range {v1 .. v8}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V

    return-object v1
.end method
