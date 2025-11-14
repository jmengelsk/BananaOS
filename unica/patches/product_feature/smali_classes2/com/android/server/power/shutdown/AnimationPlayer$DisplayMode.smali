.class final enum Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

.field public static final enum MAIN_MAIN:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

.field public static final enum MAIN_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

.field public static final enum SUB_MAIN:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

.field public static final enum SUB_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    const-string/jumbo v2, "MAIN_MAIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->MAIN_MAIN:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    new-instance v2, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    const-string/jumbo v3, "MAIN_SUB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->MAIN_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    new-instance v3, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    const-string/jumbo v4, "SUB_MAIN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    const-string/jumbo v5, "SUB_SUB"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->SUB_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->$VALUES:[Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;
    .registers 2

    const-class v0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;
    .registers 1

    sget-object v0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->$VALUES:[Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    invoke-virtual {v0}, [Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    return-object v0
.end method
