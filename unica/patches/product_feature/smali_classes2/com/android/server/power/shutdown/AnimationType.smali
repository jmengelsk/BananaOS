.class final enum Lcom/android/server/power/shutdown/AnimationType;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/shutdown/AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/power/shutdown/AnimationType;

.field public static final enum MAIN:Lcom/android/server/power/shutdown/AnimationType;

.field public static final enum MAIN_LOOP:Lcom/android/server/power/shutdown/AnimationType;

.field public static final enum SUB:Lcom/android/server/power/shutdown/AnimationType;

.field public static final enum SUB_LOOP:Lcom/android/server/power/shutdown/AnimationType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/android/server/power/shutdown/AnimationType;

    const-string/jumbo v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/shutdown/AnimationType;->MAIN:Lcom/android/server/power/shutdown/AnimationType;

    new-instance v1, Lcom/android/server/power/shutdown/AnimationType;

    const-string/jumbo v2, "SUB"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/power/shutdown/AnimationType;->SUB:Lcom/android/server/power/shutdown/AnimationType;

    new-instance v2, Lcom/android/server/power/shutdown/AnimationType;

    const-string/jumbo v3, "MAIN_LOOP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/power/shutdown/AnimationType;->MAIN_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    new-instance v3, Lcom/android/server/power/shutdown/AnimationType;

    const-string/jumbo v4, "SUB_LOOP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/power/shutdown/AnimationType;->SUB_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/power/shutdown/AnimationType;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/shutdown/AnimationType;->$VALUES:[Lcom/android/server/power/shutdown/AnimationType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/shutdown/AnimationType;
    .registers 2

    const-class v0, Lcom/android/server/power/shutdown/AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/shutdown/AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/shutdown/AnimationType;
    .registers 1

    sget-object v0, Lcom/android/server/power/shutdown/AnimationType;->$VALUES:[Lcom/android/server/power/shutdown/AnimationType;

    invoke-virtual {v0}, [Lcom/android/server/power/shutdown/AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/shutdown/AnimationType;

    return-object v0
.end method
