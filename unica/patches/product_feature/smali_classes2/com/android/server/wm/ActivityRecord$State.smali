.class final enum Lcom/android/server/wm/ActivityRecord$State;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/ActivityRecord$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum FINISHING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum PAUSED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum PAUSING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum RESUMED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum STARTED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum STOPPED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum STOPPING:Lcom/android/server/wm/ActivityRecord$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v2, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    new-instance v2, Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v3, "RESUMED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    new-instance v3, Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v4, "PAUSING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    new-instance v4, Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v5, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    new-instance v5, Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v6, "STOPPING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    new-instance v6, Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v7, "STOPPED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    new-instance v7, Lcom/android/server/wm/ActivityRecord$State;

    const-string v8, "FINISHING"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    new-instance v8, Lcom/android/server/wm/ActivityRecord$State;

    const-string v9, "DESTROYING"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    new-instance v9, Lcom/android/server/wm/ActivityRecord$State;

    const-string v10, "DESTROYED"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    new-instance v10, Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v11, "RESTARTING_PROCESS"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    filled-new-array/range {v0 .. v10}, [Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->$VALUES:[Lcom/android/server/wm/ActivityRecord$State;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$State;
    .locals 1

    const-class v0, Lcom/android/server/wm/ActivityRecord$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord$State;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/ActivityRecord$State;
    .locals 1

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->$VALUES:[Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0}, [Lcom/android/server/wm/ActivityRecord$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/ActivityRecord$State;

    return-object v0
.end method
