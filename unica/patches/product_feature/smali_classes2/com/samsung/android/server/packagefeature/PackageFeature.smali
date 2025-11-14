.class public final enum Lcom/samsung/android/server/packagefeature/PackageFeature;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/packagefeature/PackageFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DESKTOP_DENSITY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DISPLAY_DENSITY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FORCE_OPT_IN_ADAPTIVE_APP_BY_DEFAULT_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FORCE_OPT_OUT_ADAPTIVE_APP_BY_DEFAULT_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FORCE_OPT_OUT_EDGE_TO_EDGE_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FULL_SCREEN_HID:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum REMOTE_CONTROL_FEATURES:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum appcategory:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum safemodeallowlist:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum shareduidallowlist:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum signaturepermissionallowlist:Lcom/samsung/android/server/packagefeature/PackageFeature;


# instance fields
.field public final mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

.field public final mEnabled:Z

.field public final mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 46

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v5, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v6, Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;

    const-string v1, "-setForceDisplayCompatMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object v4, v5

    const-string/jumbo v5, "displayCompat"

    const-string v1, "DISPLAY_COMPAT"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object v5, v4

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setForceDisplayDensityIncompatMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    const-string/jumbo v6, "displayDensityCompat"

    const-string v2, "DISPLAY_DENSITY_COMPAT"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object v8, v1

    sput-object v8, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_DENSITY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setDesktopDensityCompat"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const-string/jumbo v6, "desktopDensityCompat"

    const-string v2, "DESKTOP_DENSITY_COMPAT"

    const/4 v3, 0x2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object v9, v1

    sput-object v9, Lcom/samsung/android/server/packagefeature/PackageFeature;->DESKTOP_DENSITY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_SUPPORTED:Z

    new-instance v7, Lcom/samsung/android/server/packagefeature/FoldMinAspectRatioDebugCommand;

    const-string v2, "-setFixedAspectRatio"

    const-string v3, "-ratio"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x3

    const-string/jumbo v6, "fixedAspectRatio"

    const-string/jumbo v2, "MIN_ASPECT_RATIO"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object v10, v1

    sput-object v10, Lcom/samsung/android/server/packagefeature/PackageFeature;->MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v4, 0x1

    const-string/jumbo v6, "fullScreen"

    const-string v2, "FULL_SCREEN"

    const/4 v3, 0x4

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object v11, v1

    sput-object v11, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_FULL_SCREEN_APPS_SUPPORT_MODE_HID:Z

    const/4 v3, 0x5

    const-string/jumbo v6, "fullScreenHID"

    const-string v2, "FULL_SCREEN_HID"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object v12, v1

    sput-object v12, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN_HID:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setIgnoreAppRotation"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x6

    const-string/jumbo v6, "ignoreAppRotation"

    const-string v2, "IGNORE_APP_ROTATION"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object v13, v1

    sput-object v13, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setIgnoreAppRotationDisabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x7

    const-string/jumbo v6, "ignoreAppRotationDisabled"

    const-string v2, "IGNORE_APP_ROTATION_DISABLED"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object v14, v8

    move-object v8, v1

    sput-object v8, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setTabletAppRotationCompat"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/16 v3, 0x8

    const-string/jumbo v6, "tabletAppRotationCompat"

    const-string/jumbo v2, "TABLET_APP_ROTATION_COMPAT"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object v15, v9

    move-object v9, v1

    sput-object v9, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setFlexModeApp"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string/jumbo v6, "flexModeApp"

    const-string v2, "FLEX_MODE_APP"

    const/16 v3, 0x9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v16, v10

    move-object v10, v1

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setFlexPanelDefault"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const-string/jumbo v6, "flexPanelDefault"

    const-string v2, "FLEX_PANEL_DEFAULT"

    const/16 v3, 0xa

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v17, v11

    move-object v11, v1

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v4, 0x0

    const-string/jumbo v6, "splitActivity"

    const-string/jumbo v2, "SPLIT_ACTIVITY"

    const/16 v3, 0xb

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v18, v12

    move-object v12, v1

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v4, 0x0

    const-string/jumbo v6, "dexLaunchBlock"

    const-string v2, "DEX_LAUNCH_B"

    const/16 v3, 0xc

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v19, v13

    move-object v13, v1

    sput-object v13, Lcom/samsung/android/server/packagefeature/PackageFeature;->DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setDexRestart"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string/jumbo v6, "dexLaunchRestart"

    const-string v2, "DEX_LAUNCH_RESTART"

    const/16 v3, 0xd

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v20, v14

    move-object v14, v1

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v7, Lcom/samsung/android/server/packagefeature/CoverLauncherWidgetDebugCommand;

    const-string v2, "-setCoverLauncherWidgetPackage"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string/jumbo v6, "coverLauncherWidget"

    const-string v2, "COVER_LAUNCHER_WIDGET"

    const/16 v3, 0xe

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v21, v15

    move-object v15, v1

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_LAUNCHER_WIDGET_POLICY_CHN:Z

    const/16 v3, 0xf

    const-string/jumbo v6, "coverLauncherWidgetChn"

    const-string v2, "COVER_LAUNCHER_WIDGET_CHN"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v22, v16

    move-object/from16 v16, v1

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v4, 0x0

    const-string v6, "CoverLauncherWidgetInner"

    const-string v2, "COVER_LAUNCHER_WIDGET_INNER"

    const/16 v3, 0x10

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v23, v17

    move-object/from16 v17, v1

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v4, 0x0

    const-string v6, "CoverLauncherWidgetInnerForOneUi80"

    const-string v2, "COVER_LAUNCHER_WIDGET_INNER_FOR_ONEUI80"

    const/16 v3, 0x11

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v24, v18

    move-object/from16 v18, v1

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LARGE_SCREEN:Z

    new-instance v7, Lcom/samsung/android/server/packagefeature/RemoteControlFeaturesDebugCommand;

    const-string v2, "-setRemoteControlFeatures"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/16 v3, 0x12

    const-string/jumbo v6, "remoteControlFeatures"

    const-string/jumbo v2, "REMOTE_CONTROL_FEATURES"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v25, v19

    move-object/from16 v19, v1

    sput-object v19, Lcom/samsung/android/server/packagefeature/PackageFeature;->REMOTE_CONTROL_FEATURES:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_FORCE_OPT_OUT_EDGE_TO_EDGE:Z

    const/16 v3, 0x13

    const-string/jumbo v6, "forceOptOutEdgeToEdge"

    const-string v2, "FORCE_OPT_OUT_EDGE_TO_EDGE_LIST"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v26, v20

    move-object/from16 v20, v1

    sput-object v20, Lcom/samsung/android/server/packagefeature/PackageFeature;->FORCE_OPT_OUT_EDGE_TO_EDGE_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_ADAPTIVE_APP_BY_DEFAULT:Z

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setForceOptOutAad"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/16 v3, 0x14

    const-string/jumbo v6, "forceOptOutAad"

    const-string v2, "FORCE_OPT_OUT_ADAPTIVE_APP_BY_DEFAULT_LIST"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v27, v21

    move-object/from16 v21, v1

    sput-object v21, Lcom/samsung/android/server/packagefeature/PackageFeature;->FORCE_OPT_OUT_ADAPTIVE_APP_BY_DEFAULT_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setForceOptInAad"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/16 v3, 0x15

    const-string/jumbo v6, "forceOptInAad"

    const-string v2, "FORCE_OPT_IN_ADAPTIVE_APP_BY_DEFAULT_LIST"

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v28, v22

    move-object/from16 v22, v1

    sput-object v22, Lcom/samsung/android/server/packagefeature/PackageFeature;->FORCE_OPT_IN_ADAPTIVE_APP_BY_DEFAULT_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v2, "-setAnyOrientationToUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v6, "ANY_ORIENTATION_TO_USER"

    const-string v2, "ANY_ORIENTATION_TO_USER"

    const/16 v3, 0x16

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    new-instance v29, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v32, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    sget-object v37, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v2, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v3, "-setLowRefreshRate"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/16 v31, 0x17

    const-string/jumbo v34, "lowRefreshRate"

    const-string v30, "LOW_REFRESH_RATE"

    move-object/from16 v35, v2

    move-object/from16 v33, v37

    invoke-direct/range {v29 .. v35}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v29, Lcom/samsung/android/server/packagefeature/PackageFeature;->LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v33, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v36, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    new-instance v2, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v3, "-setHighRefreshRate"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/16 v35, 0x18

    const-string/jumbo v38, "highRefreshRate"

    const-string v34, "HIGH_REFRESH_RATE"

    move-object/from16 v39, v2

    invoke-direct/range {v33 .. v39}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v7, v25

    move-object/from16 v25, v33

    sput-object v25, Lcom/samsung/android/server/packagefeature/PackageFeature;->HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v33, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v36, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    new-instance v2, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v3, "-setNaviAppLowRefreshRate"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const/16 v35, 0x19

    const-string/jumbo v38, "naviAppLowRefreshRate"

    const-string/jumbo v34, "NAVIGATION_LOW_REFRESH_RATE"

    move-object/from16 v39, v2

    invoke-direct/range {v33 .. v39}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v33, Lcom/samsung/android/server/packagefeature/PackageFeature;->NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v34, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v38, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/16 v37, 0x1

    const-string v39, "BroadcastReceiverAllowList"

    const-string v35, "BROADCAST_RECEIVER_ALLOW_LIST"

    const/16 v36, 0x1a

    const/16 v40, 0x0

    invoke-direct/range {v34 .. v40}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v34, Lcom/samsung/android/server/packagefeature/PackageFeature;->BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v35, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v39, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->APP_CATEGORY_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/16 v38, 0x1

    const-string/jumbo v40, "appcategory"

    const-string/jumbo v36, "appcategory"

    const/16 v37, 0x1b

    const/16 v41, 0x0

    invoke-direct/range {v35 .. v41}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v35, Lcom/samsung/android/server/packagefeature/PackageFeature;->appcategory:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v36, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v40, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->SAFEMODE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/16 v39, 0x1

    const-string/jumbo v41, "safemodeallowlist"

    const-string/jumbo v37, "safemodeallowlist"

    const/16 v38, 0x1c

    const/16 v42, 0x0

    invoke-direct/range {v36 .. v42}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v36, Lcom/samsung/android/server/packagefeature/PackageFeature;->safemodeallowlist:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v37, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v41, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->SIGNATURE_PERMISSION_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/16 v40, 0x1

    const-string/jumbo v42, "signaturepermissionallowlist"

    const-string/jumbo v38, "signaturepermissionallowlist"

    const/16 v39, 0x1d

    const/16 v43, 0x0

    invoke-direct/range {v37 .. v43}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v37, Lcom/samsung/android/server/packagefeature/PackageFeature;->signaturepermissionallowlist:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v38, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v42, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->SHARED_UID_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/16 v41, 0x1

    const-string/jumbo v43, "shareduidallowlist"

    const-string/jumbo v39, "shareduidallowlist"

    const/16 v40, 0x1e

    const/16 v44, 0x0

    invoke-direct/range {v38 .. v44}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v38, Lcom/samsung/android/server/packagefeature/PackageFeature;->shareduidallowlist:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v32, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-object v43, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/16 v42, 0x0

    const-string/jumbo v44, "testPackageFeature"

    const-string/jumbo v40, "TEST_PACKAGE_FEATURE"

    const/16 v41, 0x1f

    const/16 v45, 0x0

    move-object/from16 v39, v32

    invoke-direct/range {v39 .. v45}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    move-object/from16 v24, v29

    move-object/from16 v26, v33

    move-object/from16 v27, v34

    move-object/from16 v28, v35

    move-object/from16 v29, v36

    move-object/from16 v30, v37

    move-object/from16 v31, v38

    move-object/from16 v23, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v32}, [Lcom/samsung/android/server/packagefeature/PackageFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iput-object p5, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    if-eqz p3, :cond_c

    goto :goto_d

    :cond_c
    const/4 p6, 0x0

    :goto_d
    iput-object p6, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeature;
    .registers 2

    const-class v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/PackageFeature;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/packagefeature/PackageFeature;

    return-object v0
.end method


# virtual methods
.method public final registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .registers 5

    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    if-eqz v1, :cond_1b

    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    goto :goto_22

    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_19

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    return-void

    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_19

    throw p0
.end method
