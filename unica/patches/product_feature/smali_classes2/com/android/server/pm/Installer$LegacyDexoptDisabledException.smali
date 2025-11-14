.class public Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;
.super Ljava/lang/Exception;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Invalid call to legacy dexopt method while ART Service is in use."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
