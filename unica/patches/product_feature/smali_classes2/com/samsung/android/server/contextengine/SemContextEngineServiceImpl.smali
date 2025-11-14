.class public Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;
.super Lcom/samsung/android/contextengine/ISemContextEngineManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextengine/ISemContextEngineManager$Stub;-><init>()V

    const-string p0, "ContextEngineManager"

    const-string/jumbo p1, "create"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final setDefault()V
    .locals 0

    return-void
.end method
