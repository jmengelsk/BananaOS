.class public final synthetic Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iput-object p2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda1;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda1;->f$1:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;

    sget v1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "    "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getAvailableAdvancedProtectionFeatures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$$ExternalSyntheticLambda0;-><init>(ILjava/io/PrintWriter;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
