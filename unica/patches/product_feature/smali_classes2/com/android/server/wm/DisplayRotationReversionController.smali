.class public final Lcom/android/server/wm/DisplayRotationReversionController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mSlots:[Z

.field public mUserRotationOverridden:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final beforeOverrideApplied(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1a

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_17

    move v2, v5

    goto :goto_1a

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1a
    :goto_1a
    if-nez v2, :cond_24

    iget v2, v1, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v2, v5, :cond_24

    iget v1, v1, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    :cond_24
    aput-boolean v5, v0, p1

    return-void
.end method

.method public final revertOverride(I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    goto :goto_42

    :cond_8
    aput-boolean v2, v0, p1

    move p1, v2

    :goto_b
    const/4 v1, 0x3

    const/4 v3, 0x1

    if-ge p1, v1, :cond_18

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_15

    move p1, v3

    goto :goto_19

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_18
    move p1, v2

    :goto_19
    if-eqz p1, :cond_2d

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_42

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x3ba112cfb9fbc912L  # -2.2819742391242918E21

    const/4 p1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v2

    :cond_2d
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_42

    iget v4, p1, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v4, v3, :cond_42

    const-string v2, "DisplayRotationReversionController#revertOverride"

    invoke-virtual {p1, v3, v0, v2}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(IILjava/lang/String;)V

    iput v1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    return v3

    :cond_42
    :goto_42
    return v2
.end method
