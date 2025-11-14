.class public final Lcom/android/server/wm/VrController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ORIG_ENUMS:[I

.field public static final PROTO_ENUMS:[I


# instance fields
.field public final mGlobalAmLock:Ljava/lang/Object;

.field public final mPersistentVrModeListener:Lcom/android/server/wm/VrController$1;

.field public mVrRenderThreadTid:I

.field public mVrService:Lcom/android/server/vr/VrManagerService$LocalService;

.field public volatile mVrState:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sput-object v3, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    new-instance v0, Lcom/android/server/wm/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/VrController$1;-><init>(Lcom/android/server/wm/VrController;)V

    iput-object v0, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Lcom/android/server/wm/VrController$1;

    iput-object p1, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setVrRenderThreadLocked(IIZ)I
    .registers 8

    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    iget v3, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    if-eqz v0, :cond_1f

    if-nez v1, :cond_1f

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1a

    goto :goto_1f

    :cond_1a
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result p0

    return p0

    :cond_1f
    :goto_1f
    if-nez p3, :cond_3c

    if-nez v0, :cond_27

    const-string/jumbo p1, "system not in VR mode."

    goto :goto_30

    :cond_27
    if-eqz v1, :cond_2d

    const-string/jumbo p1, "system in persistent VR mode."

    goto :goto_30

    :cond_2d
    const-string/jumbo p1, "caller is not the current top application."

    :goto_30
    const-string p2, "Failed to set VR thread, "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "VrController"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "[VrState=0x%x,VrRenderThreadTid=%d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateVrRenderThreadLocked(IZ)I
    .registers 4

    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_5

    return v0

    :cond_5
    if-lez v0, :cond_d

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    :cond_d
    if-lez p1, :cond_14

    iput p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)V

    :cond_14
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p0
.end method
