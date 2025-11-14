.class final enum Lcom/android/server/wallpaper/WallpaperData$BindSource;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wallpaper/WallpaperData$BindSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum CONNECTION_TRY_TO_REBIND:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum CONNECT_LOCKED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum FALLBACK_DEFAULT_MISSING:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum INITIALIZE_FALLBACK:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum PACKAGE_UPDATE_FINISHED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum SET_LIVE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum SET_LIVE_TO_CLEAR:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum SWITCH_WALLPAPER_FAILURE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum UNKNOWN:Lcom/android/server/wallpaper/WallpaperData$BindSource;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->UNKNOWN:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string v2, "CONNECT_LOCKED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/wallpaper/WallpaperData$BindSource;->CONNECT_LOCKED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string v3, "CONNECTION_TRY_TO_REBIND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/wallpaper/WallpaperData$BindSource;->CONNECTION_TRY_TO_REBIND:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string v4, "FALLBACK_DEFAULT_MISSING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/wallpaper/WallpaperData$BindSource;->FALLBACK_DEFAULT_MISSING:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string v5, "INITIALIZE_FALLBACK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;->INITIALIZE_FALLBACK:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v6, "PACKAGE_UPDATE_FINISHED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/wallpaper/WallpaperData$BindSource;->PACKAGE_UPDATE_FINISHED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    new-instance v6, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v7, "RESTORE_SETTINGS_LIVE_FAILURE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v8, "RESTORE_SETTINGS_LIVE_SUCCESS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v9, "RESTORE_SETTINGS_STATIC"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v10, "SET_LIVE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_LIVE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    new-instance v10, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v11, "SET_LIVE_TO_CLEAR"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_LIVE_TO_CLEAR:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    new-instance v11, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v12, "SET_STATIC"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    new-instance v12, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v13, "SWITCH_WALLPAPER_FAILURE"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_FAILURE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    new-instance v13, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v14, "SWITCH_WALLPAPER_SWITCH_USER"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    const-string/jumbo v15, "SWITCH_WALLPAPER_UNLOCK_USER"

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v14, v15, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    move-object/from16 v0, v16

    filled-new-array/range {v0 .. v14}, [Lcom/android/server/wallpaper/WallpaperData$BindSource;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->$VALUES:[Lcom/android/server/wallpaper/WallpaperData$BindSource;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wallpaper/WallpaperData$BindSource;
    .locals 1

    const-class v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wallpaper/WallpaperData$BindSource;
    .locals 1

    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->$VALUES:[Lcom/android/server/wallpaper/WallpaperData$BindSource;

    invoke-virtual {v0}, [Lcom/android/server/wallpaper/WallpaperData$BindSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wallpaper/WallpaperData$BindSource;

    return-object v0
.end method
