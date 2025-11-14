.class public final Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;
.super Ljava/lang/Record;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "activeRule",
        "keyCode",
        "pressCount",
        "displayId",
        "metaState",
        "deviceId",
        "event",
        "policyFlags",
        "longPressType"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;,
        I,
        I,
        I,
        I,
        I,
        Landroid/view/KeyEvent;,
        I,
        I
    }
.end annotation


# instance fields
.field public final activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field public final deviceId:I

.field public final displayId:I

.field public final event:Landroid/view/KeyEvent;

.field public final keyCode:I

.field public final longPressType:I

.field public final metaState:I

.field public final policyFlags:I

.field public final pressCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V
    .registers 10

    const/4 v0, -0x1

    if-nez p4, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    :goto_9
    if-nez p4, :cond_d

    const/4 v2, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    :goto_11
    if-nez p4, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_18
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iput p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    iput p3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    iput v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    iput-object p4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;

    iput p5, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I

    iput p6, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    if-eqz v0, :cond_46

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    if-ne v0, v1, :cond_46

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    if-ne v0, v1, :cond_46

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    if-ne v0, v1, :cond_46

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    if-ne v0, v1, :cond_46

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    if-ne v0, v1, :cond_46

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I

    if-ne v0, v1, :cond_46

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-object v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    const/4 p0, 0x1

    return p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 9

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    iget v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    iget v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I

    iget v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I

    iget-object v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v7}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;

    iget v9, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v0

    aput-object v3, v10, v1

    const/4 v2, 0x2

    aput-object v4, v10, v2

    const/4 v2, 0x3

    aput-object v5, v10, v2

    const/4 v2, 0x4

    aput-object v6, v10, v2

    const/4 v2, 0x5

    aput-object v7, v10, v2

    const/4 v2, 0x6

    aput-object v8, v10, v2

    const/4 v2, 0x7

    aput-object v9, v10, v2

    const/16 v2, 0x8

    aput-object p0, v10, v2

    const-class p0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    const-string/jumbo v2, "activeRule;keyCode;pressCount;displayId;metaState;deviceId;event;policyFlags;longPressType"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5c

    new-array v2, v0, [Ljava/lang/String;

    goto :goto_62

    :cond_5c
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_74
    array-length p0, v2

    if-ge v0, p0, :cond_91

    aget-object p0, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v10, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length p0, v2

    sub-int/2addr p0, v1

    if-eq v0, p0, :cond_8f

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8f
    add-int/2addr v0, v1

    goto :goto_74

    :cond_91
    const-string/jumbo p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
