.class public final synthetic Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;

    iget v0, p1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    iget-object p1, p1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    iget-object v1, p1, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    iget p1, p1, Landroid/media/soundtrigger/Properties;->version:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mId:I

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mImplementor:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mVersion:I

    return-object p0
.end method
