.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

.field public mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

.field public final mModelList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    return-void
.end method


# virtual methods
.method public final checkDuplicateModelUuid(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mWasContended:Z

    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0
.end method

.method public final clientAttached(Landroid/os/IBinder;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->clientAttached(Landroid/os/IBinder;)V

    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->clientDetached(Landroid/os/IBinder;)V

    return-void
.end method

.method public final detach()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->forceRecognitionEvent(I)V

    return-void
.end method

.method public final getModelParameter(II)I
    .registers 3

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    move-result p0

    return p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object p0

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object v0, v0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->checkDuplicateModelUuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;

    iget-object p1, p1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    iget-object p1, p1, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-direct {v1, p2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;-><init>(ILjava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return p2

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->checkDuplicateModelUuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;

    iget-object p1, p1, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-direct {v1, p2, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;-><init>(ILjava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return p2

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0

    return-object p0
.end method

.method public final reboot()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->reboot()V

    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    return-void
.end method

.method public final setModelParameter(III)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->setModelParameter(III)V

    return-void
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    return-void
.end method

.method public final stopRecognition(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    return-void
.end method

.method public final unloadSoundModel(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;

    iget v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mModelId:I

    if-ne v1, p1, :cond_32

    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mModelList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;

    iget-boolean p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mWasContended:Z

    if-eqz p1, :cond_35

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;->onResourcesAvailable()V

    return-void

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_35
    return-void
.end method
