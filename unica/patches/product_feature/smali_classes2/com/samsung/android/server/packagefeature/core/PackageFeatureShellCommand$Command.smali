.class final enum Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;


# instance fields
.field mCommand:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const-string v1, "-packagefeature"

    const-string/jumbo v2, "PACKAGE_FEATURE"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const-string v2, "ForceUpdate"

    const-string/jumbo v3, "PACKAGE_FEATURE_OPTION_FORCE_UPDATE"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const-string/jumbo v3, "PolicyReset"

    const-string/jumbo v4, "PACKAGE_FEATURE_OPTION_POLICY_RESET"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v4, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    new-instance v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const-string/jumbo v4, "ShowPackageName"

    const-string/jumbo v5, "PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME"

    const/4 v6, 0x3

    invoke-direct {v3, v6, v5, v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    new-instance v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const-string v5, "-setPolicyDisabled"

    const-string/jumbo v6, "SET_POLICY_DISABLED_COMMAND"

    const/4 v7, 0x4

    invoke-direct {v4, v7, v6, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->$VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
    .registers 2

    const-class v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->$VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    return-object v0
.end method
