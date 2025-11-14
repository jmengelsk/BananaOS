.class final enum Lcom/android/server/wm/DisplayArea$Type;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/DisplayArea$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum ANY:Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/wm/DisplayArea$Type;

    const-string v1, "ABOVE_TASKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    new-instance v1, Lcom/android/server/wm/DisplayArea$Type;

    const-string v2, "BELOW_TASKS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    new-instance v2, Lcom/android/server/wm/DisplayArea$Type;

    const-string v3, "ANY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/DisplayArea$Type;->$VALUES:[Lcom/android/server/wm/DisplayArea$Type;

    return-void
.end method

.method public static typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/server/wm/DisplayArea;

    iget-object p0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_2

    check-cast p0, Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/DisplayArea$Type;
    .locals 1

    const-class v0, Lcom/android/server/wm/DisplayArea$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayArea$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/DisplayArea$Type;
    .locals 1

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->$VALUES:[Lcom/android/server/wm/DisplayArea$Type;

    invoke-virtual {v0}, [Lcom/android/server/wm/DisplayArea$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/DisplayArea$Type;

    return-object v0
.end method
