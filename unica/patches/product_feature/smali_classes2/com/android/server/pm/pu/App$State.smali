.class final enum Lcom/android/server/pm/pu/App$State;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/pm/pu/App$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/pm/pu/App$State;

.field public static final enum CANCELLED:Lcom/android/server/pm/pu/App$State;

.field public static final enum CREATED:Lcom/android/server/pm/pu/App$State;

.field public static final enum OPTIMIZED:Lcom/android/server/pm/pu/App$State;

.field public static final enum OPTIMIZING:Lcom/android/server/pm/pu/App$State;

.field public static final enum REMOVED:Lcom/android/server/pm/pu/App$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/pm/pu/App$State;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/pu/App$State;->CREATED:Lcom/android/server/pm/pu/App$State;

    new-instance v1, Lcom/android/server/pm/pu/App$State;

    const-string/jumbo v2, "OPTIMIZING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/pm/pu/App$State;->OPTIMIZING:Lcom/android/server/pm/pu/App$State;

    new-instance v2, Lcom/android/server/pm/pu/App$State;

    const-string/jumbo v3, "OPTIMIZED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/pm/pu/App$State;->OPTIMIZED:Lcom/android/server/pm/pu/App$State;

    new-instance v3, Lcom/android/server/pm/pu/App$State;

    const-string v4, "CANCELLED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/pm/pu/App$State;->CANCELLED:Lcom/android/server/pm/pu/App$State;

    new-instance v4, Lcom/android/server/pm/pu/App$State;

    const-string/jumbo v5, "REMOVED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/pm/pu/App$State;->REMOVED:Lcom/android/server/pm/pu/App$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/pm/pu/App$State;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pu/App$State;->$VALUES:[Lcom/android/server/pm/pu/App$State;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pm/pu/App$State;
    .locals 1

    const-class v0, Lcom/android/server/pm/pu/App$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pu/App$State;

    return-object p0
.end method

.method public static values()[Lcom/android/server/pm/pu/App$State;
    .locals 1

    sget-object v0, Lcom/android/server/pm/pu/App$State;->$VALUES:[Lcom/android/server/pm/pu/App$State;

    invoke-virtual {v0}, [Lcom/android/server/pm/pu/App$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/pu/App$State;

    return-object v0
.end method
