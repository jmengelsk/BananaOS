.class public final enum Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum APP_CATEGORY_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum SAFEMODE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum SHARED_UID_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum SIGNATURE_PERMISSION_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;


# instance fields
.field public final mEnabled:Z

.field public final mName:Ljava/lang/String;

.field public final mRawResId:I

.field public final mUnformatted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_0

    const v1, 0x110000b

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    const v1, 0x110000a

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const-string v3, "FOLDABLE_PACKAGE_FEATURE"

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v4, "FoldablePackagePolicy"

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    const/4 v7, 0x0

    const-string/jumbo v4, "REFRESH_RATE_PACKAGE_FEATURE"

    const/4 v2, 0x1

    const-string/jumbo v5, "RefreshRatePolicy"

    const v3, 0x110000c

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/4 v4, 0x0

    const-string v5, "BROADCAST_RECEIVER_FEATURE"

    const/4 v3, 0x2

    const/4 v7, 0x1

    const-string v6, "BROADCAST_RECEIVER_ALLOW_LIST"

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/4 v5, 0x0

    const-string v6, "APP_CATEGORY_FEATURE"

    const/4 v4, 0x3

    const/4 v8, 0x1

    const-string/jumbo v7, "appcategory"

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->APP_CATEGORY_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v4, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/4 v6, 0x0

    const-string/jumbo v7, "SAFEMODE_FEATURE"

    const/4 v5, 0x4

    const/4 v9, 0x1

    const-string/jumbo v8, "safemodeallowlist"

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->SAFEMODE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v5, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/4 v7, 0x0

    const-string/jumbo v8, "SIGNATURE_PERMISSION_FEATURE"

    const/4 v6, 0x5

    const/4 v10, 0x1

    const-string/jumbo v9, "signaturepermissionallowlist"

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->SIGNATURE_PERMISSION_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/4 v8, 0x0

    const-string/jumbo v9, "SHARED_UID_FEATURE"

    const/4 v7, 0x6

    const/4 v11, 0x1

    const-string/jumbo v10, "shareduidallowlist"

    const/4 v12, 0x1

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v6, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->SHARED_UID_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/4 v13, 0x0

    const-string/jumbo v10, "TEST_PACKAGE_FEATURE_GROUP"

    const/4 v8, 0x7

    const/4 v12, 0x0

    const-string/jumbo v11, "TestPackageFeatureGroup"

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p5, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mEnabled:Z

    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mRawResId:I

    iput-boolean p6, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mUnformatted:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
    .locals 1

    const-class v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    return-object v0
.end method
