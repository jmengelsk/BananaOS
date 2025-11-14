.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mModelId:I

.field public final mUuid:Ljava/lang/String;

.field public mWasContended:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mWasContended:Z

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mModelId:I

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mUuid:Ljava/lang/String;

    return-void
.end method
