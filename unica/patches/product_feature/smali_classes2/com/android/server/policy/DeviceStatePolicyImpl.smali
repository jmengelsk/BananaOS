.class public final Lcom/android/server/policy/DeviceStatePolicyImpl;
.super Lcom/android/server/devicestate/DeviceStatePolicy;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system/devicestate/"

    const-string/jumbo v2, "device_state_configuration.xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "etc/devicestate/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p1, v3}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;

    invoke-direct {v1, v0}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;-><init>(Ljava/io/File;)V

    invoke-static {p1, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/DeviceStateProviderImpl;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
